select  
  qualifying_1.position, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.number <= qualifying_1.qualifyid
limit 41;
select  
  standings_1.raceid, 
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 34;
select  
  sum(
    constructor_standings_1.constructorid), 
  qualifying_1.number, 
  min(
    qualifying_1.position), 
  qualifying_1.raceid, 
  constructors_1.constructorref, 
  constructor_standings_1.date, 
  constructors_1.name, 
  qualifying_1.date, 
  max(
    constructor_standings_1.constructorid), 
  qualifying_1.qualifyid, 
  constructor_standings_1.raceid, 
  avg(
    qualifying_1.qualifyid), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructor_standings_1.raceid, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructor_standings_1.wins is not NULL
group by qualifying_1.number, qualifying_1.raceid, constructors_1.constructorref, constructor_standings_1.date, constructors_1.name, qualifying_1.date, qualifying_1.qualifyid, constructor_standings_1.raceid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructor_standings_1.raceid, constructors_1.constructorid, constructors_1.name
limit 19;
select  
  min(
    results_1.resultid), 
  constructor_results_1.constructorid
from 
  drivers as drivers_1
    inner join drivers as drivers_2
          inner join results as results_1
          on (drivers_2.driverid = results_1.resultid )
        inner join constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
        on (drivers_2.driverid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (drivers_1.driverid = results_1.resultid )
where results_1.laps > races_1.circuitid
group by constructor_results_1.constructorid
limit 33;
select  
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 36;
select  
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 18;
select  
  standings_1.driverid, 
  standings_1.driverid, 
  min(
    standings_1.date), 
  standings_1.date, 
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.driverid, standings_1.date, standings_1.position, standings_1.points
limit 36;
select  
  count(
    standings_1.driverid), 
  standings_1.points, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date < standings_1.date
group by standings_1.points, standings_1.position, standings_1.driverid
limit 25;
select  
  constructor_standings_1.raceid, 
  constructor_standings_2.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.constructorstandingsid >= constructor_standings_2.position
limit 29;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position <= constructor_standings_1.wins
group by constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorstandingsid
limit 7;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_2.points)
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.constructorstandingsid
limit 36;
select  
  constructor_standings_1.wins, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  constructor_standings_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  races_1.year, 
  races_1.circuitid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.date)
from 
  races as races_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.round is not NULL
group by constructor_standings_1.wins, qualifying_1.constructorid, qualifying_1.raceid, constructor_standings_1.constructorid, qualifying_1.position, qualifying_1.driverid, races_1.year, races_1.circuitid, constructor_standings_1.position, constructor_standings_1.raceid
limit 29;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_2.constructorresultsid, 
  constructor_results_2.constructorid
from 
  constructors as constructors_1
      inner join races as races_1
        inner join constructor_results as constructor_results_1
          inner join constructors as constructors_2
          on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructor_results as constructor_results_2
    on (constructors_2.constructorid = constructor_results_2.constructorresultsid )
where races_1.date >= constructor_results_1.date
limit 20;
select  
  qualifying_2.qualifyid, 
  qualifying_1.constructorid, 
  max(
    qualifying_2.date)
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.driverid is not NULL
group by qualifying_2.qualifyid, qualifying_1.constructorid
limit 14;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 34;
select  
  results_1.points
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.points is not NULL
limit 5;
select  
  standings_1.wins, 
  standings_1.driverid, 
  min(
    standings_1.date), 
  max(
    standings_1.points), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.points, 
  sum(
    standings_1.raceid), 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.wins, standings_1.driverid, standings_1.wins, standings_1.driverstandingsid, standings_1.points, standings_1.driverstandingsid, standings_1.date, standings_1.points, standings_1.raceid, standings_1.position, standings_1.raceid, standings_1.position, standings_1.wins, standings_1.wins, standings_1.raceid, standings_1.wins, standings_1.driverstandingsid, standings_1.driverstandingsid
limit 29;
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 6;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 40;
select  
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 21;
select  
  constructors_1.name, 
  races_1.round
from 
  drivers as drivers_1
          inner join constructors as constructors_1
          on (drivers_1.driverid = constructors_1.constructorid )
        inner join qualifying as qualifying_1
        on (drivers_1.driverid = qualifying_1.qualifyid )
      inner join races as races_1
        inner join results as results_1
        on (races_1.raceid = results_1.resultid )
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join races as races_2
      inner join circuits as circuits_1
      on (races_2.raceid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.date is not NULL
limit 41;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    constructors_1.nationality)
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 34;
select  
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 38;
select  
  results_1.date, 
  results_1.positionorder
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where results_1.grid is not NULL
limit 7;
select  
  drivers_1.driverref, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  races_1.date, 
  drivers_1.nationality, 
  avg(
    constructor_results_1.points), 
  drivers_1.dob, 
  standings_1.date, 
  races_1.circuitid, 
  drivers_1.surname, 
  standings_1.date, 
  constructor_results_1.constructorid, 
  max(
    drivers_1.nationality), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  races_1.name, 
  constructor_results_1.date, 
  standings_1.wins, 
  drivers_1.nationality, 
  standings_1.wins, 
  standings_1.driverid, 
  constructor_results_1.points, 
  races_1.time
from 
  constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.surname > drivers_1.code
group by drivers_1.driverref, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, races_1.date, drivers_1.nationality, drivers_1.dob, standings_1.date, races_1.circuitid, drivers_1.surname, standings_1.date, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.date, races_1.name, constructor_results_1.date, standings_1.wins, drivers_1.nationality, standings_1.wins, standings_1.driverid, constructor_results_1.points, races_1.time
limit 5;
select  
  constructor_results_1.points, 
  count(
    drivers_1.driverid), 
  constructor_results_3.constructorresultsid, 
  max(
    constructors_1.name), 
  constructor_results_1.points, 
  constructor_results_2.raceid, 
  results_1.resultid, 
  constructor_results_1.date
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      inner join constructor_results as constructor_results_2
        inner join constructor_results as constructor_results_3
        on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
      on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
    on (drivers_1.driverid = constructor_results_3.constructorresultsid )
where drivers_1.code is not NULL
group by constructor_results_1.points, constructor_results_3.constructorresultsid, constructor_results_1.points, constructor_results_2.raceid, results_1.resultid, constructor_results_1.date
limit 9;
select  
  qualifying_1.raceid, 
  standings_1.points, 
  standings_1.driverid, 
  min(
    qualifying_1.number), 
  standings_1.points, 
  standings_1.points, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  standings_1.raceid
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points >= standings_1.points
group by qualifying_1.raceid, standings_1.points, standings_1.driverid, standings_1.points, standings_1.points, qualifying_1.raceid, qualifying_1.date, qualifying_1.qualifyid, standings_1.raceid
limit 29;
select  
  standings_1.raceid, 
  count(*), 
  qualifying_1.date, 
  qualifying_2.qualifyid, 
  qualifying_2.qualifyid
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_2
    on (standings_1.driverstandingsid = qualifying_2.qualifyid )
where qualifying_1.raceid is not NULL
group by standings_1.raceid, qualifying_1.date, qualifying_2.qualifyid, qualifying_2.qualifyid
limit 9;
select  
  circuits_1.lat, 
  circuits_1.name, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  standings_1.position, 
  circuits_1.country, 
  min(
    standings_1.date), 
  standings_1.driverid, 
  min(
    circuits_1.circuitref), 
  avg(
    circuits_1.lng), 
  standings_1.points, 
  min(
    circuits_1.alt), 
  standings_1.date, 
  circuits_1.name, 
  circuits_1.country, 
  min(
    circuits_1.name), 
  circuits_1.location
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.country = circuits_1.location
group by circuits_1.lat, circuits_1.name, standings_1.driverid, standings_1.driverstandingsid, circuits_1.circuitid, circuits_1.lng, standings_1.position, circuits_1.country, standings_1.driverid, standings_1.points, standings_1.date, circuits_1.name, circuits_1.country, circuits_1.location
limit 2;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  circuits_1.circuitid, 
  sum(
    circuits_1.alt), 
  drivers_1.dob, 
  drivers_1.driverid, 
  circuits_1.country, 
  races_1.circuitid, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  drivers_1.driverid, 
  races_1.round
from 
  drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by drivers_1.driverref, drivers_1.surname, circuits_1.circuitid, drivers_1.dob, drivers_1.driverid, circuits_1.country, races_1.circuitid, circuits_1.lat, circuits_1.name, circuits_1.lng, circuits_1.circuitref, drivers_1.driverid, races_1.round
limit 15;
select  
  constructor_standings_1.wins, 
  avg(
    constructor_standings_1.constructorid), 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid = constructor_standings_1.constructorstandingsid
group by constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.position
limit 42;
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.driverid), 
  qualifying_1.number, 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.number, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.raceid
limit 40;
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.alt < circuits_1.lat
limit 38;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorid
limit 23;
select  
  races_1.round, 
  races_1.date, 
  races_1.name, 
  races_1.raceid, 
  races_1.date, 
  races_1.date, 
  count(*), 
  races_1.date
from 
  races as races_1
where races_1.name is not NULL
group by races_1.round, races_1.date, races_1.name, races_1.raceid, races_1.date, races_1.date, races_1.date
limit 28;
select  
  min(
    results_1.date), 
  results_1.rank, 
  results_1.position, 
  results_1.driverid, 
  results_1.resultid, 
  results_1.laps, 
  results_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.rank is not NULL
group by results_1.rank, results_1.position, results_1.driverid, results_1.resultid, results_1.laps, results_1.position, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.driverid
limit 3;
select  
  results_1.constructorid, 
  results_1.laps
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 10;
select distinct 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.date, 
  races_1.year, 
  races_1.raceid
from 
  races as races_1
where races_1.round is not NULL
limit 12;
select  
  races_1.raceid, 
  races_1.name, 
  races_1.circuitid, 
  races_1.name
from 
  races as races_1
where races_1.date < races_1.date
limit 18;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position < constructor_standings_1.raceid
limit 27;
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 30;
select  
  results_1.position, 
  results_1.constructorid
from 
  results as results_1
where results_1.grid is not NULL
limit 29;
select  
  max(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.raceid >= qualifying_1.constructorid
group by qualifying_1.raceid, qualifying_1.raceid
limit 36;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.position, 
  constructors_1.constructorid, 
  max(
    qualifying_1.qualifyid), 
  constructors_1.name, 
  constructors_1.constructorref, 
  qualifying_1.number, 
  avg(
    constructors_1.constructorid), 
  qualifying_1.constructorid, 
  constructors_1.name
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.driverid < qualifying_1.qualifyid
group by qualifying_1.position, qualifying_1.position, qualifying_1.position, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, qualifying_1.number, qualifying_1.constructorid, constructors_1.name
limit 38;
select  
  results_1.rank, 
  count(*), 
  results_1.fastestlap
from 
  results as results_1
where results_1.grid >= results_1.raceid
group by results_1.rank, results_1.fastestlap
limit 22;
select  
  circuits_1.alt, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.location >= circuits_1.circuitref
limit 12;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 8;
select  
  drivers_1.dob, 
  max(
    drivers_1.nationality), 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.dob, drivers_1.forename, drivers_1.driverref
limit 5;
select  
  races_1.raceid, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  races_1.year, 
  races_1.round, 
  races_1.time, 
  circuits_1.country, 
  races_1.date, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.location, 
  count(
    circuits_1.name), 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.lng is not NULL
group by races_1.raceid, circuits_1.circuitref, circuits_1.circuitref, races_1.year, races_1.round, races_1.time, circuits_1.country, races_1.date, circuits_1.circuitid, circuits_1.lat, circuits_1.country, circuits_1.location, circuits_1.circuitref
limit 39;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 32;
select  
  avg(
    drivers_1.driverid), 
  drivers_1.dob, 
  min(
    drivers_1.nationality)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.dob
limit 21;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.raceid
limit 19;
select  
  results_1.raceid, 
  results_1.statusid, 
  results_1.position, 
  standings_1.position, 
  standings_1.raceid, 
  count(
    results_1.constructorid), 
  standings_1.wins, 
  results_1.number, 
  standings_1.driverstandingsid, 
  results_1.milliseconds, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.points, 
  results_1.resultid, 
  standings_1.wins, 
  max(
    results_1.date), 
  count(
    standings_1.driverstandingsid), 
  standings_1.raceid
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where results_1.date = standings_1.date
group by results_1.raceid, results_1.statusid, results_1.position, standings_1.position, standings_1.raceid, standings_1.wins, results_1.number, standings_1.driverstandingsid, results_1.milliseconds, standings_1.driverstandingsid, standings_1.wins, standings_1.points, results_1.resultid, standings_1.wins, standings_1.raceid
limit 7;
select  
  results_1.constructorid
from 
  results as results_1
where results_1.grid is not NULL
limit 18;
select  
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  races_1.date, 
  constructor_standings_1.constructorstandingsid, 
  races_1.name, 
  races_1.raceid, 
  races_1.year, 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.points), 
  min(
    races_1.time), 
  races_1.year, 
  races_1.time
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.wins, races_1.date, constructor_standings_1.constructorstandingsid, races_1.name, races_1.raceid, races_1.year, constructor_standings_1.position, races_1.year, races_1.time
limit 3;
select  
  qualifying_1.constructorid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 35;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 37;
select  
  results_2.date
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
        inner join results as results_2
          inner join races as races_1
            inner join standings as standings_1
            on (races_1.raceid = standings_1.driverstandingsid )
          on (results_2.resultid = races_1.raceid )
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    on (results_1.resultid = results_2.resultid )
where races_1.year <= constructor_standings_1.raceid
limit 41;
select  
  results_1.resultid
from 
  results as results_1
where results_1.positionorder is not NULL
limit 18;
select  
  results_1.fastestlap, 
  results_1.number, 
  results_1.points, 
  min(
    results_1.statusid), 
  results_1.statusid, 
  results_1.date, 
  max(
    results_1.statusid), 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.points, 
  results_1.laps
from 
  results as results_1
where results_1.fastestlap = results_1.position
group by results_1.fastestlap, results_1.number, results_1.points, results_1.statusid, results_1.date, results_1.positionorder, results_1.fastestlap, results_1.points, results_1.laps
limit 13;
select  
  races_1.raceid, 
  races_1.time
from 
  races as races_1
where races_1.name is not NULL
limit 26;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 35;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  count(
    constructors_1.nationality), 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref
limit 3;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  count(*), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.position
limit 20;
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lat, 
  min(
    circuits_1.location)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.location, circuits_1.alt, circuits_1.lat
limit 8;
select  
  circuits_1.circuitid, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 22;
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 19;
select  
  races_1.time, 
  races_1.raceid
from 
  races as races_1
where races_1.date >= races_1.date
limit 35;
select  
  standings_1.position
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
limit 39;
select  
  races_1.circuitid, 
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
limit 6;
select  
  standings_1.date, 
  avg(
    results_1.laps)
from 
  standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join results as results_1
    on (standings_2.driverstandingsid = results_1.resultid )
where results_1.number >= results_1.milliseconds
group by standings_1.date
limit 12;
select  
  constructor_standings_1.position, 
  circuits_1.name, 
  min(
    circuits_1.circuitid), 
  max(
    circuits_2.location), 
  constructor_standings_1.raceid, 
  avg(
    standings_1.raceid), 
  standings_1.driverstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join circuits as circuits_2
    on (standings_1.driverstandingsid = circuits_2.circuitid )
where standings_1.points <= constructor_standings_1.points
group by constructor_standings_1.position, circuits_1.name, constructor_standings_1.raceid, standings_1.driverstandingsid, constructor_standings_1.date, constructor_standings_1.raceid
limit 10;
select  
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.location, 
  results_1.laps, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.lng, 
  results_1.number, 
  sum(
    results_1.raceid), 
  results_1.positionorder, 
  circuits_1.lng, 
  circuits_1.name, 
  results_1.milliseconds
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.points is not NULL
group by circuits_1.country, circuits_1.circuitid, circuits_1.name, circuits_1.location, results_1.laps, circuits_1.circuitid, circuits_1.lng, circuits_1.lng, results_1.number, results_1.positionorder, circuits_1.lng, circuits_1.name, results_1.milliseconds
limit 29;
select  
  races_1.name, 
  constructors_1.name, 
  results_1.laps, 
  races_1.raceid
from 
  results as results_1
    inner join constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    on (results_1.resultid = constructors_1.constructorid )
where results_1.position is not NULL
limit 25;
select  
  qualifying_1.raceid, 
  results_2.raceid, 
  constructors_1.name, 
  results_1.raceid, 
  results_1.date, 
  min(
    constructors_1.constructorref), 
  results_2.points, 
  qualifying_1.driverid, 
  results_2.raceid, 
  min(
    results_2.milliseconds), 
  results_1.milliseconds, 
  max(
    constructors_1.constructorref), 
  avg(
    results_1.grid), 
  results_2.driverid, 
  results_1.points, 
  avg(
    results_2.constructorid), 
  sum(
    results_2.points), 
  constructors_1.name, 
  results_1.rank, 
  constructors_1.constructorref, 
  results_2.driverid, 
  results_1.driverid
from 
  qualifying as qualifying_1
    inner join results as results_1
          inner join constructors as constructors_1
          on (results_1.resultid = constructors_1.constructorid )
        inner join standings as standings_1
        on (results_1.resultid = standings_1.driverstandingsid )
      inner join results as results_2
      on (constructors_1.constructorid = results_2.resultid )
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.points is not NULL
group by qualifying_1.raceid, results_2.raceid, constructors_1.name, results_1.raceid, results_1.date, results_2.points, qualifying_1.driverid, results_2.raceid, results_1.milliseconds, results_2.driverid, results_1.points, constructors_1.name, results_1.rank, constructors_1.constructorref, results_2.driverid, results_1.driverid
limit 10;
select  
  results_1.driverid, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.name, 
  max(
    circuits_1.name)
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.rank is not NULL
group by results_1.driverid, circuits_1.alt, circuits_1.lat, circuits_1.name
limit 13;
select  
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 16;
select  
  circuits_1.circuitid, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 32;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 31;
select  
  count(*), 
  count(*), 
  races_1.circuitid, 
  races_1.year, 
  races_1.time, 
  max(
    races_1.name)
from 
  races as races_1
where races_1.year < races_1.raceid
group by races_1.circuitid, races_1.year, races_1.time
limit 14;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorid
limit 34;
select  
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref <= circuits_1.location
limit 2;
select  
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  min(
    constructor_results_1.date), 
  min(
    constructor_results_1.constructorid), 
  min(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid
limit 28;
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 23;
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 31;
select  
  constructor_results_1.raceid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  constructor_results_1.constructorresultsid, 
  standings_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  standings_1.wins
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.points <= standings_1.points
limit 11;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.constructorid), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.points, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 21;
select  
  standings_1.raceid, 
  constructor_standings_1.points, 
  standings_1.points, 
  min(
    standings_1.points), 
  constructor_standings_1.position, 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.driverid <= constructor_standings_1.constructorid
group by standings_1.raceid, constructor_standings_1.points, standings_1.points, constructor_standings_1.position, standings_1.driverstandingsid
limit 12;
select  
  constructors_1.constructorref, 
  min(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.points
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.driverid = standings_1.wins
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.nationality, standings_1.raceid, standings_1.driverstandingsid, standings_1.points
limit 28;
select  
  constructors_1.nationality
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.date > qualifying_1.date
limit 37;
select  
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 3;
select  
  constructors_1.constructorid, 
  results_1.rank
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 15;
select  
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.name
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.lng is not NULL
limit 28;
select  
  races_1.circuitid, 
  races_1.circuitid
from 
  races as races_1
    inner join results as results_1
          inner join constructors as constructors_1
            inner join races as races_2
            on (constructors_1.constructorid = races_2.raceid )
          on (results_1.resultid = constructors_1.constructorid )
        inner join results as results_2
        on (constructors_1.constructorid = results_2.resultid )
      inner join circuits as circuits_1
      on (results_2.resultid = circuits_1.circuitid )
    on (races_1.raceid = results_1.resultid )
where circuits_1.circuitref is not NULL
limit 26;
select  
  results_1.position, 
  results_1.rank, 
  results_1.points, 
  drivers_1.driverref, 
  drivers_1.code
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where drivers_1.code is not NULL
limit 12;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 2;
select  
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 27;
select  
  constructors_1.nationality, 
  standings_1.date
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 32;
select  
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  count(*), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.qualifyid, qualifying_1.date, qualifying_1.number, qualifying_1.driverid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.date, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.date, qualifying_1.driverid, qualifying_1.driverid
limit 32;
select  
  constructor_standings_1.points, 
  qualifying_1.raceid, 
  qualifying_1.position
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
limit 2;
select  
  max(
    constructor_standings_1.date), 
  avg(
    constructor_standings_1.wins), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.raceid
limit 8;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 38;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 1;
select  
  results_1.position, 
  results_1.points, 
  results_1.raceid, 
  results_1.positionorder, 
  max(
    results_1.number), 
  results_1.driverid, 
  results_1.points
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.position, results_1.points, results_1.raceid, results_1.positionorder, results_1.driverid, results_1.points
limit 8;
select  
  qualifying_1.date, 
  results_1.laps
from 
  results as results_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where qualifying_1.position is not NULL
limit 30;
select  
  races_1.date, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.year is not NULL
limit 36;
select  
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  sum(
    qualifying_1.constructorid)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.position, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.number
limit 31;
select  
  results_1.rank, 
  races_1.round, 
  races_1.time, 
  max(
    results_1.points), 
  results_1.driverid, 
  results_1.resultid, 
  results_1.fastestlap
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.resultid is not NULL
group by results_1.rank, races_1.round, races_1.time, results_1.driverid, results_1.resultid, results_1.fastestlap
limit 41;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.wins), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid
limit 24;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
limit 22;
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.date, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.raceid
limit 2;
select  
  max(
    standings_1.driverstandingsid), 
  standings_1.driverid, 
  circuits_1.location, 
  count(*), 
  circuits_1.country
from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date <= standings_1.date
group by standings_1.driverid, circuits_1.location, circuits_1.country
limit 41;
select  
  standings_1.wins, 
  standings_1.date, 
  max(
    standings_1.position), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  sum(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.position
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.wins, standings_1.date, standings_1.driverstandingsid, standings_1.wins, standings_1.driverid, standings_1.raceid, standings_1.wins, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.points, standings_1.driverid, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position
limit 1;
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join constructor_standings as constructor_standings_3
        inner join drivers as drivers_1
        on (constructor_standings_3.constructorstandingsid = drivers_1.driverid )
      on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_1.constructorstandingsid < constructor_standings_2.constructorstandingsid
limit 14;
select  
  max(
    standings_1.date), 
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.wins
limit 26;
select  
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.raceid, constructor_results_1.points
limit 17;
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 27;
select  
  results_1.rank, 
  results_1.milliseconds, 
  results_1.driverid, 
  results_1.milliseconds, 
  results_1.rank, 
  results_1.position, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.position
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 32;
select  
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.surname <= drivers_1.nationality
limit 31;
select  
  constructor_results_2.points, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_2
    on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
where constructor_results_1.date is not NULL
limit 41;
select  
  min(
    circuits_1.lat), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt
limit 2;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 29;
select  
  drivers_1.surname, 
  drivers_1.driverref, 
  count(
    drivers_1.driverref), 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.surname, drivers_1.driverref, drivers_1.code, drivers_1.surname, drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.driverref, drivers_1.nationality
limit 42;
select  
  constructors_1.constructorid, 
  races_1.date, 
  races_1.raceid, 
  constructors_1.nationality, 
  constructors_2.name
from 
  races as races_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
        inner join qualifying as qualifying_1
        on (constructors_2.constructorid = qualifying_1.qualifyid )
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.name = races_1.time
limit 40;
select  
  races_1.name, 
  races_1.time
from 
  races as races_1
where races_1.year is not NULL
limit 38;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    constructors_1.nationality), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  min(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  max(
    constructors_1.nationality), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  min(
    constructors_1.name), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.name
limit 29;
select  
  drivers_1.forename, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 25;
select  
  races_1.circuitid, 
  max(
    races_1.date), 
  avg(
    races_1.circuitid), 
  races_1.year
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.year
limit 15;
select  
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  races_1.round, 
  sum(
    races_1.year)
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.date is not NULL
group by drivers_1.dob, drivers_1.nationality, drivers_1.driverid, races_1.round
limit 41;
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 41;
select  
  circuits_1.country, 
  count(
    circuits_1.alt), 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng = circuits_1.alt
group by circuits_1.country, circuits_1.country, circuits_1.alt, circuits_1.name, circuits_1.location
limit 15;
select  
  races_1.round
from 
  races as races_1
where races_1.raceid >= races_1.circuitid
limit 26;
select  
  circuits_1.lat, 
  max(
    qualifying_1.date), 
  circuits_1.country, 
  max(
    circuits_1.name), 
  min(
    qualifying_1.number), 
  qualifying_1.constructorid
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.circuitref is not NULL
group by circuits_1.lat, circuits_1.country, qualifying_1.constructorid
limit 41;
select  
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.alt, 
  min(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.name, circuits_1.alt, circuits_1.location, circuits_1.name, circuits_1.lat, circuits_1.alt
limit 40;
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  max(
    qualifying_1.constructorid), 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.number), 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.qualifyid
limit 36;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 1;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.wins), 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.constructorid), 
  min(
    constructor_standings_1.date), 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.wins), 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.raceid), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.points
limit 17;
select  
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 32;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.points is not NULL
limit 30;
select  
  standings_1.driverstandingsid, 
  sum(
    standings_1.driverid)
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverstandingsid
limit 4;
select  
  races_1.year, 
  races_1.raceid, 
  min(
    races_1.name), 
  count(
    races_1.year), 
  races_1.name, 
  races_1.name
from 
  races as races_1
where races_1.time is not NULL
group by races_1.year, races_1.raceid, races_1.name, races_1.name
limit 20;
select  
  constructor_standings_1.points, 
  drivers_1.forename
from 
  drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
    on (drivers_2.driverid = races_1.raceid )
where drivers_2.driverref is not NULL
limit 3;
select  
  circuits_1.circuitid, 
  races_1.year, 
  races_1.name, 
  min(
    races_1.date)
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.lng = circuits_1.lat
group by circuits_1.circuitid, races_1.year, races_1.name
limit 18;
select  
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.circuitid, 
  min(
    qualifying_1.constructorid)
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.name >= circuits_1.country
group by circuits_1.lat, circuits_1.name, circuits_1.circuitid
limit 28;
select  
  standings_1.date, 
  standings_1.position, 
  standings_1.points, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  standings_1.raceid, 
  count(*), 
  standings_1.date, 
  standings_1.points, 
  qualifying_1.driverid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.raceid is not NULL
group by standings_1.date, standings_1.position, standings_1.points, qualifying_1.driverid, qualifying_1.driverid, standings_1.raceid, standings_1.date, standings_1.points, qualifying_1.driverid, standings_1.date, standings_1.driverstandingsid
limit 14;
select  
  qualifying_1.qualifyid, 
  drivers_1.dob, 
  constructors_1.name, 
  drivers_1.surname, 
  drivers_1.dob, 
  constructors_1.nationality, 
  drivers_1.nationality, 
  constructors_1.name, 
  drivers_1.dob, 
  drivers_1.nationality, 
  constructors_1.nationality, 
  qualifying_1.raceid
from 
  constructors as constructors_1
    inner join drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where drivers_1.code < constructors_1.nationality
limit 20;
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 10;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 31;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 39;
select  
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.dob, 
  races_1.circuitid, 
  drivers_1.driverid
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.circuitid is not NULL
group by drivers_1.nationality, drivers_1.dob, races_1.circuitid, drivers_1.driverid
limit 35;
select  
  count(*), 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.date, 
  sum(
    qualifying_1.raceid), 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.date, 
  count(*), 
  qualifying_1.position, 
  qualifying_1.date, 
  min(
    qualifying_1.driverid), 
  qualifying_1.number, 
  count(*), 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.number, qualifying_1.date, qualifying_1.date, qualifying_1.position, qualifying_1.date, qualifying_1.constructorid, qualifying_1.date, qualifying_1.date, qualifying_1.position, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.date, qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid
limit 18;
select  
  count(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  count(*), 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.position
limit 41;
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.dob, 
  min(
    drivers_1.nationality), 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
group by drivers_1.dob, drivers_1.forename, drivers_1.dob, drivers_1.forename, drivers_1.code, drivers_1.nationality
limit 14;
select  
  constructor_results_1.date, 
  constructor_results_2.raceid, 
  constructor_results_2.constructorid, 
  constructor_results_2.points
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.points is not NULL
limit 14;
select  
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  count(
    constructor_standings_1.constructorid), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.constructorid
limit 39;
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 15;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  circuits_1.alt, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.points), 
  drivers_1.dob, 
  max(
    circuits_1.country)
from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where circuits_1.circuitref is not NULL
group by drivers_1.driverref, drivers_1.surname, circuits_1.alt, constructor_results_1.raceid, drivers_1.dob
limit 7;
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
limit 31;
select  
  races_1.year, 
  count(*), 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.raceid
from 
  races as races_1
where races_1.raceid < races_1.round
group by races_1.year, races_1.circuitid, races_1.circuitid, races_1.raceid
limit 34;
select  
  min(
    qualifying_2.constructorid), 
  standings_1.wins, 
  sum(
    standings_1.points), 
  qualifying_2.constructorid, 
  qualifying_2.qualifyid, 
  qualifying_1.raceid, 
  standings_1.wins, 
  qualifying_1.position, 
  qualifying_2.number, 
  qualifying_1.number, 
  standings_1.driverid, 
  qualifying_1.constructorid, 
  standings_1.driverid, 
  qualifying_2.raceid, 
  standings_1.driverstandingsid, 
  min(
    standings_1.points), 
  avg(
    standings_1.points), 
  qualifying_2.number, 
  standings_1.points
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.driverid is not NULL
group by standings_1.wins, qualifying_2.constructorid, qualifying_2.qualifyid, qualifying_1.raceid, standings_1.wins, qualifying_1.position, qualifying_2.number, qualifying_1.number, standings_1.driverid, qualifying_1.constructorid, standings_1.driverid, qualifying_2.raceid, standings_1.driverstandingsid, qualifying_2.number, standings_1.points
limit 28;
select  
  min(
    constructors_1.name), 
  count(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  max(
    constructors_1.constructorref), 
  min(
    constructors_1.name), 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.constructorid
limit 5;
select  
  constructor_standings_1.date, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  qualifying_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid > qualifying_1.raceid
group by constructor_standings_1.date, constructor_standings_1.date, qualifying_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.wins
limit 34;
select  
  races_1.round
from 
  races as races_1
where races_1.date is not NULL
limit 32;
select  
  circuits_1.circuitref, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 26;
select  
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lng > circuits_1.lat
limit 32;
select  
  races_1.date
from 
  races as races_1
where races_1.raceid is not NULL
limit 16;
select  
  max(
    results_1.date), 
  results_1.position, 
  results_1.raceid, 
  results_1.grid, 
  circuits_1.country, 
  min(
    results_1.date), 
  circuits_1.name
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.grid < results_1.laps
group by results_1.position, results_1.raceid, results_1.grid, circuits_1.country, circuits_1.name
limit 26;
select  
  qualifying_2.number, 
  races_1.year, 
  races_1.name, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  races_1.time, 
  qualifying_1.raceid, 
  avg(
    qualifying_1.number), 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
      inner join races as races_1
      on (qualifying_2.qualifyid = races_1.raceid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.raceid is not NULL
group by qualifying_2.number, races_1.year, races_1.name, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.raceid, races_1.time, qualifying_1.raceid, qualifying_1.number
limit 10;
select distinct 
  standings_1.position, 
  sum(
    standings_1.points), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.position, 
  max(
    standings_1.date), 
  max(
    standings_1.date), 
  count(
    standings_1.date), 
  avg(
    standings_1.driverid)
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.position, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.date, standings_1.driverid, standings_1.position
limit 38;
select  
  results_1.position, 
  min(
    results_1.date), 
  results_1.raceid
from 
  results as results_1
where results_1.raceid = results_1.resultid
group by results_1.position, results_1.raceid
limit 31;
select  
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.position is not NULL
limit 21;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 9;
select  
  drivers_1.nationality, 
  count(
    drivers_1.nationality)
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    on (results_1.resultid = drivers_1.driverid )
where results_1.milliseconds is not NULL
group by drivers_1.nationality
limit 5;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 41;
select  
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.code, 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.forename, drivers_1.code, drivers_1.dob, drivers_1.nationality, drivers_1.code
limit 7;
select  
  drivers_1.surname
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.location is not NULL
limit 17;
select  
  avg(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.code, drivers_1.code
limit 8;
select  
  sum(
    standings_1.points), 
  standings_1.driverid, 
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.points <= standings_1.points
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.driverid, standings_1.driverid, standings_1.raceid, standings_1.driverstandingsid, standings_1.position, standings_1.driverid, standings_1.wins, standings_1.driverstandingsid
limit 29;
select  
  constructors_1.name
from 
  standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 39;
select  
  circuits_1.lng, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.driverid is not NULL
limit 11;
select  
  max(
    results_1.milliseconds), 
  results_1.rank, 
  results_1.resultid, 
  max(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  sum(
    results_1.number)
from 
  constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join results as results_2
    on (standings_1.driverstandingsid = results_2.resultid )
where results_1.grid is not NULL
group by results_1.rank, results_1.resultid, constructors_1.nationality
limit 38;
select  
  standings_1.driverstandingsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  standings_1.points, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points), 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  constructor_results_1.raceid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by standings_1.driverstandingsid, constructor_results_1.raceid, constructor_results_1.points, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.points, constructor_results_1.raceid, constructor_results_1.constructorid, standings_1.points, constructor_results_1.constructorid, standings_1.driverid, standings_1.driverid, standings_1.driverstandingsid, constructor_results_1.raceid
limit 26;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref > constructors_1.nationality
limit 2;
select  
  max(
    races_1.time), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  races_1.circuitid
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.circuitid is not NULL
group by drivers_1.driverref, drivers_1.nationality, races_1.circuitid
limit 10;
select  
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.qualifyid), 
  qualifying_1.position, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.number, 
  count(*), 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  count(
    qualifying_1.constructorid), 
  qualifying_1.position, 
  avg(
    qualifying_1.number), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  min(
    qualifying_1.position), 
  qualifying_1.constructorid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid, qualifying_1.driverid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.number, qualifying_1.number, qualifying_1.number, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.date
limit 33;
select  
  max(
    results_1.points), 
  max(
    results_1.rank), 
  results_1.position
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.position
limit 31;
select distinct 
  circuits_1.circuitref, 
  min(
    races_1.name), 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverid, 
  races_1.time
from 
  circuits as circuits_1
    inner join races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = races_1.raceid )
where standings_1.points is not NULL
group by circuits_1.circuitref, standings_1.wins, standings_1.raceid, standings_1.driverid, races_1.time
limit 8;
select  
  max(
    results_1.grid), 
  results_1.rank, 
  results_1.position, 
  races_2.circuitid, 
  max(
    races_1.time), 
  races_2.round, 
  max(
    results_1.number), 
  results_1.rank, 
  races_2.raceid, 
  results_1.number, 
  races_2.round, 
  results_1.raceid, 
  races_2.time, 
  results_1.positionorder, 
  results_1.points, 
  results_1.number, 
  races_1.round, 
  races_1.time, 
  races_2.time, 
  races_2.year
from 
  races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join results as results_1
    on (races_2.raceid = results_1.resultid )
where races_2.raceid <= races_1.year
group by results_1.rank, results_1.position, races_2.circuitid, races_2.round, results_1.rank, races_2.raceid, results_1.number, races_2.round, results_1.raceid, races_2.time, results_1.positionorder, results_1.points, results_1.number, races_1.round, races_1.time, races_2.time, races_2.year
limit 39;
select  
  avg(
    constructor_standings_1.points), 
  drivers_1.code, 
  count(*)
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_1.wins is not NULL
group by drivers_1.code
limit 21;
select  
  standings_1.driverstandingsid, 
  count(
    standings_1.wins), 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverid, 
  min(
    standings_1.driverid), 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.points, 
  min(
    standings_1.driverid), 
  min(
    standings_1.date), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date > standings_1.date
group by standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.date, standings_1.wins, standings_1.driverid, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.driverid
limit 21;
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.name, 
  min(
    circuits_1.circuitid), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitref > circuits_1.country
group by circuits_1.name, circuits_1.location
limit 18;
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  count(
    qualifying_1.qualifyid), 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.raceid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number
limit 10;
select  
  races_1.name, 
  max(
    races_1.name), 
  races_1.time, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.date, 
  races_1.year, 
  max(
    races_1.date), 
  races_1.round, 
  races_1.round, 
  races_1.time
from 
  races as races_1
where races_1.name is not NULL
group by races_1.name, races_1.time, races_1.name, races_1.date, races_1.year, races_1.round, races_1.round, races_1.time
limit 5;
select  
  count(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position
limit 20;
select  
  results_1.milliseconds
from 
  results as results_1
where results_1.constructorid = results_1.laps
limit 10;
select  
  drivers_1.code, 
  drivers_2.driverid, 
  drivers_2.dob, 
  drivers_2.dob, 
  drivers_1.surname, 
  drivers_2.nationality
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.forename is not NULL
limit 40;
select  
  count(
    races_1.year), 
  races_1.name, 
  races_1.name, 
  races_1.round, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.name, races_1.name, races_1.round
limit 37;
select  
  qualifying_1.date, 
  drivers_1.nationality
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where qualifying_1.date is not NULL
limit 27;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 1;
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorid
limit 12;
select  
  min(
    drivers_1.dob), 
  constructor_results_1.date, 
  results_1.raceid, 
  results_1.fastestlap, 
  results_1.number
from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid <= results_1.driverid
group by constructor_results_1.date, results_1.raceid, results_1.fastestlap, results_1.number
limit 32;
select  
  races_1.round, 
  races_1.raceid, 
  races_1.round, 
  races_1.round
from 
  races as races_1
where races_1.round is not NULL
limit 9;
select  
  races_2.raceid, 
  races_2.name, 
  count(
    races_1.circuitid), 
  races_2.circuitid
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.time is not NULL
group by races_2.raceid, races_2.name, races_2.circuitid
limit 33;
select  
  circuits_1.country, 
  circuits_1.circuitid, 
  count(*), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.country, 
  max(
    circuits_1.country), 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
group by circuits_1.country, circuits_1.circuitid, circuits_1.lng, circuits_1.lng, circuits_1.lng, circuits_1.country, circuits_1.lng
limit 19;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.date is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid
limit 7;
select  
  sum(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.code), 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverid, 
  min(
    drivers_1.surname), 
  drivers_1.driverid, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob = drivers_1.dob
group by drivers_1.nationality, drivers_1.forename, drivers_1.forename, drivers_1.dob, drivers_1.code, drivers_1.driverref, drivers_1.surname, drivers_1.driverid, drivers_1.driverid, drivers_1.driverref
limit 10;
select  
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename < drivers_1.driverref
limit 31;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
limit 11;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 13;
select  
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.location, 
  avg(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
group by circuits_1.circuitid, circuits_1.name, circuits_1.lat, circuits_1.name, circuits_1.name, circuits_1.name, circuits_1.country, circuits_1.country, circuits_1.location
limit 25;
select  
  constructor_results_1.points, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.date
limit 22;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 26;
select  
  count(*)
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.date is not NULL
limit 17;
select  
  results_1.rank, 
  qualifying_1.driverid, 
  sum(
    results_1.statusid), 
  results_1.position, 
  qualifying_1.number
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.rank is not NULL
group by results_1.rank, qualifying_1.driverid, results_1.position, qualifying_1.number
limit 12;
select  
  results_1.laps, 
  results_1.raceid, 
  results_1.position, 
  results_1.constructorid, 
  results_1.statusid, 
  results_1.rank, 
  results_1.positionorder
from 
  results as results_1
where results_1.position is not NULL
limit 21;
select  
  results_1.laps
from 
  results as results_1
where results_1.driverid is not NULL
limit 17;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    constructor_results_1.constructorid), 
  constructor_results_1.points, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.points
limit 22;
select  
  sum(
    constructor_standings_1.position), 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.raceid
limit 14;
select  
  drivers_1.forename
from 
  races as races_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where standings_1.points is not NULL
limit 37;
select  
  drivers_2.driverref, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  drivers_1.surname, 
  drivers_1.driverid, 
  max(
    drivers_2.dob), 
  count(*), 
  min(
    circuits_1.location), 
  drivers_2.driverid, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.lat, 
  drivers_1.driverid, 
  drivers_2.forename
from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where circuits_1.location is not NULL
group by drivers_2.driverref, circuits_1.lng, circuits_1.circuitid, drivers_1.surname, drivers_1.driverid, drivers_2.driverid, circuits_1.lat, circuits_1.name, circuits_1.lat, drivers_1.driverid, drivers_2.forename
limit 32;
select  
  races_1.year, 
  max(
    races_2.date)
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.raceid is not NULL
group by races_1.year
limit 18;
select  
  constructors_1.constructorid, 
  min(
    constructors_1.name), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid), 
  min(
    constructors_1.nationality), 
  count(*), 
  constructors_1.constructorid, 
  max(
    constructors_1.name), 
  min(
    constructors_1.constructorref)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid
limit 30;
select  
  races_1.date, 
  min(
    races_1.time), 
  max(
    races_1.name), 
  races_1.circuitid, 
  races_1.date, 
  races_1.date, 
  races_1.name, 
  races_1.round, 
  max(
    races_1.date), 
  max(
    races_1.date), 
  races_1.date, 
  races_1.time, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
group by races_1.date, races_1.circuitid, races_1.date, races_1.date, races_1.name, races_1.round, races_1.date, races_1.time, races_1.raceid, races_1.year
limit 10;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
      inner join races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join races as races_2
      inner join constructors as constructors_1
      on (races_2.raceid = constructors_1.constructorid )
    on (races_1.raceid = races_2.raceid )
where qualifying_1.date is not NULL
limit 31;
select  
  qualifying_1.raceid, 
  results_1.driverid, 
  qualifying_1.driverid, 
  results_1.driverid, 
  count(*)
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_1.date <= results_1.date
group by qualifying_1.raceid, results_1.driverid, qualifying_1.driverid, results_1.driverid
limit 14;
select  
  races_1.circuitid, 
  races_1.raceid
from 
  races as races_1
where races_1.round is not NULL
limit 2;
select  
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 35;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
limit 30;
select  
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.position <= standings_1.driverstandingsid
limit 19;
select  
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref > constructors_1.nationality
group by constructors_1.constructorref, constructors_1.constructorref
limit 29;
select  
  races_1.round, 
  max(
    races_1.name), 
  races_1.name
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.date is not NULL
group by races_1.round, races_1.name
limit 15;
select  
  standings_2.wins, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  standings_2.driverid
from 
  standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join qualifying as qualifying_1
      on (standings_2.driverstandingsid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points < standings_2.points
limit 42;
select  
  drivers_1.nationality, 
  drivers_1.driverid, 
  max(
    drivers_1.nationality), 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.nationality, 
  max(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.nationality, drivers_1.driverid, drivers_1.forename, drivers_1.forename, drivers_1.nationality, drivers_1.surname, drivers_1.driverref
limit 3;
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.name is not NULL
limit 5;
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 37;
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 30;
select  
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  count(
    qualifying_1.constructorid)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.position, qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.constructorid
limit 6;
select  
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 12;
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_2.alt, 
  circuits_2.circuitref, 
  circuits_3.alt, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_3.lng, 
  sum(
    circuits_3.circuitid), 
  circuits_2.circuitref, 
  circuits_3.name, 
  circuits_1.circuitref
from 
  circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join circuits as circuits_3
    on (circuits_1.circuitid = circuits_3.circuitid )
where circuits_3.circuitid < circuits_2.circuitid
group by circuits_1.location, circuits_1.country, circuits_1.circuitid, circuits_2.alt, circuits_2.circuitref, circuits_3.alt, circuits_1.country, circuits_1.circuitid, circuits_1.alt, circuits_1.lng, circuits_3.lng, circuits_2.circuitref, circuits_3.name, circuits_1.circuitref
limit 15;
select  
  constructors_1.name, 
  standings_1.date, 
  constructors_1.constructorid
from 
  standings as standings_1
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where races_1.circuitid is not NULL
limit 2;
select  
  standings_1.driverid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.position, 
  min(
    standings_1.date), 
  standings_1.points, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points > standings_1.points
group by standings_1.driverid, standings_1.position, standings_1.points, standings_1.driverid, standings_1.position, standings_1.position, standings_1.points, standings_1.driverid
limit 7;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
limit 24;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  results_1.fastestlap, 
  results_1.number, 
  constructor_results_1.constructorresultsid, 
  results_1.resultid, 
  count(*)
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.constructorid is not NULL
group by constructor_results_1.points, constructor_results_1.constructorid, results_1.fastestlap, results_1.number, constructor_results_1.constructorresultsid, results_1.resultid
limit 42;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.wins), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 1;
select  
  standings_1.driverid, 
  standings_1.driverid, 
  avg(
    standings_1.wins), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid, standings_1.driverid, standings_1.driverid
limit 9;
select  
  results_1.positionorder, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid
from 
  results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (constructors_1.constructorid = constructor_standings_2.constructorstandingsid )
where constructors_1.constructorref is not NULL
limit 33;
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 13;
select  
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 2;
select  
  qualifying_2.number, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      inner join standings as standings_1
        inner join qualifying as qualifying_2
        on (standings_1.driverstandingsid = qualifying_2.qualifyid )
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.round is not NULL
limit 4;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(
    constructors_1.constructorid), 
  max(
    constructors_1.nationality), 
  max(
    constructors_1.name), 
  max(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  min(
    constructors_1.name), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref
limit 36;
select  
  count(
    constructor_results_1.points), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.points
limit 30;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  qualifying_1.driverid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid
from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    on (qualifying_2.qualifyid = results_1.resultid )
where qualifying_2.date is not NULL
limit 24;
select  
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.raceid is not NULL
group by qualifying_1.number, qualifying_1.number, circuits_1.circuitref, circuits_1.location
limit 22;
select  
  count(
    qualifying_1.number), 
  min(
    races_1.raceid), 
  races_1.circuitid, 
  races_1.time, 
  count(*), 
  races_1.year, 
  qualifying_1.raceid, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.date, 
  qualifying_1.qualifyid
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.time is not NULL
group by races_1.circuitid, races_1.time, races_1.year, qualifying_1.raceid, races_1.circuitid, races_1.circuitid, races_1.date, qualifying_1.qualifyid
limit 7;
select  
  results_1.statusid, 
  results_1.rank, 
  results_1.position, 
  results_1.statusid, 
  results_1.number, 
  results_1.constructorid, 
  results_1.driverid, 
  min(
    results_1.statusid), 
  results_1.grid, 
  results_1.points, 
  results_1.positionorder, 
  results_1.driverid
from 
  results as results_1
where results_1.driverid > results_1.statusid
group by results_1.statusid, results_1.rank, results_1.position, results_1.statusid, results_1.number, results_1.constructorid, results_1.driverid, results_1.grid, results_1.points, results_1.positionorder, results_1.driverid
limit 9;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
limit 31;
select  
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 26;
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 7;
select  
  races_1.raceid, 
  races_1.date, 
  max(
    races_1.name), 
  races_1.date
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.date is not NULL
group by races_1.raceid, races_1.date, races_1.date
limit 37;
select  
  constructors_1.nationality, 
  count(*), 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.name, constructors_1.nationality
limit 29;
select  
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.driverref, 
  min(
    drivers_1.surname), 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.surname, 
  max(
    drivers_1.dob), 
  min(
    drivers_1.driverid), 
  max(
    drivers_1.code), 
  max(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid < drivers_1.driverid
group by drivers_1.code, drivers_1.surname, drivers_1.driverref, drivers_1.driverid, drivers_1.nationality, drivers_1.surname, drivers_1.dob, drivers_1.dob, drivers_1.driverid
limit 34;
select  
  qualifying_1.position, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 39;
select  
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
limit 42;
select  
  circuits_1.country, 
  avg(
    constructors_1.constructorid), 
  count(
    constructors_1.constructorid), 
  circuits_1.circuitref, 
  constructors_1.name, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitref is not NULL
group by circuits_1.country, circuits_1.circuitref, constructors_1.name, circuits_1.circuitref
limit 6;
select  
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 18;
select  
  results_1.laps, 
  results_1.rank, 
  results_1.driverid, 
  results_1.date
from 
  results as results_1
where results_1.rank <= results_1.milliseconds
limit 25;
select  
  results_2.position, 
  circuits_1.lng, 
  results_1.position, 
  circuits_1.lat, 
  results_1.resultid, 
  constructor_results_1.raceid, 
  results_2.raceid, 
  circuits_1.circuitid, 
  constructor_results_1.constructorid
from 
  results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    inner join results as results_2
    on (circuits_1.circuitid = results_2.resultid )
where constructor_results_1.date is not NULL
limit 6;
select  
  races_1.name, 
  max(
    races_1.name)
from 
  races as races_1
where races_1.time is not NULL
group by races_1.name
limit 24;
select  
  standings_2.wins, 
  circuits_1.country, 
  standings_1.driverstandingsid
from 
  standings as standings_1
      inner join circuits as circuits_1
        inner join standings as standings_2
        on (circuits_1.circuitid = standings_2.driverstandingsid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join standings as standings_3
    on (circuits_1.circuitid = standings_3.driverstandingsid )
where standings_2.date <= standings_1.date
limit 1;
select  
  standings_1.wins, 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.date <= standings_1.date
group by standings_1.wins
limit 14;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 20;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.raceid), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.surname = drivers_1.driverref
group by constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.points
limit 11;
select  
  standings_1.date, 
  standings_1.position, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 41;
select  
  results_1.milliseconds, 
  results_1.laps, 
  results_1.date, 
  results_1.raceid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.date is not NULL
limit 16;
select  
  races_1.date, 
  standings_1.driverid, 
  races_1.date, 
  races_1.time, 
  standings_1.driverstandingsid, 
  races_1.name, 
  qualifying_1.constructorid, 
  max(
    races_1.date), 
  qualifying_1.raceid
from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.name = races_1.time
group by races_1.date, standings_1.driverid, races_1.date, races_1.time, standings_1.driverstandingsid, races_1.name, qualifying_1.constructorid, qualifying_1.raceid
limit 16;
select  
  results_1.statusid, 
  results_1.resultid, 
  constructor_standings_1.constructorid, 
  results_1.points, 
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  results_1.resultid
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by results_1.statusid, results_1.resultid, constructor_standings_1.constructorid, results_1.points, constructor_standings_1.points, constructor_standings_1.position, results_1.resultid
limit 9;
select  
  constructors_1.name, 
  avg(
    drivers_1.driverid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join drivers as drivers_1
      on (constructors_2.constructorid = drivers_1.driverid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where drivers_1.driverid >= constructors_1.constructorid
group by constructors_1.name, constructors_1.constructorref
limit 19;
select  
  drivers_1.forename, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 32;
select  
  results_1.resultid, 
  min(
    circuits_1.name), 
  sum(
    circuits_1.alt), 
  standings_1.points, 
  standings_1.driverstandingsid, 
  results_1.positionorder, 
  drivers_1.code, 
  standings_1.points
from 
  standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.surname is not NULL
group by results_1.resultid, standings_1.points, standings_1.driverstandingsid, results_1.positionorder, drivers_1.code, standings_1.points
limit 41;
select  
  max(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid
limit 16;
select  
  constructor_results_1.points, 
  drivers_1.surname, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.date is not NULL
limit 8;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
select  
  drivers_1.driverid, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 21;
select  
  constructor_standings_1.constructorid, 
  constructor_results_1.constructorid
from 
  races as races_1
    inner join races as races_2
        inner join constructor_standings as constructor_standings_1
        on (races_2.raceid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_1
      on (races_2.raceid = constructor_results_1.constructorresultsid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.points is not NULL
limit 12;
select  
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.location, 
  max(
    circuits_1.lng), 
  circuits_1.location, 
  min(
    circuits_1.circuitref)
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.location
limit 18;
select  
  standings_1.wins, 
  max(
    standings_1.points), 
  count(*), 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorref), 
  count(
    standings_1.driverid), 
  standings_1.date, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.position, 
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorid is not NULL
group by standings_1.wins, constructors_1.constructorref, standings_1.date, constructors_1.constructorref, constructors_1.constructorref, standings_1.date, standings_1.wins, standings_1.position, constructors_1.constructorref
limit 2;
select  
  drivers_1.code, 
  results_1.position, 
  drivers_1.dob, 
  results_1.rank, 
  drivers_1.code, 
  results_1.raceid, 
  drivers_1.forename, 
  min(
    results_1.number), 
  sum(
    results_1.number), 
  results_1.position, 
  drivers_1.nationality, 
  results_1.statusid, 
  drivers_1.forename, 
  drivers_1.code, 
  min(
    results_1.rank), 
  drivers_1.driverid, 
  drivers_1.dob
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.constructorid is not NULL
group by drivers_1.code, results_1.position, drivers_1.dob, results_1.rank, drivers_1.code, results_1.raceid, drivers_1.forename, results_1.position, drivers_1.nationality, results_1.statusid, drivers_1.forename, drivers_1.code, drivers_1.driverid, drivers_1.dob
limit 29;
select  
  races_1.raceid, 
  results_1.laps, 
  results_1.raceid, 
  races_1.round, 
  races_1.name, 
  results_1.resultid, 
  results_1.positionorder, 
  min(
    races_1.time), 
  races_1.year
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where results_1.constructorid = races_1.raceid
group by races_1.raceid, results_1.laps, results_1.raceid, races_1.round, races_1.name, results_1.resultid, results_1.positionorder, races_1.year
limit 30;
select  
  drivers_1.code, 
  results_2.number, 
  results_1.resultid
from 
  constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    inner join results as results_1
      inner join drivers as drivers_1
          inner join constructor_results as constructor_results_1
            inner join races as races_1
            on (constructor_results_1.constructorresultsid = races_1.raceid )
          on (drivers_1.driverid = constructor_results_1.constructorresultsid )
        inner join results as results_2
        on (drivers_1.driverid = results_2.resultid )
      on (results_1.resultid = results_2.resultid )
    on (constructors_1.constructorid = drivers_1.driverid )
where results_1.resultid is not NULL
limit 18;
select  
  circuits_1.lng, 
  min(
    circuits_1.name), 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lat = circuits_1.alt
group by circuits_1.lng, circuits_1.lat, circuits_1.lng, circuits_1.circuitid, circuits_1.circuitid, circuits_1.location
limit 18;
select distinct 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 6;
select  
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 27;
select  
  qualifying_1.driverid, 
  qualifying_2.number, 
  races_1.raceid
from 
  races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join results as results_1
    on (qualifying_2.qualifyid = results_1.resultid )
where qualifying_2.position is not NULL
limit 12;
select  
  drivers_1.nationality
from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where drivers_1.code < drivers_1.forename
limit 11;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  count(*)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
group by constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.position
limit 26;
select  
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date is not NULL
limit 42;
select  
  standings_1.wins, 
  sum(
    standings_1.wins), 
  standings_1.wins, 
  standings_1.date, 
  standings_1.position, 
  standings_1.date, 
  standings_1.date, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.wins, standings_1.wins, standings_1.date, standings_1.position, standings_1.date, standings_1.date, standings_1.points, standings_1.raceid
limit 27;
select  
  races_1.year, 
  standings_1.raceid
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where races_1.date is not NULL
limit 22;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 27;
select  
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date < standings_1.date
group by standings_1.date, standings_1.raceid, standings_1.points, standings_1.raceid, standings_1.raceid
limit 24;
select  
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.raceid
limit 5;
select  
  results_1.resultid
from 
  results as results_1
where results_1.raceid is not NULL
limit 22;
select  
  max(
    races_1.raceid), 
  results_1.driverid, 
  races_1.year, 
  results_1.constructorid
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.driverid is not NULL
group by results_1.driverid, races_1.year, results_1.constructorid
limit 24;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.raceid
limit 17;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 3;
select  
  standings_1.driverstandingsid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.position is not NULL
limit 34;
select  
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 14;
select  
  constructor_results_1.date, 
  min(
    standings_1.position)
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
    on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.date <= constructor_results_1.date
group by constructor_results_1.date
limit 9;
select  
  races_1.year, 
  races_1.name, 
  min(
    races_1.raceid)
from 
  races as races_1
where races_1.date is not NULL
group by races_1.year, races_1.name
limit 10;
select  
  results_1.constructorid, 
  results_1.milliseconds, 
  results_1.points, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.rank, 
  results_1.raceid
from 
  results as results_1
where results_1.driverid is not NULL
limit 15;
select  
  drivers_1.surname, 
  count(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.surname
limit 7;
select  
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.number, qualifying_1.constructorid, qualifying_1.qualifyid
limit 27;
select  
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.points, 
  results_1.fastestlap, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.milliseconds, 
  results_1.resultid
from 
  results as results_1
where results_1.date >= results_1.date
limit 34;
select  
  drivers_1.driverref, 
  drivers_1.code
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.name is not NULL
limit 33;
select  
  count(
    qualifying_1.date), 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  sum(
    qualifying_1.position), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.number <= qualifying_1.qualifyid
group by qualifying_1.number, qualifying_1.position
limit 2;
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  count(*), 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.date, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.number, qualifying_1.position, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.date, qualifying_1.number
limit 36;
select  
  results_1.positionorder, 
  results_1.number, 
  results_1.grid, 
  results_1.constructorid, 
  count(
    results_1.raceid), 
  min(
    results_1.number), 
  results_1.date, 
  results_1.laps, 
  results_1.fastestlap
from 
  results as results_1
where results_1.driverid >= results_1.constructorid
group by results_1.positionorder, results_1.number, results_1.grid, results_1.constructorid, results_1.date, results_1.laps, results_1.fastestlap
limit 25;
select  
  drivers_1.dob, 
  drivers_1.forename, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.nationality, 
  count(
    constructor_standings_1.raceid), 
  drivers_1.forename, 
  drivers_1.nationality, 
  max(
    drivers_1.driverref), 
  drivers_1.driverid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.raceid), 
  min(
    constructor_standings_1.constructorid), 
  min(
    constructor_standings_1.points), 
  min(
    drivers_1.dob)
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.forename, constructor_standings_1.constructorstandingsid, drivers_1.nationality, drivers_1.forename, drivers_1.nationality, drivers_1.driverid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 3;
select  
  min(
    races_1.date), 
  min(
    races_1.raceid)
from 
  races as races_1
where races_1.name is not NULL
limit 24;
select  
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 39;
select  
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  count(*), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.date
limit 32;
select  
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position, constructor_standings_1.wins
limit 31;
select  
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality
limit 15;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  circuits_1.country, 
  circuits_1.lng, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  circuits_1.circuitid, 
  constructors_1.constructorid, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.circuitref, 
  constructors_1.constructorref, 
  circuits_1.country, 
  circuits_1.name, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.name is not NULL
limit 14;
select  
  races_1.round, 
  races_1.round, 
  races_1.name, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.raceid >= races_1.round
group by races_1.round, races_1.round, races_1.name, races_1.raceid, races_1.circuitid, races_1.date, races_1.round
limit 37;
select  
  max(
    constructors_1.constructorref), 
  qualifying_1.raceid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (results_1.resultid = constructors_1.constructorid )
where qualifying_1.driverid is not NULL
group by qualifying_1.raceid
limit 31;
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.constructorresultsid), 
  count(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.points
limit 38;
select  
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  min(
    constructor_results_1.points), 
  count(
    constructor_results_1.raceid), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.position, constructor_results_1.raceid, constructor_results_1.constructorresultsid
limit 23;
select  
  races_1.time, 
  races_1.round, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  races_1.circuitid, 
  qualifying_1.number, 
  races_1.circuitid, 
  qualifying_1.number, 
  races_1.round, 
  races_1.time
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.time = races_1.name
group by races_1.time, races_1.round, qualifying_1.date, races_1.circuitid, qualifying_1.number, races_1.circuitid, qualifying_1.number, races_1.round, races_1.time
limit 33;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.position is not NULL
limit 22;
select  
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid
limit 18;
select  
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where constructor_results_1.raceid is not NULL
limit 20;
select  
  constructor_results_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 5;
select  
  min(
    results_1.laps), 
  results_1.points
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.points
limit 30;
select  
  standings_1.wins, 
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.wins, standings_1.driverstandingsid, standings_1.driverid
limit 31;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
limit 34;
select  
  max(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.forename, 
  max(
    drivers_1.driverref), 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.nationality, 
  max(
    drivers_1.surname)
from 
  drivers as drivers_1
where drivers_1.driverid <= drivers_1.driverid
group by drivers_1.surname, drivers_1.code, drivers_1.forename, drivers_1.dob, drivers_1.forename, drivers_1.driverref, drivers_1.surname, drivers_1.forename, drivers_1.dob, drivers_1.driverref, drivers_1.driverref, drivers_1.code, drivers_1.nationality
limit 13;
select  
  max(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 42;
select  
  min(
    circuits_1.circuitid), 
  min(
    circuits_1.circuitref), 
  races_1.time, 
  circuits_1.lat
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.time is not NULL
group by races_1.time, circuits_1.lat
limit 32;
select  
  constructors_1.nationality, 
  standings_1.driverstandingsid, 
  constructors_1.constructorref, 
  standings_1.date, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorid is not NULL
limit 12;
select  
  count(*), 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 21;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.constructorid is not NULL
limit 25;
select  
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 39;
select  
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
limit 15;
select  
  sum(
    standings_1.points)
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
limit 25;
select  
  circuits_1.country, 
  races_1.time, 
  results_1.constructorid, 
  results_1.constructorid, 
  races_1.raceid, 
  circuits_1.circuitref, 
  qualifying_1.driverid, 
  races_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.country, 
  qualifying_1.date
from 
  circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.raceid < qualifying_1.constructorid
limit 35;
select  
  results_1.resultid, 
  results_2.raceid, 
  races_1.date, 
  results_2.position, 
  results_2.resultid
from 
  races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    inner join results as results_2
    on (races_1.raceid = results_2.resultid )
where results_2.date < races_1.date
limit 4;
select  
  constructors_1.name, 
  min(
    constructors_1.name)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name
limit 38;
select  
  max(
    races_1.date), 
  races_1.date
from 
  races as races_1
where races_1.time is not NULL
group by races_1.date
limit 11;
select  
  avg(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 24;
select  
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 13;
select  
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  circuits_1.lat, 
  constructor_standings_1.points, 
  circuits_1.circuitid
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.lng is not NULL
limit 23;
select  
  count(*), 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.country
limit 9;
select  
  constructor_standings_1.wins, 
  drivers_1.surname, 
  min(
    drivers_1.forename)
from 
  drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where races_1.time > races_1.name
group by constructor_standings_1.wins, drivers_1.surname
limit 36;
select  
  count(*), 
  constructor_standings_1.raceid, 
  standings_1.driverid, 
  sum(
    constructor_standings_1.constructorid), 
  standings_1.driverstandingsid, 
  constructor_standings_1.points, 
  min(
    standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  standings_1.points, 
  max(
    standings_1.raceid), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  avg(
    standings_1.points), 
  standings_1.driverid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  standings_1.points, 
  max(
    standings_1.driverid), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  max(
    standings_1.date), 
  avg(
    standings_1.points), 
  constructor_standings_1.points, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.raceid, standings_1.driverid, standings_1.driverstandingsid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, standings_1.points, constructor_standings_1.date, constructor_standings_1.constructorid, standings_1.driverid, constructor_standings_1.date, constructor_standings_1.raceid, standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.points, standings_1.date, standings_1.raceid, standings_1.position
limit 40;
select  
  max(
    qualifying_1.constructorid), 
  qualifying_1.constructorid, 
  constructors_1.constructorref, 
  circuits_1.circuitid, 
  qualifying_1.number, 
  constructors_1.constructorref, 
  results_1.points, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.number >= circuits_1.alt
group by qualifying_1.constructorid, constructors_1.constructorref, circuits_1.circuitid, qualifying_1.number, constructors_1.constructorref, results_1.points, qualifying_1.raceid
limit 12;
select  
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.circuitref, 
  count(
    results_1.position), 
  min(
    qualifying_1.date), 
  circuits_1.location, 
  results_1.driverid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.lng is not NULL
group by circuits_1.lat, circuits_1.location, circuits_1.circuitref, circuits_1.location, results_1.driverid
limit 13;
select  
  constructors_1.name
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.date > races_1.date
limit 28;
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 1;
select  
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 6;
select  
  count(
    qualifying_1.raceid), 
  qualifying_1.driverid, 
  count(
    qualifying_1.raceid), 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.date
limit 40;
select  
  min(
    constructors_1.constructorid), 
  min(
    constructors_1.name), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality
limit 26;
select  
  max(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.raceid, qualifying_1.position, qualifying_1.date
limit 30;
select  
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 16;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 41;
select  
  constructor_results_1.raceid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorresultsid
limit 14;
select  
  min(
    races_1.date), 
  races_1.time, 
  max(
    races_1.date), 
  races_1.year, 
  races_1.date, 
  races_1.circuitid, 
  races_1.raceid, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.year is not NULL
group by races_1.time, races_1.year, races_1.date, races_1.circuitid, races_1.raceid
limit 26;
select  
  standings_1.position, 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
limit 40;
select  
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 6;
select  
  standings_1.driverstandingsid, 
  races_1.time, 
  min(
    standings_1.wins)
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.points <= standings_1.points
group by standings_1.driverstandingsid, races_1.time
limit 32;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_2
      on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_2.points is not NULL
limit 24;
select  
  min(
    races_1.name), 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.date, 
  constructor_standings_1.wins, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points < constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_results_1.date, constructor_standings_1.wins, constructor_results_1.constructorid, constructor_results_1.raceid
limit 32;
select  
  drivers_1.surname, 
  drivers_1.driverref
from 
  races as races_1
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (races_1.raceid = drivers_1.driverid )
where races_1.raceid is not NULL
limit 10;
select  
  drivers_1.forename
from 
  results as results_1
    inner join results as results_2
      inner join drivers as drivers_1
      on (results_2.resultid = drivers_1.driverid )
    on (results_1.resultid = results_2.resultid )
where drivers_1.surname = drivers_1.code
limit 7;
select  
  avg(
    standings_1.wins), 
  standings_1.date, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.date, 
  standings_1.wins, 
  min(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid <= standings_1.position
group by standings_1.date, standings_1.wins, standings_1.date, standings_1.date, standings_1.wins, standings_1.driverid, standings_1.raceid, standings_1.position
limit 9;
select  
  circuits_1.country, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 34;
select  
  races_1.date, 
  count(
    races_1.raceid)
from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where constructor_standings_1.points is not NULL
group by races_1.date
limit 4;
select  
  max(
    drivers_1.dob), 
  qualifying_1.driverid, 
  constructor_standings_2.wins, 
  constructor_standings_1.points, 
  max(
    drivers_1.driverref)
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
        inner join constructor_standings as constructor_standings_2
          inner join drivers as drivers_1
          on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
        on (results_1.resultid = constructor_standings_2.constructorstandingsid )
      inner join constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      on (results_1.resultid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where drivers_1.driverid is not NULL
group by qualifying_1.driverid, constructor_standings_2.wins, constructor_standings_1.points
limit 33;
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 29;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
limit 40;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 9;
select  
  count(
    constructor_results_1.raceid), 
  constructor_results_1.points, 
  count(*), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
group by constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date
limit 38;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
limit 10;
select  
  qualifying_1.number, 
  races_1.date
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.nationality is not NULL
limit 29;
select  
  constructors_1.name, 
  max(
    standings_1.points), 
  constructors_1.constructorref
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.wins is not NULL
group by constructors_1.name, constructors_1.constructorref
limit 38;
select  
  results_1.constructorid
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where qualifying_1.raceid is not NULL
limit 16;
select  
  races_1.round, 
  races_1.time
from 
  races as races_1
where races_1.circuitid is not NULL
limit 42;
select  
  results_1.grid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.driverid is not NULL
limit 7;
select  
  max(
    races_1.date), 
  results_1.driverid, 
  constructors_1.name
from 
  constructor_results as constructor_results_1
    inner join results as results_1
        inner join races as races_1
        on (results_1.resultid = races_1.raceid )
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.number <= results_1.position
group by results_1.driverid, constructors_1.name
limit 15;
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  avg(
    qualifying_1.raceid), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.raceid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.position
limit 21;
select  
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 41;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins = constructor_standings_1.raceid
limit 40;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.constructorid < constructor_standings_1.constructorid
limit 17;
select  
  constructor_standings_1.constructorstandingsid
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.alt is not NULL
limit 28;
select  
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverstandingsid <= standings_1.wins
limit 12;
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 12;
select  
  races_1.circuitid, 
  max(
    races_1.year), 
  races_1.raceid, 
  races_1.name, 
  races_1.circuitid
from 
  races as races_1
where races_1.date > races_1.date
group by races_1.circuitid, races_1.raceid, races_1.name, races_1.circuitid
limit 41;
select  
  max(
    standings_1.points)
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 17;
select  
  standings_1.points, 
  standings_1.driverid, 
  standings_1.position, 
  min(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.points, standings_1.driverid, standings_1.position, standings_1.driverid, standings_1.wins, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.driverid
limit 28;
select  
  sum(
    results_1.statusid), 
  results_1.driverid, 
  results_1.points, 
  results_1.constructorid, 
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.grid, 
  results_1.statusid
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.driverid, results_1.points, results_1.constructorid, results_1.milliseconds, results_1.raceid, results_1.grid, results_1.statusid
limit 9;
select  
  qualifying_1.number, 
  qualifying_1.raceid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_1.date <= constructor_results_1.date
limit 28;
select  
  races_1.time, 
  races_1.name, 
  races_1.round, 
  races_1.round
from 
  races as races_1
where races_1.circuitid is not NULL
limit 27;
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 35;
select  
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.constructorid), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.points
limit 3;
select  
  results_1.points, 
  results_1.positionorder, 
  results_1.grid
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 26;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.raceid), 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.points, 
  min(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid < constructor_results_1.constructorresultsid
group by constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.date
limit 38;
select  
  results_1.statusid, 
  min(
    circuits_1.name), 
  circuits_1.circuitid, 
  standings_1.driverstandingsid, 
  results_1.milliseconds, 
  results_1.rank, 
  results_1.driverid
from 
  results as results_1
    inner join standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.location is not NULL
group by results_1.statusid, circuits_1.circuitid, standings_1.driverstandingsid, results_1.milliseconds, results_1.rank, results_1.driverid
limit 5;
select  
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.nationality
limit 38;
select  
  standings_1.date, 
  sum(
    standings_1.points), 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  sum(
    standings_1.points)
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.wins, standings_1.raceid, standings_1.driverstandingsid, standings_1.raceid
limit 6;
select  
  constructor_results_1.raceid, 
  constructors_1.constructorid, 
  races_1.raceid, 
  races_1.name
from 
  races as races_1
      inner join constructor_results as constructor_results_1
        inner join results as results_1
          inner join qualifying as qualifying_1
          on (results_1.resultid = qualifying_1.qualifyid )
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.points is not NULL
limit 14;
select  
  circuits_1.lng, 
  circuits_1.circuitref, 
  max(
    circuits_1.country), 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  min(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.lng, circuits_1.circuitref, circuits_1.location, circuits_1.circuitref, circuits_1.lat, circuits_1.lat, circuits_1.lat, circuits_1.alt, circuits_1.lat, circuits_1.alt
limit 21;
select  
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.country > circuits_1.location
limit 18;
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    drivers_1.driverref), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverref, drivers_1.nationality, drivers_1.dob
limit 19;
select  
  results_1.constructorid, 
  count(
    results_1.position), 
  results_1.raceid, 
  results_1.resultid, 
  results_1.statusid, 
  results_1.date, 
  results_1.statusid, 
  count(*), 
  results_1.statusid
from 
  results as results_1
where results_1.date is not NULL
group by results_1.constructorid, results_1.raceid, results_1.resultid, results_1.statusid, results_1.date, results_1.statusid, results_1.statusid
limit 24;
select  
  max(
    results_1.position), 
  results_1.positionorder, 
  results_1.driverid, 
  results_1.fastestlap, 
  max(
    results_1.constructorid), 
  results_1.rank, 
  results_1.milliseconds, 
  max(
    results_1.date), 
  results_1.positionorder, 
  results_1.rank, 
  results_1.points, 
  results_1.points, 
  results_1.statusid, 
  avg(
    results_1.driverid), 
  results_1.driverid, 
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  min(
    results_1.date), 
  results_1.fastestlap, 
  results_1.date
from 
  results as results_1
where results_1.number is not NULL
group by results_1.positionorder, results_1.driverid, results_1.fastestlap, results_1.rank, results_1.milliseconds, results_1.positionorder, results_1.rank, results_1.points, results_1.points, results_1.statusid, results_1.driverid, results_1.driverid, results_1.fastestlap, results_1.milliseconds, results_1.fastestlap, results_1.date
limit 32;
select  
  drivers_2.forename, 
  races_1.round, 
  drivers_2.dob, 
  circuits_1.circuitid, 
  races_1.time, 
  drivers_1.forename, 
  races_1.raceid, 
  drivers_2.driverref, 
  circuits_1.alt, 
  max(
    circuits_1.circuitid), 
  races_1.circuitid, 
  results_1.positionorder, 
  drivers_1.surname, 
  results_1.constructorid
from 
  races as races_1
        inner join circuits as circuits_1
          inner join results as results_1
          on (circuits_1.circuitid = results_1.resultid )
        on (races_1.raceid = circuits_1.circuitid )
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.dob < results_1.date
group by drivers_2.forename, races_1.round, drivers_2.dob, circuits_1.circuitid, races_1.time, drivers_1.forename, races_1.raceid, drivers_2.driverref, circuits_1.alt, races_1.circuitid, results_1.positionorder, drivers_1.surname, results_1.constructorid
limit 23;
select  
  standings_1.date, 
  constructors_1.constructorref, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.driverid, 
  min(
    standings_1.points), 
  standings_1.date, 
  standings_1.date, 
  constructors_1.name, 
  standings_1.position, 
  constructors_1.nationality, 
  standings_1.points, 
  constructors_1.nationality, 
  standings_1.points, 
  constructors_1.nationality, 
  standings_1.driverid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.date, 
  constructors_1.name, 
  constructors_1.constructorid, 
  standings_1.position, 
  constructors_1.constructorref, 
  standings_1.points, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name, 
  standings_1.points, 
  constructors_1.constructorid
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.name >= constructors_1.constructorref
group by standings_1.date, constructors_1.constructorref, standings_1.raceid, standings_1.date, standings_1.driverid, standings_1.date, standings_1.date, constructors_1.name, standings_1.position, constructors_1.nationality, standings_1.points, constructors_1.nationality, standings_1.points, constructors_1.nationality, standings_1.driverid, constructors_1.name, constructors_1.constructorref, standings_1.raceid, standings_1.date, standings_1.date, constructors_1.name, constructors_1.constructorid, standings_1.position, constructors_1.constructorref, standings_1.points, constructors_1.name, constructors_1.name, constructors_1.name, standings_1.points, constructors_1.constructorid
limit 28;
select  
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  sum(
    qualifying_1.number)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.driverid
limit 31;
select  
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 35;
select  
  circuits_1.alt, 
  constructors_1.nationality, 
  max(
    circuits_1.lng), 
  max(
    circuits_1.lng), 
  circuits_1.circuitid, 
  circuits_1.alt, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.lat is not NULL
group by circuits_1.alt, constructors_1.nationality, circuits_1.circuitid, circuits_1.alt, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.name
limit 21;
select  
  drivers_1.code, 
  constructor_standings_1.date, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.driverid is not NULL
limit 2;
select  
  max(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality
limit 1;
select  
  max(
    qualifying_1.date), 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 38;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
        inner join constructor_standings as constructor_standings_3
        on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
      on (constructor_standings_1.constructorstandingsid = constructor_standings_3.constructorstandingsid )
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_2.constructorstandingsid is not NULL
limit 9;
select  
  results_1.points, 
  results_1.date, 
  constructors_1.constructorid, 
  results_1.positionorder, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  results_2.resultid, 
  results_2.date, 
  results_1.resultid
from 
  constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.date = results_2.date
limit 41;
select  
  drivers_1.surname, 
  drivers_1.forename, 
  min(
    drivers_1.driverref), 
  drivers_1.dob, 
  drivers_1.code, 
  count(
    drivers_1.nationality)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.surname, drivers_1.forename, drivers_1.dob, drivers_1.code
limit 19;
select  
  qualifying_1.qualifyid, 
  constructor_results_1.date, 
  qualifying_1.qualifyid, 
  sum(
    results_1.number), 
  results_1.number, 
  min(
    results_1.date), 
  qualifying_1.raceid, 
  max(
    results_1.rank), 
  constructor_results_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where qualifying_1.raceid is not NULL
group by qualifying_1.qualifyid, constructor_results_1.date, qualifying_1.qualifyid, results_1.number, qualifying_1.raceid, constructor_results_1.raceid, qualifying_1.number
limit 6;
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 11;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  results_1.resultid, 
  results_1.raceid, 
  results_1.positionorder
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.laps <= constructor_standings_1.wins
limit 41;
select  
  qualifying_1.qualifyid, 
  min(
    races_1.name), 
  qualifying_1.position, 
  races_1.round, 
  qualifying_1.raceid, 
  avg(
    races_1.raceid), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  races_1.date, 
  races_1.circuitid, 
  qualifying_1.constructorid, 
  races_1.name
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.date >= qualifying_1.date
group by qualifying_1.qualifyid, qualifying_1.position, races_1.round, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.qualifyid, races_1.date, races_1.circuitid, qualifying_1.constructorid, races_1.name
limit 22;
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  sum(
    constructor_results_1.points)
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date <= constructor_standings_1.date
group by constructor_standings_1.date, constructor_standings_1.wins
limit 27;
select  
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.country, 
  max(
    circuits_1.location), 
  sum(
    circuits_1.circuitid), 
  avg(
    circuits_1.alt), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.country, circuits_1.location, circuits_1.name, circuits_1.country, circuits_1.alt
limit 20;
select  
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.circuitref is not NULL
limit 9;
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  count(
    qualifying_1.number), 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  max(
    qualifying_1.position), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.number < qualifying_1.raceid
group by qualifying_1.date, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.constructorid
limit 42;
select  
  results_1.driverid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  circuits_1.circuitid, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  circuits_1.location, 
  constructors_1.constructorid, 
  max(
    drivers_1.dob)
from 
  constructors as constructors_1
    inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.circuitid >= results_1.resultid
group by results_1.driverid, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, circuits_1.circuitid, drivers_1.forename, circuits_1.location, constructors_1.constructorid
limit 34;
select  
  results_1.date, 
  results_1.positionorder, 
  results_1.rank, 
  results_1.milliseconds, 
  results_1.points, 
  results_1.resultid, 
  results_1.date
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 40;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name
limit 29;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  min(
    results_1.date)
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date
limit 23;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  max(
    results_1.date), 
  results_1.positionorder, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  results_1.driverid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructors_1.name is not NULL
group by constructors_1.nationality, constructors_1.constructorref, results_1.positionorder, constructor_results_1.points, constructor_results_1.raceid, results_1.driverid
limit 36;
select  
  constructors_3.name, 
  constructors_4.constructorid, 
  constructors_2.constructorref, 
  constructors_4.constructorid, 
  constructors_1.constructorref, 
  constructors_2.constructorref
from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructors as constructors_3
      inner join constructors as constructors_4
      on (constructors_3.constructorid = constructors_4.constructorid )
    on (constructors_2.constructorid = constructors_3.constructorid )
where constructors_4.constructorref is not NULL
limit 41;
select  
  constructors_1.name
from 
  constructors as constructors_1
      inner join drivers as drivers_1
        inner join constructors as constructors_2
          inner join results as results_1
          on (constructors_2.constructorid = results_1.resultid )
        on (drivers_1.driverid = results_1.resultid )
      on (constructors_1.constructorid = results_1.resultid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where drivers_1.dob = results_1.date
limit 25;
select  
  standings_1.wins, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.raceid < constructor_results_1.constructorid
limit 19;
select  
  min(
    drivers_1.dob), 
  results_1.number, 
  constructors_1.nationality
from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_2
        inner join constructors as constructors_1
        on (constructor_results_2.constructorresultsid = constructors_1.constructorid )
      on (drivers_1.driverid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by results_1.number, constructors_1.nationality
limit 14;
select distinct 
  standings_1.wins, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points > standings_1.points
limit 30;
select  
  min(
    qualifying_1.constructorid), 
  qualifying_1.number, 
  qualifying_1.raceid, 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.qualifyid, 
  sum(
    qualifying_1.constructorid), 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  avg(
    qualifying_1.position), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.raceid
limit 20;
select  
  min(
    races_1.time), 
  max(
    races_1.date), 
  races_1.round, 
  races_1.round
from 
  races as races_1
where races_1.date is not NULL
group by races_1.round, races_1.round
limit 28;
select  
  results_1.date, 
  constructors_1.name, 
  min(
    results_1.date), 
  results_1.resultid, 
  results_1.position, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  results_1.driverid, 
  results_1.statusid
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.name is not NULL
group by results_1.date, constructors_1.name, results_1.resultid, results_1.position, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, results_1.driverid, results_1.statusid
limit 15;
select  
  qualifying_1.position, 
  drivers_1.forename, 
  qualifying_1.constructorid, 
  standings_1.driverid, 
  qualifying_1.raceid, 
  standings_1.driverstandingsid, 
  qualifying_1.date, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
limit 14;
select  
  races_1.name, 
  races_2.round, 
  races_1.name
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.name > races_2.name
limit 1;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  max(
    constructor_standings_1.constructorstandingsid), 
  avg(
    constructor_standings_1.wins)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.position
limit 39;
select  
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 24;
select  
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 1;
select  
  results_1.resultid, 
  results_1.resultid
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 8;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  count(
    constructor_standings_1.wins), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
group by constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 27;
select  
  qualifying_1.constructorid, 
  races_1.round
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.year is not NULL
limit 25;
select  
  max(
    races_1.time), 
  races_1.year, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.year
limit 29;
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 21;
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 38;
select  
  count(
    qualifying_1.qualifyid), 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.raceid, qualifying_1.driverid, qualifying_1.date, qualifying_1.constructorid
limit 35;
select  
  sum(
    constructor_standings_3.raceid), 
  constructor_standings_3.points, 
  constructor_standings_2.constructorid
from 
  constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (constructor_standings_2.constructorstandingsid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_3
    on (constructor_standings_1.constructorstandingsid = constructor_standings_3.constructorstandingsid )
where constructor_standings_2.date >= constructor_standings_3.date
group by constructor_standings_3.points, constructor_standings_2.constructorid
limit 38;
select  
  count(
    results_1.milliseconds), 
  results_1.rank, 
  count(
    results_1.number), 
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.milliseconds, 
  max(
    results_1.date), 
  results_1.driverid, 
  results_1.constructorid, 
  results_1.rank, 
  results_1.milliseconds, 
  count(
    results_1.rank), 
  results_1.fastestlap, 
  avg(
    results_1.laps), 
  avg(
    results_1.number)
from 
  results as results_1
where results_1.number is not NULL
group by results_1.rank, results_1.milliseconds, results_1.constructorid, results_1.raceid, results_1.milliseconds, results_1.driverid, results_1.constructorid, results_1.rank, results_1.milliseconds, results_1.fastestlap
limit 35;
select  
  standings_1.driverstandingsid, 
  drivers_1.dob, 
  races_1.raceid, 
  races_1.time, 
  drivers_1.dob, 
  avg(
    races_1.year), 
  min(
    standings_2.driverstandingsid), 
  standings_2.wins, 
  races_1.circuitid
from 
  races as races_1
    inner join standings as standings_1
      inner join drivers as drivers_1
        inner join standings as standings_2
        on (drivers_1.driverid = standings_2.driverstandingsid )
      on (standings_1.driverstandingsid = drivers_1.driverid )
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_2.points is not NULL
group by standings_1.driverstandingsid, drivers_1.dob, races_1.raceid, races_1.time, drivers_1.dob, standings_2.wins, races_1.circuitid
limit 26;
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 7;
select  
  standings_1.date, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 22;
select  
  constructor_results_1.raceid, 
  constructor_results_2.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorresultsid <= constructor_results_2.raceid
limit 5;
select  
  results_1.points, 
  results_1.points
from 
  results as results_1
where results_1.points <= results_1.number
limit 27;
select  
  constructors_1.constructorid, 
  max(
    constructors_1.name), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  min(
    constructors_1.constructorref), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.constructorref
limit 16;
select  
  max(
    standings_1.date), 
  standings_1.driverid, 
  count(*), 
  standings_1.date, 
  standings_1.wins, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.wins >= standings_1.driverstandingsid
group by standings_1.driverid, standings_1.date, standings_1.wins, standings_1.wins
limit 12;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  count(*), 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid
limit 39;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 30;
select  
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
        inner join circuits as circuits_1
          inner join circuits as circuits_2
          on (circuits_1.circuitid = circuits_2.circuitid )
        on (constructors_1.constructorid = circuits_1.circuitid )
      on (qualifying_1.qualifyid = circuits_2.circuitid )
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where qualifying_1.number = circuits_1.circuitid
limit 24;
select  
  results_1.laps, 
  results_1.position, 
  results_1.resultid, 
  max(
    results_1.date)
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.laps, results_1.position, results_1.resultid
limit 15;
select  
  results_1.grid
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 17;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 9;
select  
  min(
    circuits_1.circuitref), 
  circuits_1.alt, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.circuitid
limit 25;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 33;
select  
  qualifying_1.constructorid
from 
  results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (results_1.resultid = constructors_1.constructorid )
where constructor_standings_1.date < qualifying_1.date
limit 18;
select  
  min(
    constructor_standings_1.wins), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.constructorid), 
  count(*), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.constructorstandingsid
limit 32;
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  count(*), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.points, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.position, 
  max(
    standings_1.date), 
  standings_1.points, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  max(
    standings_1.driverid), 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  sum(
    standings_1.points), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.wins, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.points, standings_1.position, standings_1.driverid, standings_1.wins, standings_1.driverid, standings_1.position, standings_1.points, standings_1.points, standings_1.driverstandingsid, standings_1.driverid, standings_1.driverid, standings_1.points, standings_1.wins, standings_1.driverstandingsid, standings_1.date, standings_1.driverstandingsid, standings_1.date, standings_1.date, standings_1.date, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.raceid
limit 16;
select  
  min(
    races_1.name), 
  max(
    races_1.date)
from 
  races as races_1
where races_1.time >= races_1.name
limit 18;
select  
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.nationality, 
  min(
    drivers_1.driverid), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.dob, drivers_1.forename, drivers_1.nationality, drivers_1.forename, drivers_1.forename, drivers_1.nationality, drivers_1.code
limit 29;
select  
  standings_1.raceid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverid = standings_1.driverstandingsid
limit 42;
select  
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 1;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 7;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.date, 
  max(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid
limit 28;
select  
  sum(
    races_1.raceid)
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.name = constructors_1.constructorref
limit 14;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.name is not NULL
limit 5;
select  
  max(
    qualifying_1.date), 
  constructors_1.constructorid, 
  standings_1.raceid, 
  standings_1.driverid, 
  qualifying_1.raceid, 
  max(
    constructors_1.nationality), 
  standings_1.points, 
  qualifying_1.driverid, 
  constructors_1.nationality, 
  standings_1.points, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  constructors_1.name, 
  standings_1.position, 
  standings_1.position, 
  max(
    constructors_1.constructorref)
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where standings_1.points <= standings_1.points
group by constructors_1.constructorid, standings_1.raceid, standings_1.driverid, qualifying_1.raceid, standings_1.points, qualifying_1.driverid, constructors_1.nationality, standings_1.points, qualifying_1.raceid, qualifying_1.qualifyid, constructors_1.name, standings_1.position, standings_1.position
limit 14;
select  
  results_1.positionorder, 
  results_1.raceid, 
  max(
    results_1.date), 
  results_1.raceid, 
  min(
    results_1.number)
from 
  results as results_1
where results_1.raceid > results_1.resultid
group by results_1.positionorder, results_1.raceid, results_1.raceid
limit 28;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  results_1.grid, 
  constructor_results_1.points
from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where races_1.time <= races_1.name
limit 25;
select  
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.forename, drivers_1.nationality, drivers_1.driverref, drivers_1.driverref, drivers_1.nationality, drivers_1.forename, drivers_1.driverid, drivers_1.dob, drivers_1.code
limit 9;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  count(
    circuits_1.lat), 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.circuitid, circuits_1.lng
limit 7;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 25;
select  
  constructors_1.name, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructors_1.constructorref, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructors_1.nationality, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.points < constructor_results_1.points
group by constructors_1.name, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.date, constructors_1.constructorref, constructor_results_1.constructorresultsid, constructors_1.nationality, constructor_results_1.points, constructor_results_1.raceid
limit 2;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 39;
select  
  constructor_results_1.raceid, 
  standings_1.wins, 
  standings_1.position
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
limit 6;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 24;
select  
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 10;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.raceid
limit 37;
select  
  circuits_1.circuitid, 
  count(*), 
  constructor_standings_2.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
        inner join constructors as constructors_1
        on (constructor_standings_2.constructorstandingsid = constructors_1.constructorid )
      inner join circuits as circuits_1
      on (constructor_standings_2.constructorstandingsid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where circuits_1.name is not NULL
group by circuits_1.circuitid, constructor_standings_2.raceid
limit 28;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 28;
select  
  standings_1.driverstandingsid, 
  sum(
    standings_1.driverstandingsid), 
  standings_1.points, 
  min(
    standings_1.points), 
  standings_1.points, 
  standings_1.points
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverstandingsid, standings_1.points, standings_1.points, standings_1.points
limit 42;
select  
  races_1.name, 
  circuits_1.circuitref, 
  races_1.round, 
  standings_1.raceid, 
  max(
    constructors_1.nationality), 
  max(
    constructors_1.constructorid), 
  races_1.time, 
  races_1.round, 
  races_1.round
from 
  races as races_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
          inner join standings as standings_1
          on (circuits_1.circuitid = standings_1.driverstandingsid )
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (races_1.raceid = circuits_1.circuitid )
where constructor_standings_1.date = races_1.date
group by races_1.name, circuits_1.circuitref, races_1.round, standings_1.raceid, races_1.time, races_1.round, races_1.round
limit 27;
select  
  min(
    qualifying_1.constructorid), 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.date, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.number, qualifying_1.number
limit 3;
select  
  drivers_1.nationality, 
  count(*), 
  drivers_1.dob, 
  max(
    drivers_1.dob), 
  min(
    drivers_1.forename), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  avg(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.nationality, drivers_1.dob, drivers_1.nationality, drivers_1.driverid, drivers_1.nationality, drivers_1.code
limit 35;
select  
  results_2.laps, 
  results_2.raceid, 
  min(
    results_2.date), 
  max(
    results_1.date), 
  min(
    results_2.points)
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.positionorder is not NULL
group by results_2.laps, results_2.raceid
limit 2;
select  
  max(
    constructor_standings_2.position), 
  races_1.round, 
  constructor_standings_2.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_2
      inner join races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      on (constructor_standings_2.constructorstandingsid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where circuits_1.lng <= circuits_1.lat
group by races_1.round, constructor_standings_2.constructorstandingsid
limit 20;
select  
  min(
    circuits_1.name), 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.lng, circuits_1.name
limit 11;
select  
  constructor_standings_1.raceid, 
  count(
    constructor_standings_1.position), 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.constructorid), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.constructorid), 
  max(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.position
limit 13;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 31;
select  
  standings_1.points, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  drivers_1.forename, 
  standings_1.points, 
  standings_1.raceid, 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where drivers_1.forename >= drivers_1.nationality
limit 3;
select  
  circuits_2.alt, 
  circuits_2.country, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.location is not NULL
limit 11;
select  
  standings_1.wins, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points is not NULL
limit 20;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorid
limit 3;
select  
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date
limit 21;
select  
  drivers_1.code
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.dob > drivers_1.dob
limit 31;
select  
  races_1.name, 
  min(
    races_1.date), 
  races_1.year, 
  races_1.time
from 
  races as races_1
where races_1.name = races_1.time
group by races_1.name, races_1.year, races_1.time
limit 15;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 29;
select  
  results_1.resultid
from 
  results as results_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
          inner join constructor_standings as constructor_standings_2
            inner join constructor_standings as constructor_standings_3
            on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
          on (constructor_standings_1.constructorstandingsid = constructor_standings_3.constructorstandingsid )
        inner join results as results_2
        on (constructor_standings_3.constructorstandingsid = results_2.resultid )
      on (constructors_1.constructorid = results_2.resultid )
    on (results_1.resultid = constructors_1.constructorid )
where constructor_standings_1.date <= results_1.date
limit 33;
select  
  max(
    races_1.name), 
  races_1.time, 
  races_1.time, 
  races_1.date, 
  races_1.date
from 
  races as races_1
where races_1.circuitid > races_1.raceid
group by races_1.time, races_1.time, races_1.date, races_1.date
limit 9;
select  
  races_1.date
from 
  races as races_1
where races_1.date < races_1.date
limit 18;
select  
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
limit 37;
select  
  standings_1.date, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 28;
select  
  min(
    constructors_1.constructorref), 
  min(
    drivers_1.code), 
  standings_1.points, 
  min(
    drivers_1.dob), 
  standings_1.driverstandingsid, 
  constructors_1.name, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  drivers_1.driverid, 
  avg(
    standings_1.wins), 
  avg(
    standings_1.raceid), 
  constructors_1.constructorref, 
  max(
    standings_1.date)
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where standings_1.driverstandingsid < standings_1.wins
group by standings_1.points, standings_1.driverstandingsid, constructors_1.name, standings_1.driverstandingsid, standings_1.driverid, drivers_1.driverid, constructors_1.constructorref
limit 13;
select  
  races_1.date, 
  races_1.time, 
  qualifying_1.driverid, 
  min(
    races_1.date), 
  races_1.year, 
  races_1.time, 
  qualifying_1.driverid, 
  races_1.name, 
  qualifying_1.qualifyid, 
  races_1.raceid, 
  min(
    races_1.time)
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.round is not NULL
group by races_1.date, races_1.time, qualifying_1.driverid, races_1.year, races_1.time, qualifying_1.driverid, races_1.name, qualifying_1.qualifyid, races_1.raceid
limit 4;
select  
  standings_1.position, 
  standings_1.date, 
  standings_1.driverid, 
  min(
    standings_1.position), 
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points > standings_1.points
group by standings_1.position, standings_1.date, standings_1.driverid, standings_1.date, standings_1.raceid, standings_1.position
limit 31;
select  
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  max(
    circuits_1.name), 
  standings_1.wins, 
  circuits_1.country, 
  standings_1.raceid, 
  circuits_1.lat, 
  circuits_1.lat, 
  standings_1.date, 
  circuits_1.name, 
  standings_1.wins, 
  circuits_1.alt
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.date = standings_1.date
group by standings_1.raceid, standings_1.driverstandingsid, standings_1.wins, circuits_1.country, standings_1.raceid, circuits_1.lat, circuits_1.lat, standings_1.date, circuits_1.name, standings_1.wins, circuits_1.alt
limit 10;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 19;
select  
  standings_1.raceid, 
  races_1.date, 
  drivers_1.surname, 
  races_1.time, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  standings_1.wins, 
  avg(
    standings_1.points), 
  races_1.circuitid, 
  constructor_results_1.constructorid, 
  min(
    races_1.date), 
  standings_1.raceid, 
  max(
    qualifying_1.date), 
  standings_1.driverstandingsid, 
  drivers_1.code, 
  qualifying_1.position, 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  qualifying_1.qualifyid, 
  constructor_results_1.constructorid, 
  drivers_1.driverid, 
  standings_1.driverstandingsid, 
  drivers_1.code, 
  max(
    drivers_1.driverref)
from 
  races as races_1
    inner join constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
          inner join standings as standings_1
          on (qualifying_1.qualifyid = standings_1.driverstandingsid )
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    on (races_1.raceid = standings_1.driverstandingsid )
where qualifying_1.qualifyid is not NULL
group by standings_1.raceid, races_1.date, drivers_1.surname, races_1.time, qualifying_1.qualifyid, qualifying_1.raceid, standings_1.wins, races_1.circuitid, constructor_results_1.constructorid, standings_1.raceid, standings_1.driverstandingsid, drivers_1.code, qualifying_1.position, drivers_1.code, qualifying_1.qualifyid, constructor_results_1.constructorid, drivers_1.driverid, standings_1.driverstandingsid, drivers_1.code
limit 13;
select  
  constructor_standings_1.position, 
  circuits_1.location, 
  constructor_standings_1.date, 
  standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  circuits_1.circuitref, 
  standings_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.points < constructor_standings_1.points
limit 35;
select  
  min(
    circuits_1.location), 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.country, circuits_1.circuitref, circuits_1.alt, circuits_1.lng, circuits_1.alt, circuits_1.name, circuits_1.country, circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.circuitid
limit 5;
select  
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.circuitid, 
  count(*), 
  sum(
    circuits_1.lat), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.lat, circuits_1.location, circuits_1.lng, circuits_1.location, circuits_1.lng, circuits_1.lng, circuits_1.name, circuits_1.circuitid, circuits_1.alt
limit 35;
select  
  qualifying_1.date, 
  races_1.year, 
  min(
    races_1.date), 
  max(
    races_2.name)
from 
  qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join races as races_2
    on (qualifying_1.qualifyid = races_2.raceid )
where qualifying_1.position is not NULL
group by qualifying_1.date, races_1.year
limit 24;
select  
  drivers_1.code, 
  constructor_results_1.raceid, 
  drivers_1.forename, 
  constructor_results_1.raceid, 
  drivers_1.surname
from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where circuits_1.lat >= circuits_1.lng
limit 36;
select  
  standings_1.raceid, 
  constructors_1.constructorref
from 
  drivers as drivers_1
    inner join constructors as constructors_1
      inner join circuits as circuits_1
          inner join constructor_standings as constructor_standings_1
          on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.location is not NULL
limit 8;
select  
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  max(
    qualifying_1.driverid), 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  max(
    qualifying_1.driverid), 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
group by qualifying_1.driverid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.driverid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.number, qualifying_1.raceid
limit 36;
select  
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.date, 
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.wins, standings_1.raceid, standings_1.driverstandingsid, standings_1.date, standings_1.wins, standings_1.points, standings_1.date, standings_1.driverstandingsid, standings_1.raceid, standings_1.position, standings_1.position, standings_1.driverid, standings_1.date, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins, standings_1.position, standings_1.position
limit 13;
select  
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 31;
select  
  standings_1.raceid, 
  drivers_1.code, 
  constructor_standings_1.wins, 
  drivers_2.driverref, 
  drivers_2.nationality, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.wins, 
  drivers_2.dob, 
  qualifying_1.constructorid, 
  drivers_1.surname, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  standings_1.date, 
  qualifying_1.raceid
from 
  drivers as drivers_1
      inner join drivers as drivers_2
          inner join qualifying as qualifying_1
          on (drivers_2.driverid = qualifying_1.qualifyid )
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      on (drivers_1.driverid = drivers_2.driverid )
    inner join standings as standings_1
    on (drivers_2.driverid = standings_1.driverstandingsid )
where drivers_2.driverref is not NULL
limit 6;
select  
  standings_1.raceid, 
  standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.code, 
  constructor_standings_1.raceid, 
  standings_2.points, 
  standings_2.date, 
  constructor_standings_1.position, 
  standings_2.driverid, 
  drivers_1.nationality, 
  drivers_1.forename, 
  standings_1.position
from 
  drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_2
      on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points > standings_2.points
limit 41;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.code, 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.surname, drivers_1.dob, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.forename, drivers_1.dob, drivers_1.code, drivers_1.driverref, drivers_1.code
limit 41;
select  
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid
limit 42;
select  
  standings_1.position, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.position, 
  max(
    standings_1.date), 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  max(
    standings_1.date), 
  standings_1.wins, 
  sum(
    standings_1.driverid), 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.points
from 
  standings as standings_1
where standings_1.points > standings_1.points
group by standings_1.position, standings_1.points, standings_1.driverstandingsid, standings_1.points, standings_1.wins, standings_1.wins, standings_1.position, standings_1.wins, standings_1.raceid, standings_1.wins, standings_1.points, standings_1.driverstandingsid, standings_1.wins, standings_1.date, standings_1.points
limit 2;
select  
  constructor_results_2.raceid, 
  results_1.fastestlap, 
  constructor_results_2.date, 
  results_1.positionorder
from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (results_1.resultid = constructor_results_2.constructorresultsid )
where results_1.rank is not NULL
limit 10;
select  
  drivers_1.dob, 
  results_1.points
from 
  standings as standings_1
    inner join standings as standings_2
        inner join results as results_1
        on (standings_2.driverstandingsid = results_1.resultid )
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.code is not NULL
limit 22;
select  
  results_1.position, 
  results_1.fastestlap, 
  results_1.positionorder, 
  results_1.points
from 
  results as results_1
where results_1.points is not NULL
limit 12;
select  
  standings_1.position, 
  count(*), 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.position, standings_1.raceid
limit 33;
select  
  max(
    races_1.time), 
  max(
    races_1.time), 
  races_1.name, 
  sum(
    races_1.raceid), 
  races_1.year, 
  max(
    races_1.date), 
  races_1.raceid, 
  races_1.date, 
  races_1.time, 
  max(
    races_1.name), 
  races_1.date, 
  races_1.date, 
  races_1.circuitid, 
  races_1.date, 
  races_1.date, 
  races_1.name
from 
  races as races_1
where races_1.round < races_1.raceid
group by races_1.name, races_1.year, races_1.raceid, races_1.date, races_1.time, races_1.date, races_1.date, races_1.circuitid, races_1.date, races_1.date, races_1.name
limit 12;
select  
  max(
    standings_1.points), 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.position, standings_1.driverid, standings_1.raceid, standings_1.points, standings_1.raceid, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_1.driverstandingsid
limit 36;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  min(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  count(
    constructors_1.name), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    constructors_1.nationality), 
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name
limit 23;
select  
  min(
    constructor_results_1.raceid), 
  count(*), 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date), 
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid = constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid, constructor_results_1.constructorid
limit 10;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality
limit 21;
select  
  races_1.time, 
  races_1.name, 
  constructors_1.constructorid, 
  races_1.time, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where constructors_1.name is not NULL
limit 17;
select  
  circuits_1.circuitref, 
  standings_1.date
from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    inner join drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where drivers_1.driverref is not NULL
limit 34;
select  
  max(
    constructor_results_1.points), 
  constructor_results_1.points, 
  results_1.date, 
  max(
    results_1.fastestlap), 
  constructor_results_1.constructorresultsid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.rank is not NULL
group by constructor_results_1.points, results_1.date, constructor_results_1.constructorresultsid
limit 31;
select  
  drivers_1.surname, 
  standings_2.raceid
from 
  standings as standings_1
      inner join drivers as drivers_1
        inner join standings as standings_2
        on (drivers_1.driverid = standings_2.driverstandingsid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join constructor_results as constructor_results_1
      inner join drivers as drivers_2
      on (constructor_results_1.constructorresultsid = drivers_2.driverid )
    on (standings_2.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.raceid is not NULL
limit 18;
select  
  races_1.raceid, 
  avg(
    races_1.raceid), 
  races_1.raceid, 
  races_1.name, 
  races_1.round
from 
  races as races_1
where races_1.time is not NULL
group by races_1.raceid, races_1.raceid, races_1.name, races_1.round
limit 27;
select  
  circuits_1.country, 
  constructor_standings_1.position, 
  circuits_1.alt, 
  circuits_1.alt, 
  constructor_standings_1.constructorstandingsid, 
  standings_1.wins, 
  constructor_standings_1.wins, 
  circuits_1.circuitref, 
  count(*), 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.country, 
  standings_1.position, 
  constructor_standings_1.wins, 
  standings_1.wins, 
  constructor_standings_1.position
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where constructor_standings_1.points is not NULL
group by circuits_1.country, constructor_standings_1.position, circuits_1.alt, circuits_1.alt, constructor_standings_1.constructorstandingsid, standings_1.wins, constructor_standings_1.wins, circuits_1.circuitref, circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.country, standings_1.position, constructor_standings_1.wins, standings_1.wins, constructor_standings_1.position
limit 33;
select  
  max(
    results_1.date)
from 
  results as results_1
where results_1.date <= results_1.date
limit 22;
select  
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.forename, 
  count(
    drivers_1.code), 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.dob, 
  min(
    drivers_1.surname)
from 
  drivers as drivers_1
where drivers_1.driverref > drivers_1.nationality
group by drivers_1.code, drivers_1.surname, drivers_1.forename, drivers_1.forename, drivers_1.driverid, drivers_1.dob
limit 23;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  max(
    circuits_1.lng), 
  max(
    qualifying_1.date), 
  circuits_1.lat, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.circuitref is not NULL
group by qualifying_1.constructorid, qualifying_1.constructorid, circuits_1.lat, circuits_1.circuitref
limit 23;
select  
  constructor_standings_1.constructorstandingsid, 
  constructors_1.name, 
  constructors_1.name, 
  standings_1.points, 
  constructors_1.constructorref, 
  standings_1.driverstandingsid, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
    inner join constructors as constructors_1
          inner join standings as standings_1
          on (constructors_1.constructorid = standings_1.driverstandingsid )
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (races_1.raceid = constructors_1.constructorid )
where standings_2.points is not NULL
limit 37;
select  
  results_1.driverid, 
  sum(
    results_1.resultid), 
  circuits_1.location, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitref is not NULL
group by results_1.driverid, circuits_1.location, circuits_1.circuitid
limit 24;
select  
  standings_1.raceid, 
  constructor_standings_1.wins, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.date, 
  count(
    constructor_standings_1.wins)
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.raceid is not NULL
group by standings_1.raceid, constructor_standings_1.wins, standings_1.driverid, standings_1.date, standings_1.date
limit 20;
select  
  count(*), 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.position, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.driverid, qualifying_1.qualifyid
limit 4;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  count(
    constructors_1.constructorref), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref
limit 12;
select  
  constructor_standings_1.position, 
  min(
    standings_3.date), 
  drivers_1.driverref, 
  count(*), 
  standings_3.points, 
  races_1.circuitid, 
  standings_3.driverid
from 
  races as races_1
    inner join standings as standings_1
          inner join drivers as drivers_1
          on (standings_1.driverstandingsid = drivers_1.driverid )
        inner join standings as standings_2
          inner join constructor_standings as constructor_standings_1
          on (standings_2.driverstandingsid = constructor_standings_1.constructorstandingsid )
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join standings as standings_3
      on (constructor_standings_1.constructorstandingsid = standings_3.driverstandingsid )
    on (races_1.raceid = standings_2.driverstandingsid )
where races_1.date <= drivers_1.dob
group by constructor_standings_1.position, drivers_1.driverref, standings_3.points, races_1.circuitid, standings_3.driverid
limit 24;
select  
  standings_1.driverstandingsid, 
  min(
    standings_1.points)
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverstandingsid
limit 34;
select  
  avg(
    constructor_results_1.points), 
  circuits_1.circuitid, 
  constructor_results_1.raceid, 
  circuits_1.circuitid, 
  constructor_results_1.constructorresultsid, 
  circuits_1.circuitid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.lat is not NULL
group by circuits_1.circuitid, constructor_results_1.raceid, circuits_1.circuitid, constructor_results_1.constructorresultsid, circuits_1.circuitid
limit 25;
select  
  constructors_1.constructorref, 
  min(
    constructors_1.nationality), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 40;
select  
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  sum(
    qualifying_1.position)
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.qualifyid, qualifying_1.raceid
limit 16;
select  
  results_1.constructorid, 
  results_1.statusid, 
  results_1.positionorder, 
  results_1.positionorder, 
  results_1.date, 
  results_1.rank, 
  results_1.date, 
  results_1.laps, 
  results_1.number
from 
  results as results_1
where results_1.grid is not NULL
limit 12;
select  
  sum(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.nationality, drivers_1.nationality
limit 30;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.date
limit 27;
select  
  max(
    standings_2.date), 
  results_1.resultid
from 
  standings as standings_1
    inner join results as results_1
      inner join standings as standings_2
      on (results_1.resultid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where results_1.raceid is not NULL
group by results_1.resultid
limit 21;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points >= constructor_results_1.points
limit 41;
select  
  races_1.raceid, 
  races_1.circuitid, 
  races_1.year, 
  races_1.name, 
  min(
    races_1.circuitid), 
  races_1.date, 
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.raceid, races_1.circuitid, races_1.year, races_1.name, races_1.date, races_1.date
limit 7;
select  
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 27;
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 14;
select  
  constructors_1.name, 
  constructors_2.name, 
  results_1.laps, 
  constructors_2.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join results as results_1
      inner join constructors as constructors_2
      on (results_1.resultid = constructors_2.constructorid )
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.name is not NULL
limit 21;
select  
  circuits_1.circuitref, 
  qualifying_1.date, 
  circuits_1.name, 
  circuits_1.circuitref, 
  sum(
    qualifying_1.qualifyid), 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
group by circuits_1.circuitref, qualifying_1.date, circuits_1.name, circuits_1.circuitref, circuits_1.circuitid
limit 19;
select  
  standings_1.driverid, 
  standings_1.date
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
limit 14;
select  
  races_1.year, 
  circuits_1.lng, 
  min(
    results_1.date), 
  results_1.resultid, 
  constructor_results_2.date, 
  races_1.circuitid, 
  constructors_1.nationality, 
  constructor_results_2.constructorid
from 
  results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
          inner join races as races_1
            inner join constructor_results as constructor_results_2
            on (races_1.raceid = constructor_results_2.constructorresultsid )
          on (constructor_results_1.constructorresultsid = races_1.raceid )
        on (circuits_1.circuitid = races_1.raceid )
      inner join circuits as circuits_2
      on (constructor_results_2.constructorresultsid = circuits_2.circuitid )
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where races_1.raceid is not NULL
group by races_1.year, circuits_1.lng, results_1.resultid, constructor_results_2.date, races_1.circuitid, constructors_1.nationality, constructor_results_2.constructorid
limit 8;
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 22;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  count(*), 
  min(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.name
limit 41;
select  
  races_1.time, 
  races_1.round, 
  races_1.round, 
  constructors_1.nationality
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.nationality < races_1.name
limit 5;
select  
  circuits_1.name, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 20;
select  
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  max(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid
limit 42;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
group by constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.date
limit 39;
select  
  results_1.positionorder, 
  results_1.number, 
  results_1.grid, 
  results_1.date, 
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.number
from 
  results as results_1
where results_1.date is not NULL
limit 34;
select  
  qualifying_1.constructorid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 1;
select  
  standings_1.wins, 
  min(
    standings_1.date), 
  avg(
    standings_1.points), 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.wins = standings_1.position
group by standings_1.wins, standings_1.date, standings_1.raceid
limit 21;
select  
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 24;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 36;
select  
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
limit 23;
select  
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 1;
select  
  results_1.resultid, 
  count(*), 
  results_1.number, 
  results_1.points, 
  results_1.grid, 
  results_1.rank, 
  results_1.grid, 
  results_1.raceid, 
  results_1.constructorid
from 
  results as results_1
where results_1.date is not NULL
group by results_1.resultid, results_1.number, results_1.points, results_1.grid, results_1.rank, results_1.grid, results_1.raceid, results_1.constructorid
limit 39;
select  
  min(
    standings_1.date), 
  min(
    qualifying_1.date)
from 
  races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.position is not NULL
limit 15;
select  
  max(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.raceid, standings_1.points
limit 16;
select  
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  standings_1.wins, 
  max(
    standings_1.date), 
  standings_1.wins, 
  max(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  standings_1.date
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
group by qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, standings_1.wins, standings_1.wins, standings_1.driverid, standings_1.date, standings_1.wins, standings_1.date, qualifying_1.constructorid, qualifying_1.qualifyid, standings_1.date
limit 22;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid >= constructor_standings_1.position
limit 28;
select  
  circuits_1.country, 
  constructor_results_1.date, 
  circuits_1.lng, 
  min(
    races_1.time), 
  constructor_results_1.points
from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where races_1.date is not NULL
group by circuits_1.country, constructor_results_1.date, circuits_1.lng, constructor_results_1.points
limit 14;
select  
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lng <= circuits_1.alt
limit 24;
select  
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
limit 18;
select  
  avg(
    results_1.number), 
  count(
    standings_1.date), 
  results_1.resultid
from 
  results as results_1
      inner join races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      on (results_1.resultid = races_1.raceid )
    inner join standings as standings_2
    on (results_1.resultid = standings_2.driverstandingsid )
where standings_1.date is not NULL
group by results_1.resultid
limit 25;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 31;
select  
  standings_1.position, 
  standings_1.points, 
  standings_1.driverid, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  standings_1.position
from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.alt is not NULL
limit 24;
select  
  standings_1.points, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  sum(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.points, standings_1.date, standings_1.driverid, standings_1.points, standings_1.driverstandingsid, standings_1.raceid, standings_1.position, standings_1.raceid, standings_1.date
limit 9;
select  
  results_1.points, 
  sum(
    results_1.driverid)
from 
  results as results_1
where results_1.date is not NULL
group by results_1.points
limit 6;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 17;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 31;
select  
  races_1.raceid, 
  races_1.raceid, 
  races_1.round, 
  races_1.year, 
  min(
    races_1.name), 
  max(
    races_1.date)
from 
  races as races_1
where races_1.date <= races_1.date
group by races_1.raceid, races_1.raceid, races_1.round, races_1.year
limit 27;
select  
  races_2.round, 
  races_2.time, 
  races_1.raceid, 
  constructor_results_1.constructorresultsid, 
  races_1.raceid, 
  count(
    constructor_results_1.raceid), 
  circuits_1.circuitref, 
  races_1.raceid
from 
  races as races_1
    inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      inner join races as races_2
      on (constructor_results_1.constructorresultsid = races_2.raceid )
    on (races_1.raceid = races_2.raceid )
where races_2.time is not NULL
group by races_2.round, races_2.time, races_1.raceid, constructor_results_1.constructorresultsid, races_1.raceid, circuits_1.circuitref, races_1.raceid
limit 23;
select  
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 32;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 2;
select  
  avg(
    results_1.driverid), 
  results_1.statusid
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.statusid
limit 2;
select  
  constructors_1.constructorid, 
  max(
    constructors_1.name), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  qualifying_1.position, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.date = qualifying_1.date
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, qualifying_1.position, constructors_1.nationality, constructors_1.constructorid
limit 38;
select  
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 30;
select  
  constructor_standings_2.position, 
  constructors_2.constructorid
from 
  constructors as constructors_1
      inner join drivers as drivers_1
        inner join races as races_1
            inner join drivers as drivers_2
            on (races_1.raceid = drivers_2.driverid )
          inner join constructor_results as constructor_results_1
            inner join results as results_1
            on (constructor_results_1.constructorresultsid = results_1.resultid )
          on (drivers_2.driverid = results_1.resultid )
        on (drivers_1.driverid = drivers_2.driverid )
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
        inner join races as races_2
          inner join constructors as constructors_2
          on (races_2.raceid = constructors_2.constructorid )
        on (constructor_standings_2.constructorstandingsid = races_2.raceid )
      on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
    on (races_1.raceid = races_2.raceid )
where races_2.name > drivers_1.driverref
limit 17;
select  
  constructor_standings_1.position, 
  constructors_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_1.date <= constructor_standings_1.date
limit 12;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid > constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 32;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 30;
select  
  races_1.year, 
  races_1.name, 
  races_1.year, 
  races_1.round, 
  max(
    races_1.round), 
  races_1.raceid
from 
  races as races_1
where races_1.time is not NULL
group by races_1.year, races_1.name, races_1.year, races_1.round, races_1.raceid
limit 7;
select  
  min(
    constructor_results_1.points), 
  circuits_1.lat, 
  max(
    drivers_1.driverid), 
  circuits_1.lng, 
  constructor_results_1.points, 
  count(
    circuits_1.lat), 
  drivers_1.code
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.location is not NULL
group by circuits_1.lat, circuits_1.lng, constructor_results_1.points, drivers_1.code
limit 29;
select  
  constructor_results_1.date, 
  sum(
    constructor_results_1.points), 
  drivers_3.driverid
from 
  drivers as drivers_1
      inner join drivers as drivers_2
        inner join drivers as drivers_3
        on (drivers_2.driverid = drivers_3.driverid )
      on (drivers_1.driverid = drivers_2.driverid )
    inner join constructor_results as constructor_results_1
    on (drivers_3.driverid = constructor_results_1.constructorresultsid )
where drivers_3.dob = constructor_results_1.date
group by constructor_results_1.date, drivers_3.driverid
limit 38;
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.lng, 
  sum(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.location, 
  max(
    circuits_1.alt), 
  circuits_1.lng, 
  max(
    circuits_1.alt), 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.location, circuits_1.lng, circuits_1.circuitref, circuits_1.alt, circuits_1.circuitref, circuits_1.location, circuits_1.circuitid, circuits_1.alt, circuits_1.lat, circuits_1.country, circuits_1.location, circuits_1.lng, circuits_1.circuitid, circuits_1.circuitid, circuits_1.alt, circuits_1.location, circuits_1.lat, circuits_1.lat, circuits_1.location, circuits_1.alt
limit 27;
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 31;
select  
  standings_1.position, 
  qualifying_2.qualifyid, 
  standings_1.date, 
  constructors_1.constructorref
from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
        inner join constructors as constructors_1
        on (qualifying_2.qualifyid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join standings as standings_1
        inner join constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
      on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
    on (qualifying_2.qualifyid = constructor_standings_1.constructorstandingsid )
where constructors_1.constructorid is not NULL
limit 42;
select  
  races_1.name
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.name is not NULL
limit 14;
select  
  results_1.points, 
  results_1.raceid, 
  results_1.points, 
  results_1.number, 
  results_1.raceid, 
  results_1.raceid, 
  results_1.resultid, 
  results_1.resultid, 
  results_1.driverid, 
  results_1.raceid, 
  results_1.rank, 
  results_1.positionorder, 
  results_1.positionorder, 
  results_1.position, 
  results_1.points, 
  results_1.date, 
  results_1.position, 
  results_1.constructorid
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 29;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points
limit 33;
select  
  standings_1.position, 
  standings_1.date
from 
  standings as standings_1
where standings_1.position is not NULL
limit 9;
select  
  drivers_1.driverid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  circuits_1.lat, 
  drivers_1.nationality, 
  constructor_results_1.date, 
  circuits_1.circuitid
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_2
      on (drivers_1.driverid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorresultsid is not NULL
limit 8;
select  
  circuits_1.circuitid, 
  circuits_1.location, 
  max(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.alt, 
  count(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.name, 
  avg(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitid, circuits_1.location, circuits_1.lng, circuits_1.circuitid, circuits_1.alt, circuits_1.lng, circuits_1.lat, circuits_1.circuitref, circuits_1.circuitid, circuits_1.circuitid, circuits_1.alt, circuits_1.lng, circuits_1.name, circuits_1.location, circuits_1.alt, circuits_1.country, circuits_1.alt, circuits_1.name, circuits_1.lat, circuits_1.circuitid, circuits_1.circuitid
limit 6;
select  
  avg(
    constructor_results_1.points), 
  circuits_1.location, 
  constructor_results_1.constructorid, 
  count(
    circuits_1.location), 
  circuits_1.alt, 
  max(
    constructor_results_1.date), 
  circuits_1.circuitid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  circuits_1.country, 
  circuits_1.circuitref
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.raceid is not NULL
group by circuits_1.location, constructor_results_1.constructorid, circuits_1.alt, circuits_1.circuitid, constructor_results_1.constructorid, constructor_results_1.points, circuits_1.country, circuits_1.circuitref
limit 38;
select  
  results_1.driverid, 
  max(
    drivers_1.driverref), 
  drivers_1.forename, 
  drivers_1.forename, 
  min(
    results_1.resultid)
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by results_1.driverid, drivers_1.forename, drivers_1.forename
limit 24;
select  
  drivers_1.driverref, 
  drivers_2.forename, 
  drivers_2.forename, 
  drivers_2.driverid, 
  drivers_2.code, 
  results_1.raceid
from 
  results as results_1
          inner join drivers as drivers_1
          on (results_1.resultid = drivers_1.driverid )
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join drivers as drivers_2
      inner join standings as standings_2
      on (drivers_2.driverid = standings_2.driverstandingsid )
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_1.code < circuits_1.location
limit 9;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  drivers_1.nationality, 
  constructors_1.nationality, 
  drivers_1.code, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.circuitid is not NULL
limit 5;
select  
  standings_1.driverid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.raceid), 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by standings_1.driverid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 31;
select  
  qualifying_1.date
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
limit 20;
select  
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 17;
select  
  constructor_results_1.date, 
  constructor_standings_1.wins, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, constructor_standings_1.wins, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 12;
select  
  races_2.time, 
  max(
    results_1.position), 
  results_1.date
from 
  races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.raceid is not NULL
group by races_2.time, results_1.date
limit 20;
select  
  results_1.milliseconds, 
  max(
    results_1.date), 
  results_1.fastestlap, 
  results_1.fastestlap
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.milliseconds, results_1.fastestlap, results_1.fastestlap
limit 25;
select  
  min(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 16;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid
limit 6;
select  
  circuits_1.lat, 
  count(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.lat
limit 37;
select  
  count(*), 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.dob, 
  min(
    drivers_1.surname), 
  max(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.driverid, drivers_1.forename, drivers_1.dob, drivers_1.code, drivers_1.forename, drivers_1.dob, drivers_1.forename, drivers_1.code
limit 19;
select  
  constructors_1.name
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorid is not NULL
limit 30;
select  
  standings_1.raceid, 
  min(
    drivers_1.nationality), 
  qualifying_1.number, 
  min(
    drivers_1.code), 
  qualifying_1.constructorid, 
  drivers_1.nationality, 
  qualifying_1.number, 
  count(
    drivers_1.surname), 
  qualifying_1.position, 
  standings_1.date, 
  drivers_1.code, 
  results_1.number, 
  results_1.raceid, 
  max(
    drivers_1.driverref), 
  max(
    qualifying_1.date), 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.nationality, 
  max(
    results_1.milliseconds), 
  drivers_1.driverref, 
  drivers_1.driverid, 
  max(
    qualifying_1.date), 
  drivers_1.surname, 
  standings_1.wins, 
  qualifying_1.date
from 
  standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.driverstandingsid = drivers_1.driverid )
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where standings_1.position is not NULL
group by standings_1.raceid, qualifying_1.number, qualifying_1.constructorid, drivers_1.nationality, qualifying_1.number, qualifying_1.position, standings_1.date, drivers_1.code, results_1.number, results_1.raceid, drivers_1.dob, drivers_1.surname, drivers_1.nationality, drivers_1.driverref, drivers_1.driverid, drivers_1.surname, standings_1.wins, qualifying_1.date
limit 19;
select  
  constructor_standings_1.points, 
  min(
    standings_1.date), 
  races_1.name, 
  constructor_standings_1.wins, 
  races_1.year, 
  races_1.year
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.circuitid is not NULL
group by constructor_standings_1.points, races_1.name, constructor_standings_1.wins, races_1.year, races_1.year
limit 40;
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
limit 19;
select  
  drivers_1.dob, 
  drivers_1.code, 
  constructor_results_1.raceid, 
  drivers_1.forename, 
  constructor_results_1.date, 
  races_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  races_1.circuitid, 
  races_1.date
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where drivers_1.driverid is not NULL
limit 27;
select  
  races_1.time, 
  races_1.name, 
  count(*)
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.time, races_1.name
limit 18;
select  
  circuits_1.name
from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      on (constructor_standings_2.constructorstandingsid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_2.position is not NULL
limit 3;
select  
  qualifying_2.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.date is not NULL
limit 26;
select  
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  count(*), 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.position
from 
  standings as standings_1
where standings_1.date = standings_1.date
group by standings_1.driverstandingsid, standings_1.date, standings_1.driverstandingsid, standings_1.driverid, standings_1.driverid, standings_1.raceid, standings_1.driverstandingsid, standings_1.date, standings_1.position, standings_1.position
limit 14;
select  
  constructors_1.name, 
  results_1.laps, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.position = results_1.fastestlap
limit 27;
select  
  constructor_standings_2.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.position, 
  constructor_standings_2.position, 
  constructor_standings_1.position, 
  min(
    races_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
        inner join constructor_standings as constructor_standings_2
        on (races_1.raceid = constructor_standings_2.constructorstandingsid )
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where races_1.time is not NULL
group by constructor_standings_2.position, constructor_standings_1.constructorid, constructor_standings_2.position, constructor_standings_2.position, constructor_standings_1.position
limit 34;
select distinct 
  count(*), 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.date
limit 34;
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 28;
select  
  races_1.date
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
limit 6;
select  
  results_1.positionorder, 
  constructors_1.constructorid, 
  results_1.raceid, 
  results_1.driverid, 
  results_1.raceid, 
  results_1.date
from 
  drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.code < drivers_1.driverref
limit 4;
select  
  races_1.time
from 
  races as races_1
where races_1.round is not NULL
limit 8;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 35;
select  
  constructor_results_2.constructorid, 
  constructors_2.constructorid, 
  constructors_1.constructorid, 
  constructor_results_2.constructorid, 
  constructor_results_1.date
from 
  constructors as constructors_1
          inner join constructor_results as constructor_results_1
          on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where circuits_1.location is not NULL
limit 12;
select  
  races_1.name, 
  races_1.raceid
from 
  races as races_1
where races_1.year is not NULL
limit 25;
select  
  results_1.date, 
  circuits_2.lat, 
  circuits_2.alt, 
  constructors_1.name, 
  max(
    qualifying_1.number), 
  constructors_1.constructorid, 
  results_1.driverid, 
  max(
    circuits_2.lat), 
  circuits_1.lat, 
  qualifying_1.raceid, 
  constructors_1.constructorref, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  circuits_1.circuitid
from 
  results as results_1
      inner join constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      on (results_1.resultid = constructors_1.constructorid )
    inner join circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    on (results_1.resultid = circuits_1.circuitid )
where circuits_2.alt is not NULL
group by results_1.date, circuits_2.lat, circuits_2.alt, constructors_1.name, constructors_1.constructorid, results_1.driverid, circuits_1.lat, qualifying_1.raceid, constructors_1.constructorref, qualifying_1.number, qualifying_1.constructorid, circuits_1.circuitid
limit 7;
select  
  circuits_1.lng
from 
  races as races_1
    inner join circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where races_1.year is not NULL
limit 33;
select  
  races_1.name, 
  circuits_1.name, 
  constructor_results_2.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (races_1.raceid = circuits_1.circuitid )
where races_1.circuitid is not NULL
limit 8;
select  
  max(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename
limit 34;
select  
  drivers_1.surname, 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.surname, drivers_1.code, drivers_1.dob, drivers_1.nationality, drivers_1.driverref
limit 34;
select  
  races_1.raceid, 
  standings_1.position, 
  standings_1.driverid, 
  races_1.raceid, 
  races_1.time, 
  min(
    races_1.time), 
  max(
    races_1.date)
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.driverstandingsid < standings_1.driverid
group by races_1.raceid, standings_1.position, standings_1.driverid, races_1.raceid, races_1.time
limit 34;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  min(
    constructors_1.nationality), 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid
limit 21;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.position is not NULL
limit 21;
select  
  min(
    constructor_standings_1.position), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.raceid), 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.position
limit 19;
select distinct 
  drivers_1.nationality, 
  races_1.year, 
  constructor_standings_1.points, 
  constructor_results_1.raceid, 
  constructor_standings_1.date
from 
  constructor_results as constructor_results_1
    inner join races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where races_1.round <= constructor_results_1.constructorresultsid
limit 10;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 40;
select  
  sum(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 37;
select  
  circuits_1.name, 
  max(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  circuits_1.name, 
  constructors_1.constructorid, 
  circuits_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.location, 
  min(
    circuits_1.location), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitid = constructors_1.constructorid
group by circuits_1.name, constructors_1.nationality, constructors_1.constructorid, circuits_1.name, constructors_1.constructorid, circuits_1.name, constructors_1.constructorref, constructors_1.name, circuits_1.name, circuits_1.location, circuits_1.location, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref
limit 41;
select  
  min(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 17;
select  
  sum(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date
limit 28;
select  
  results_1.date, 
  results_1.laps, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorref is not NULL
limit 4;
select  
  standings_1.date, 
  standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  standings_1.driverstandingsid, 
  circuits_1.alt
from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.alt = circuits_1.lat
limit 36;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 13;
select  
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  sum(
    circuits_1.lat), 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitref, circuits_1.circuitid, circuits_1.circuitid, circuits_1.name
limit 30;
select  
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points <= standings_1.points
limit 13;
select  
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.laps
from 
  results as results_1
where results_1.raceid is not NULL
limit 5;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 28;
select  
  avg(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 12;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 35;
select  
  qualifying_1.constructorid, 
  results_1.fastestlap, 
  results_1.resultid, 
  count(
    circuits_2.circuitref)
from 
  constructor_results as constructor_results_1
      inner join results as results_1
        inner join circuits as circuits_1
          inner join circuits as circuits_2
          on (circuits_1.circuitid = circuits_2.circuitid )
        on (results_1.resultid = circuits_1.circuitid )
      on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
    inner join qualifying as qualifying_1
    on (circuits_2.circuitid = qualifying_1.qualifyid )
where constructor_results_1.constructorid = results_1.laps
group by qualifying_1.constructorid, results_1.fastestlap, results_1.resultid
limit 39;
select  
  standings_1.date
from 
  drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.driverref >= drivers_1.surname
limit 18;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date >= constructor_results_1.date
limit 2;
select  
  constructor_standings_2.position, 
  standings_1.date, 
  max(
    constructors_1.name), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructor_standings_1.raceid, 
  races_1.date, 
  sum(
    constructor_standings_1.position), 
  races_1.name, 
  standings_1.driverstandingsid, 
  constructors_1.nationality, 
  standings_1.wins
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
        inner join constructors as constructors_1
        on (constructor_standings_2.constructorstandingsid = constructors_1.constructorid )
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    on (constructor_standings_2.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.date > constructor_standings_2.date
group by constructor_standings_2.position, standings_1.date, constructors_1.constructorid, constructors_1.constructorref, constructor_standings_1.raceid, races_1.date, races_1.name, standings_1.driverstandingsid, constructors_1.nationality, standings_1.wins
limit 23;
select  
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.wins, 
  count(*), 
  count(*), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  count(*)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.date
limit 38;
select  
  circuits_1.circuitref, 
  min(
    constructor_results_1.date)
from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where races_1.time is not NULL
group by circuits_1.circuitref
limit 21;
select  
  circuits_1.country, 
  circuits_1.location, 
  drivers_1.dob, 
  circuits_1.circuitid, 
  max(
    drivers_1.dob), 
  circuits_1.lat, 
  drivers_1.code, 
  circuits_1.country
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.country >= drivers_1.nationality
group by circuits_1.country, circuits_1.location, drivers_1.dob, circuits_1.circuitid, circuits_1.lat, drivers_1.code, circuits_1.country
limit 39;
select  
  constructor_results_1.date, 
  sum(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date
limit 20;
select  
  results_1.constructorid, 
  results_1.number, 
  results_1.date, 
  results_1.constructorid
from 
  results as results_1
where results_1.position is not NULL
limit 36;
select  
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 8;
select  
  standings_1.position, 
  standings_1.position, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.constructorid = qualifying_1.raceid
limit 41;
select  
  max(
    circuits_1.country), 
  circuits_1.alt, 
  circuits_1.location, 
  max(
    circuits_1.circuitref), 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  max(
    circuits_1.circuitref)
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.location, circuits_1.lat, circuits_1.alt, circuits_1.lng, circuits_1.country, circuits_1.lat, circuits_1.circuitref
limit 38;
select  
  constructor_standings_1.constructorid, 
  max(
    drivers_1.dob), 
  sum(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructors_1.nationality, 
  drivers_1.nationality
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.qualifyid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructor_standings_1.date = qualifying_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid, constructors_1.nationality, drivers_1.nationality
limit 32;
select  
  standings_1.points, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.raceid, 
  qualifying_1.driverid, 
  standings_1.raceid, 
  avg(
    qualifying_1.constructorid), 
  avg(
    standings_1.position), 
  standings_1.date, 
  count(*)
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.raceid = standings_1.position
group by standings_1.points, standings_1.points, standings_1.raceid, standings_1.points, standings_1.driverid, standings_1.raceid, qualifying_1.driverid, standings_1.raceid, standings_1.date
limit 7;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 28;
select  
  min(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.driverstandingsid = standings_1.driverid
group by standings_1.driverid, standings_1.position
limit 10;
select  
  constructors_2.constructorid, 
  results_1.date
from 
  constructor_standings as constructor_standings_1
        inner join results as results_1
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where results_1.date <= constructor_standings_1.date
limit 42;
select  
  races_1.raceid, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.time is not NULL
limit 5;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 21;
select  
  max(
    races_1.name)
from 
  races as races_1
where races_1.year is not NULL
limit 2;
select  
  avg(
    results_1.fastestlap), 
  min(
    standings_1.date)
from 
  results as results_1
    inner join standings as standings_1
      inner join results as results_2
      on (standings_1.driverstandingsid = results_2.resultid )
    on (results_1.resultid = results_2.resultid )
where results_1.position is not NULL
limit 28;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid < constructor_results_1.constructorresultsid
limit 33;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 10;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorref)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name, constructors_1.constructorid
limit 35;
select  
  constructors_1.constructorid, 
  circuits_2.circuitid, 
  circuits_1.circuitid, 
  sum(
    constructor_standings_1.points)
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_2
          inner join constructor_standings as constructor_standings_1
          on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = circuits_2.circuitid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructors_1.constructorid, circuits_2.circuitid, circuits_1.circuitid
limit 11;
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
group by constructors_1.nationality
limit 36;
select  
  races_1.raceid
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where standings_1.driverid is not NULL
limit 41;
select  
  results_1.resultid, 
  results_1.positionorder, 
  results_1.points, 
  races_1.year
from 
  races as races_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join races as races_2
    on (results_1.resultid = races_2.raceid )
where results_1.milliseconds is not NULL
limit 8;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 32;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 24;
select  
  results_1.number, 
  results_1.date, 
  max(
    results_1.date), 
  results_1.milliseconds
from 
  results as results_1
where results_1.number is not NULL
group by results_1.number, results_1.date, results_1.milliseconds
limit 7;
select  
  results_1.statusid
from 
  results as results_1
where results_1.points is not NULL
limit 33;
select  
  count(
    constructors_1.nationality), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref
limit 34;
select  
  races_1.time, 
  min(
    races_1.round), 
  min(
    races_1.date)
from 
  races as races_1
where races_1.name >= races_1.time
group by races_1.time
limit 27;
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  drivers_1.surname, 
  standings_1.points, 
  drivers_1.dob, 
  standings_1.position, 
  drivers_1.forename, 
  max(
    constructor_standings_1.points), 
  drivers_1.forename
from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where drivers_1.surname > drivers_1.driverref
group by drivers_1.nationality, drivers_1.dob, standings_1.driverstandingsid, standings_1.raceid, drivers_1.surname, standings_1.points, drivers_1.dob, standings_1.position, drivers_1.forename, drivers_1.forename
limit 6;
select  
  circuits_1.alt, 
  qualifying_1.constructorid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      inner join constructor_standings as constructor_standings_1
          inner join races as races_1
          on (constructor_standings_1.constructorstandingsid = races_1.raceid )
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.forename is not NULL
limit 15;
select  
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 11;
select  
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  count(*)
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.forename, drivers_1.forename, drivers_1.driverref, drivers_1.driverid
limit 29;
select  
  races_1.date, 
  min(
    races_1.date), 
  min(
    races_1.date)
from 
  races as races_1
where races_1.date is not NULL
group by races_1.date
limit 21;
select  
  constructors_1.constructorref, 
  count(
    qualifying_1.raceid), 
  min(
    constructor_results_1.points), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  count(
    circuits_1.location), 
  circuits_1.lng
from 
  constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      inner join constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
    on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, circuits_1.lng
limit 40;
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.wins, 
  count(*), 
  sum(
    standings_1.driverid), 
  count(*)
from 
  standings as standings_1
where standings_1.date < standings_1.date
group by standings_1.date, standings_1.raceid, standings_1.date, standings_1.wins
limit 32;
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
limit 10;
select  
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.alt, 
  min(
    circuits_1.circuitref)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.country, circuits_1.name, circuits_1.location, circuits_1.alt
limit 15;
select  
  results_1.constructorid, 
  sum(
    results_1.milliseconds), 
  results_1.milliseconds, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.constructorid, results_1.milliseconds
limit 32;
select  
  drivers_1.surname, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.constructorid)
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.forename is not NULL
group by drivers_1.surname, constructor_results_1.constructorresultsid
limit 6;
select  
  circuits_1.circuitid, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 8;
select  
  results_1.points, 
  results_1.points
from 
  results as results_1
where results_1.number is not NULL
limit 37;
select  
  results_1.grid, 
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.driverid, 
  min(
    results_1.number), 
  count(*), 
  results_1.statusid, 
  results_1.position
from 
  results as results_1
where results_1.grid >= results_1.laps
group by results_1.grid, results_1.constructorid, results_1.constructorid, results_1.driverid, results_1.statusid, results_1.position
limit 20;
select  
  circuits_1.alt, 
  qualifying_1.driverid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.qualifyid is not NULL
limit 20;
select  
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.number, 
  sum(
    results_1.driverid), 
  results_1.points
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.fastestlap, results_1.milliseconds, results_1.raceid, results_1.milliseconds, results_1.resultid, results_1.number, results_1.points
limit 9;
select  
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 7;
select  
  circuits_1.country, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
        inner join results as results_1
        on (drivers_1.driverid = results_1.resultid )
      inner join constructor_results as constructor_results_1
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where circuits_1.name > drivers_1.driverref
limit 9;
select  
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverref, drivers_1.forename, drivers_1.surname, drivers_1.driverref, drivers_1.nationality, drivers_1.surname, drivers_1.dob, drivers_1.dob
limit 12;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  results_3.position, 
  qualifying_1.constructorid, 
  max(
    constructors_1.nationality), 
  constructors_1.constructorid, 
  results_3.resultid, 
  standings_1.points
from 
  results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join results as results_3
        inner join standings as standings_1
        on (results_3.resultid = standings_1.driverstandingsid )
      on (results_2.resultid = results_3.resultid )
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (results_2.resultid = constructors_1.constructorid )
where standings_1.date is not NULL
group by constructor_results_1.raceid, results_3.position, qualifying_1.constructorid, constructors_1.constructorid, results_3.resultid, standings_1.points
limit 25;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid > constructor_results_1.raceid
group by constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.points
limit 20;
select distinct 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 24;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  count(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality
limit 34;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 37;
select  
  circuits_1.country, 
  max(
    circuits_1.country), 
  circuits_1.alt, 
  constructor_results_2.raceid, 
  constructors_1.nationality, 
  max(
    circuits_1.lat), 
  constructor_results_2.raceid, 
  constructor_results_1.points, 
  constructors_1.constructorref, 
  circuits_1.circuitref
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
        inner join constructor_results as constructor_results_2
        on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
      inner join circuits as circuits_1
      on (constructor_results_2.constructorresultsid = circuits_1.circuitid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where circuits_1.lng < constructor_results_2.points
group by circuits_1.country, circuits_1.alt, constructor_results_2.raceid, constructors_1.nationality, constructor_results_2.raceid, constructor_results_1.points, constructors_1.constructorref, circuits_1.circuitref
limit 30;
select  
  standings_1.driverid, 
  min(
    standings_1.date), 
  standings_1.date, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid, standings_1.date, standings_1.raceid
limit 25;
select  
  circuits_1.circuitref, 
  drivers_1.driverid
from 
  qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join drivers as drivers_1
      inner join qualifying as qualifying_2
      on (drivers_1.driverid = qualifying_2.qualifyid )
    on (constructors_1.constructorid = drivers_1.driverid )
where qualifying_1.date < qualifying_2.date
limit 17;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 30;
select  
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
limit 30;
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 4;
select  
  max(
    races_1.date), 
  races_2.round, 
  races_1.round, 
  races_1.date, 
  races_1.time, 
  races_2.circuitid
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.time is not NULL
group by races_2.round, races_1.round, races_1.date, races_1.time, races_2.circuitid
limit 18;
select  
  drivers_1.nationality, 
  results_1.rank, 
  results_1.statusid, 
  results_1.rank, 
  drivers_1.forename, 
  min(
    drivers_1.nationality), 
  results_1.grid, 
  drivers_1.nationality, 
  results_1.points, 
  max(
    results_1.rank), 
  drivers_1.surname, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.dob < results_1.date
group by drivers_1.nationality, results_1.rank, results_1.statusid, results_1.rank, drivers_1.forename, results_1.grid, drivers_1.nationality, results_1.points, drivers_1.surname, drivers_1.forename
limit 12;
select  
  drivers_1.code, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_2
        on (constructors_1.constructorid = constructor_standings_2.constructorstandingsid )
      inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (results_1.resultid = circuits_1.circuitid )
where drivers_1.forename is not NULL
limit 13;
select  
  results_1.rank
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.positionorder is not NULL
limit 37;
select  
  constructors_1.constructorid
from 
  results as results_1
        inner join constructors as constructors_1
            inner join circuits as circuits_1
            on (constructors_1.constructorid = circuits_1.circuitid )
          inner join constructors as constructors_2
          on (constructors_1.constructorid = constructors_2.constructorid )
        on (results_1.resultid = constructors_2.constructorid )
      inner join circuits as circuits_2
      on (results_1.resultid = circuits_2.circuitid )
    inner join races as races_1
    on (constructors_2.constructorid = races_1.raceid )
where circuits_1.name <= races_1.name
limit 32;
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 18;
select  
  min(
    constructors_1.constructorref), 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name
limit 28;
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 14;
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
limit 11;
select  
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.constructorid
limit 17;
select  
  max(
    qualifying_1.date), 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid
limit 10;
select  
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 5;
select  
  races_1.time, 
  races_1.circuitid
from 
  races as races_1
where races_1.time > races_1.name
limit 39;
select  
  results_1.rank, 
  results_1.raceid, 
  results_1.rank, 
  results_1.date, 
  min(
    results_1.resultid)
from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.rank, results_1.raceid, results_1.rank, results_1.date
limit 6;
select distinct 
  circuits_1.lng, 
  standings_1.wins
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.location > circuits_1.circuitref
limit 31;
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.name < circuits_1.circuitref
limit 42;
select  
  results_1.positionorder, 
  min(
    results_1.date), 
  results_1.position
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.positionorder, results_1.position
limit 39;
select  
  results_1.number, 
  results_1.grid, 
  results_1.resultid, 
  results_1.grid, 
  results_1.constructorid, 
  results_1.driverid
from 
  results as results_1
where results_1.date < results_1.date
limit 16;
select  
  qualifying_1.position, 
  max(
    drivers_1.forename), 
  drivers_1.driverref, 
  drivers_1.code, 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
group by qualifying_1.position, drivers_1.driverref, drivers_1.code, qualifying_1.date, drivers_1.code
limit 24;
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  constructor_results_1.constructorresultsid, 
  standings_1.driverstandingsid, 
  constructor_results_1.date, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.position, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  standings_1.driverstandingsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  standings_1.driverid, 
  standings_1.raceid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.position is not NULL
limit 1;
select  
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 9;
select  
  count(
    standings_1.raceid), 
  standings_1.position
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.position
limit 37;
select  
  constructor_standings_1.raceid, 
  circuits_1.country, 
  circuits_1.circuitref, 
  results_1.raceid, 
  standings_1.points, 
  min(
    circuits_1.circuitref), 
  circuits_1.name, 
  races_1.round
from 
  results as results_1
        inner join races as races_1
        on (results_1.resultid = races_1.raceid )
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
      inner join races as races_2
      on (circuits_1.circuitid = races_2.raceid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where races_1.raceid is not NULL
group by constructor_standings_1.raceid, circuits_1.country, circuits_1.circuitref, results_1.raceid, standings_1.points, circuits_1.name, races_1.round
limit 33;
select  
  standings_1.wins, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  standings_1.position
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 27;
select  
  races_1.round, 
  results_1.constructorid, 
  races_1.time, 
  races_1.raceid, 
  races_1.raceid, 
  races_1.raceid, 
  results_1.constructorid, 
  races_1.circuitid
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.time >= races_1.name
limit 6;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  avg(
    constructor_standings_1.raceid), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.raceid
limit 6;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  count(
    constructor_standings_1.raceid), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid
limit 20;
select  
  count(
    constructor_standings_1.wins), 
  sum(
    qualifying_1.number), 
  min(
    constructor_standings_1.points), 
  qualifying_1.raceid, 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.points), 
  qualifying_1.date
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.date <= qualifying_1.date
group by qualifying_1.raceid, constructor_standings_1.position, qualifying_1.date
limit 9;
select distinct 
  qualifying_2.position, 
  standings_1.driverid, 
  circuits_1.circuitref, 
  max(
    drivers_1.nationality), 
  races_1.date
from 
  qualifying as qualifying_1
        inner join races as races_1
          inner join circuits as circuits_1
          on (races_1.raceid = circuits_1.circuitid )
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join standings as standings_1
      inner join qualifying as qualifying_2
      on (standings_1.driverstandingsid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where circuits_1.location < circuits_1.country
group by qualifying_2.position, standings_1.driverid, circuits_1.circuitref, races_1.date
limit 36;
select  
  standings_1.position, 
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.position is not NULL
limit 15;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 42;
select  
  avg(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.surname, 
  races_1.circuitid, 
  drivers_1.surname, 
  races_1.name, 
  races_1.time, 
  min(
    drivers_1.dob), 
  min(
    drivers_1.driverref)
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.nationality is not NULL
group by drivers_1.surname, drivers_1.surname, drivers_1.surname, races_1.circuitid, drivers_1.surname, races_1.name, races_1.time
limit 24;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 31;
select  
  results_1.rank, 
  results_1.constructorid, 
  results_1.points, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.position, 
  max(
    results_1.position), 
  results_1.positionorder
from 
  results as results_1
where results_1.number is not NULL
group by results_1.rank, results_1.constructorid, results_1.points, results_1.resultid, results_1.milliseconds, results_1.number, results_1.position, results_1.positionorder
limit 17;
select  
  qualifying_2.date, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_2.driverid, 
  qualifying_2.number, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_2.position, 
  qualifying_2.qualifyid, 
  qualifying_2.qualifyid
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.driverid is not NULL
group by qualifying_2.date, qualifying_1.date, qualifying_1.driverid, qualifying_2.driverid, qualifying_2.number, qualifying_1.number, qualifying_2.position, qualifying_2.qualifyid, qualifying_2.qualifyid
limit 29;
select  
  max(
    races_1.time), 
  min(
    races_1.date), 
  races_1.year, 
  races_1.year, 
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  races_1.name, 
  races_1.date, 
  races_1.round, 
  races_1.time
from 
  races as races_1
where races_1.name is not NULL
group by races_1.year, races_1.year, races_1.circuitid, races_1.date, races_1.round, races_1.name, races_1.date, races_1.round, races_1.time
limit 17;
select  
  count(
    races_1.date), 
  min(
    constructor_results_1.points), 
  min(
    qualifying_1.position)
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join races as races_1
        inner join constructors as constructors_1
        on (races_1.raceid = constructors_1.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.name <= constructors_1.name
limit 15;
select  
  results_1.grid, 
  results_1.position, 
  min(
    results_1.date), 
  results_1.number
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.grid, results_1.position, results_1.number
limit 34;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref
limit 18;
select  
  drivers_1.driverref, 
  min(
    drivers_1.driverref)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverref
limit 41;
select  
  max(
    drivers_1.driverref), 
  constructor_results_1.raceid
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
        inner join drivers as drivers_1
        on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.raceid is not NULL
group by constructor_results_1.raceid
limit 30;
select  
  results_1.number, 
  results_1.rank, 
  results_1.position, 
  results_1.resultid, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.date, 
  results_1.fastestlap, 
  results_1.positionorder
from 
  results as results_1
where results_1.constructorid is not NULL
limit 8;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 40;
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 37;
select distinct 
  races_1.round, 
  races_1.circuitid
from 
  races as races_1
where races_1.year is not NULL
limit 16;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.date), 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.raceid
limit 1;
select  
  max(
    qualifying_1.position), 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.qualifyid), 
  qualifying_1.raceid, 
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  sum(
    qualifying_1.raceid), 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.number, 
  avg(
    qualifying_1.raceid), 
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.date, qualifying_1.number, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.number, qualifying_1.position, qualifying_1.driverid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.number
limit 9;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverref, drivers_1.dob, drivers_1.surname, drivers_1.driverid, drivers_1.driverref, drivers_1.driverid, drivers_1.surname, drivers_1.dob, drivers_1.code, drivers_1.forename
limit 33;
select  
  standings_1.date, 
  standings_1.wins, 
  standings_2.driverstandingsid, 
  standings_2.wins, 
  standings_1.position, 
  standings_2.points
from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.raceid is not NULL
limit 29;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
limit 24;
select  
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.points, 
  min(
    standings_1.driverid), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.raceid, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins, standings_1.position, standings_1.points, standings_1.driverid
limit 5;
select  
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.wins, 
  avg(
    standings_1.points), 
  max(
    standings_1.points), 
  standings_1.driverstandingsid, 
  max(
    standings_1.position), 
  standings_1.driverid, 
  standings_1.position, 
  avg(
    standings_1.position), 
  standings_1.points, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverstandingsid, standings_1.position, standings_1.points, standings_1.wins, standings_1.driverstandingsid, standings_1.driverid, standings_1.position, standings_1.points, standings_1.position, standings_1.position, standings_1.driverid
limit 6;
select  
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join qualifying as qualifying_1
        inner join results as results_2
        on (qualifying_1.qualifyid = results_2.resultid )
      on (results_1.resultid = results_2.resultid )
    on (constructor_standings_1.constructorstandingsid = results_2.resultid )
where results_2.fastestlap is not NULL
limit 4;
select  
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 32;
select  
  races_1.date, 
  races_1.date, 
  races_1.year, 
  races_1.year, 
  races_1.raceid, 
  races_1.name, 
  races_1.year, 
  races_1.raceid, 
  races_1.year, 
  races_1.round, 
  races_1.year
from 
  races as races_1
where races_1.time is not NULL
limit 6;
select  
  circuits_1.alt, 
  results_1.date, 
  drivers_1.driverref, 
  races_1.time, 
  drivers_1.code, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join races as races_1
        inner join circuits as circuits_1
          inner join drivers as drivers_2
          on (circuits_1.circuitid = drivers_2.driverid )
        on (races_1.raceid = drivers_2.driverid )
      inner join results as results_1
      on (drivers_2.driverid = results_1.resultid )
    on (drivers_1.driverid = results_1.resultid )
where races_1.name >= drivers_1.driverref
limit 31;
select  
  races_1.time, 
  races_1.year, 
  count(*), 
  races_1.time, 
  races_1.time, 
  races_1.circuitid, 
  races_1.time, 
  races_1.year, 
  races_1.year, 
  races_1.name, 
  races_1.time, 
  races_1.circuitid, 
  races_1.year, 
  races_1.name, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.name, 
  races_1.round, 
  races_1.raceid, 
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.time, races_1.year, races_1.time, races_1.time, races_1.circuitid, races_1.time, races_1.year, races_1.year, races_1.name, races_1.time, races_1.circuitid, races_1.year, races_1.name, races_1.circuitid, races_1.circuitid, races_1.name, races_1.round, races_1.raceid, races_1.date
limit 18;
select  
  standings_1.driverstandingsid, 
  circuits_1.lng, 
  circuits_1.alt, 
  standings_1.position, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.position, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.circuitid is not NULL
limit 23;
select  
  constructor_results_2.points, 
  sum(
    results_1.fastestlap), 
  constructor_results_1.constructorid, 
  constructors_1.constructorref, 
  max(
    results_1.number), 
  constructor_results_2.date, 
  results_1.position, 
  results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructor_results_2.raceid, 
  constructors_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_2.constructorresultsid, 
  constructor_results_2.constructorresultsid, 
  constructors_1.name
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
        inner join results as results_1
        on (constructor_results_2.constructorresultsid = results_1.resultid )
      inner join constructors as constructors_1
      on (constructor_results_2.constructorresultsid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where results_1.resultid is not NULL
group by constructor_results_2.points, constructor_results_1.constructorid, constructors_1.constructorref, constructor_results_2.date, results_1.position, results_1.constructorid, constructor_results_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructor_results_2.raceid, constructors_1.constructorid, constructor_results_1.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.constructorresultsid, constructors_1.name
limit 32;
select  
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.constructorid), 
  qualifying_1.date, 
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
group by qualifying_1.number, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.number, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.number
limit 22;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.dob, 
  max(
    drivers_1.driverid), 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.driverid, drivers_1.dob, drivers_1.dob, drivers_1.driverref, drivers_1.code, drivers_1.driverid, drivers_1.driverref
limit 10;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 25;
select  
  standings_1.position, 
  min(
    standings_1.points), 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  max(
    standings_1.driverid), 
  standings_1.wins, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.position, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.date, standings_1.wins, standings_1.wins
limit 25;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 18;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 4;
select  
  constructors_1.constructorid, 
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.date, 
  max(
    races_1.time), 
  constructors_1.name, 
  races_1.time, 
  max(
    races_1.raceid), 
  constructors_1.nationality, 
  constructors_1.name
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.name < constructors_1.nationality
group by constructors_1.constructorid, races_1.circuitid, races_1.date, constructors_1.name, races_1.time, constructors_1.nationality, constructors_1.name
limit 39;
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 5;
select  
  constructor_standings_1.points, 
  max(
    races_1.name), 
  constructor_standings_1.points, 
  races_1.time, 
  races_1.year
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.points, constructor_standings_1.points, races_1.time, races_1.year
limit 30;
select  
  standings_1.driverid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverid, 
  count(*)
from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.driverid, standings_1.position, standings_1.raceid, standings_1.points, standings_1.driverstandingsid, standings_1.wins, standings_1.date, standings_1.wins, standings_1.driverid
limit 11;
select  
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.circuitid, 
  min(
    circuits_1.circuitref), 
  circuits_1.location, 
  avg(
    circuits_1.lng), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lat < circuits_1.lng
group by circuits_1.location, circuits_1.lat, circuits_1.lng, circuits_1.name, circuits_1.circuitid, circuits_1.location, circuits_1.name, circuits_1.circuitref, circuits_1.circuitref
limit 31;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
limit 7;
select  
  circuits_1.lng
from 
  circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join races as races_1
      on (circuits_2.circuitid = races_1.raceid )
    inner join drivers as drivers_1
    on (circuits_2.circuitid = drivers_1.driverid )
where races_1.raceid is not NULL
limit 29;
select  
  results_1.resultid, 
  results_1.position, 
  results_1.driverid, 
  results_1.points
from 
  results as results_1
where results_1.fastestlap is not NULL
limit 30;
select  
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid
limit 39;
select  
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.constructorid is not NULL
limit 12;
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.code
limit 2;
select  
  races_1.raceid
from 
  races as races_1
where races_1.year > races_1.round
limit 2;
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 34;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 6;
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.alt, 
  races_1.name
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.raceid <= races_1.round
limit 29;
select  
  max(
    constructors_1.name), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref
limit 4;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 39;
select  
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
limit 5;
select  
  races_1.name, 
  races_1.circuitid, 
  races_1.circuitid, 
  sum(
    races_1.year), 
  races_1.name
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.name, races_1.circuitid, races_1.circuitid, races_1.name
limit 7;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
limit 36;
select  
  drivers_1.driverid
from 
  constructors as constructors_1
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 7;
select  
  drivers_1.dob, 
  races_1.year, 
  max(
    drivers_1.forename), 
  drivers_1.forename, 
  drivers_1.forename
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.driverref is not NULL
group by drivers_1.dob, races_1.year, drivers_1.forename, drivers_1.forename
limit 21;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 5;
select  
  drivers_1.forename, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 13;
select  
  max(
    constructor_results_1.date)
from 
  drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where constructor_results_1.points is not NULL
limit 42;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  min(
    constructors_2.constructorid)
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid
limit 11;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorresultsid
limit 35;
select  
  results_1.milliseconds, 
  results_1.milliseconds
from 
  results as results_1
where results_1.driverid is not NULL
limit 2;
select  
  sum(
    standings_1.wins), 
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.wins, 
  results_1.laps, 
  results_1.constructorid, 
  standings_1.raceid, 
  results_1.grid, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  results_1.rank, 
  standings_1.date
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
group by standings_1.wins, standings_1.position, standings_1.driverid, standings_1.position, standings_1.wins, results_1.laps, results_1.constructorid, standings_1.raceid, results_1.grid, standings_1.driverstandingsid, standings_1.date, results_1.rank, standings_1.date
limit 3;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 21;
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 4;
select  
  max(
    drivers_3.driverref)
from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
        inner join drivers as drivers_2
        on (constructor_results_1.constructorresultsid = drivers_2.driverid )
      inner join drivers as drivers_3
      on (drivers_2.driverid = drivers_3.driverid )
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_3.driverref is not NULL
limit 24;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 29;
select  
  constructor_results_1.constructorid, 
  results_1.position, 
  constructor_results_1.constructorid, 
  results_1.grid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  results_1.constructorid, 
  results_1.constructorid, 
  min(
    results_1.milliseconds), 
  min(
    results_1.date), 
  constructor_results_1.points, 
  results_1.statusid, 
  results_1.laps, 
  results_1.raceid, 
  results_1.constructorid, 
  max(
    results_1.milliseconds), 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  results_1.statusid, 
  constructor_results_1.constructorid, 
  results_1.raceid, 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.points
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, results_1.position, constructor_results_1.constructorid, results_1.grid, constructor_results_1.constructorresultsid, constructor_results_1.points, results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorid, results_1.constructorid, results_1.constructorid, constructor_results_1.points, results_1.statusid, results_1.laps, results_1.raceid, results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorresultsid, results_1.statusid, constructor_results_1.constructorid, results_1.raceid, constructor_results_1.points
limit 24;
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.position is not NULL
limit 31;
select  
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  count(*), 
  drivers_1.code, 
  max(
    drivers_1.driverid), 
  max(
    drivers_1.code), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverref, drivers_1.code, drivers_1.code
limit 16;
select  
  constructors_1.constructorref, 
  max(
    constructors_1.name)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref
limit 40;
select  
  constructor_standings_1.points, 
  drivers_1.driverref, 
  constructor_results_1.points, 
  max(
    results_1.date), 
  results_1.constructorid, 
  results_1.driverid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  drivers_1.nationality
from 
  constructor_standings as constructor_standings_1
      inner join results as results_1
        inner join drivers as drivers_1
        on (results_1.resultid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points, drivers_1.driverref, constructor_results_1.points, results_1.constructorid, results_1.driverid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, drivers_1.nationality
limit 29;
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.constructorid, 
  min(
    circuits_1.circuitref), 
  max(
    constructor_standings_1.date), 
  constructor_results_1.constructorresultsid, 
  results_1.milliseconds, 
  constructor_results_1.constructorid, 
  circuits_1.lng, 
  constructor_standings_1.position, 
  circuits_1.lng
from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.raceid is not NULL
group by circuits_1.alt, circuits_1.circuitid, constructor_results_1.constructorid, constructor_standings_1.constructorid, constructor_results_1.constructorresultsid, results_1.milliseconds, constructor_results_1.constructorid, circuits_1.lng, constructor_standings_1.position, circuits_1.lng
limit 16;
select  
  circuits_1.country, 
  circuits_1.location, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 25;
select  
  sum(
    circuits_1.alt)
from 
  circuits as circuits_1
where circuits_1.alt < circuits_1.lat
limit 27;
select  
  constructors_1.nationality, 
  results_1.milliseconds, 
  min(
    results_1.date), 
  sum(
    results_1.raceid), 
  sum(
    results_1.constructorid)
from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join constructors as constructors_1
      inner join circuits as circuits_2
          inner join races as races_1
          on (circuits_2.circuitid = races_1.raceid )
        inner join results as results_1
        on (circuits_2.circuitid = results_1.resultid )
      on (constructors_1.constructorid = results_1.resultid )
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.code is not NULL
group by constructors_1.nationality, results_1.milliseconds
limit 41;
select  
  results_1.laps, 
  results_1.date
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.constructorid is not NULL
limit 9;
select  
  standings_1.raceid, 
  avg(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date > standings_1.date
group by standings_1.raceid
limit 14;
select  
  constructors_2.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructors_1.constructorid, 
  constructor_results_1.constructorid, 
  constructors_1.name, 
  avg(
    constructor_results_1.constructorid), 
  constructors_1.constructorref
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
where constructor_results_1.constructorresultsid is not NULL
group by constructors_2.constructorid, constructor_results_1.constructorid, constructor_results_1.points, constructors_1.constructorid, constructor_results_1.constructorid, constructors_1.name, constructors_1.constructorref
limit 28;
select  
  min(
    standings_1.date)
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.wins is not NULL
limit 9;
select  
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points), 
  qualifying_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  qualifying_1.raceid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
group by constructor_results_1.constructorid, qualifying_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, qualifying_1.raceid, constructor_results_1.constructorid
limit 12;
select  
  circuits_1.circuitid, 
  standings_1.driverid, 
  min(
    results_1.date), 
  circuits_2.lng, 
  circuits_2.circuitref, 
  results_1.number, 
  circuits_1.lat, 
  standings_1.raceid, 
  standings_1.points, 
  circuits_1.name, 
  results_1.constructorid, 
  circuits_2.lng, 
  sum(
    results_1.constructorid), 
  results_1.rank, 
  results_1.statusid
from 
  circuits as circuits_1
    inner join standings as standings_1
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      inner join circuits as circuits_2
      on (results_1.resultid = circuits_2.circuitid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where standings_1.driverstandingsid is not NULL
group by circuits_1.circuitid, standings_1.driverid, circuits_2.lng, circuits_2.circuitref, results_1.number, circuits_1.lat, standings_1.raceid, standings_1.points, circuits_1.name, results_1.constructorid, circuits_2.lng, results_1.rank, results_1.statusid
limit 23;
select  
  results_1.date, 
  results_1.statusid, 
  results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.milliseconds is not NULL
limit 9;
select  
  circuits_1.alt, 
  races_1.raceid, 
  races_1.year, 
  circuits_1.name, 
  min(
    circuits_1.name), 
  min(
    circuits_1.circuitref), 
  races_1.year, 
  circuits_1.name, 
  max(
    races_1.date), 
  circuits_1.circuitid
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.name is not NULL
group by circuits_1.alt, races_1.raceid, races_1.year, circuits_1.name, races_1.year, circuits_1.name, circuits_1.circuitid
limit 33;
select  
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.surname = drivers_1.nationality
limit 33;
select  
  constructor_results_1.raceid, 
  qualifying_1.number, 
  constructor_results_1.points, 
  max(
    drivers_1.surname), 
  drivers_1.surname
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.driverref < drivers_1.nationality
group by constructor_results_1.raceid, qualifying_1.number, constructor_results_1.points, drivers_1.surname
limit 35;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (qualifying_1.qualifyid = drivers_2.driverid )
where drivers_1.code is not NULL
limit 25;
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.round, 
  races_1.date, 
  min(
    races_1.year), 
  races_1.round, 
  races_1.name, 
  races_1.year, 
  races_1.round
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.time, races_1.round, races_1.date, races_1.round, races_1.name, races_1.year, races_1.round
limit 31;
select  
  constructor_results_1.raceid, 
  results_1.constructorid, 
  min(
    results_1.number)
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.driverid is not NULL
group by constructor_results_1.raceid, results_1.constructorid
limit 41;
select  
  standings_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  standings_1.wins, 
  constructor_results_1.constructorid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 11;
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverref, drivers_1.driverid, drivers_1.dob, drivers_1.forename, drivers_1.code, drivers_1.driverid, drivers_1.dob, drivers_1.code
limit 7;
select  
  max(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where qualifying_1.number is not NULL
limit 34;
select  
  results_1.constructorid
from 
  results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    inner join constructors as constructors_1
    on (results_2.resultid = constructors_1.constructorid )
where results_1.position is not NULL
limit 10;
select  
  races_1.name, 
  results_1.raceid, 
  races_1.year, 
  races_2.name, 
  races_1.name
from 
  races as races_1
    inner join races as races_2
      inner join results as results_1
      on (races_2.raceid = results_1.resultid )
    on (races_1.raceid = races_2.raceid )
where races_1.time is not NULL
limit 8;
select  
  max(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.nationality, drivers_1.nationality, drivers_1.driverid
limit 13;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.points
limit 17;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  races_1.time, 
  constructor_results_1.constructorresultsid, 
  races_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.driverid is not NULL
limit 28;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 19;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  results_1.rank, 
  results_1.statusid
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.raceid is not NULL
limit 41;
select  
  races_1.name, 
  standings_1.raceid, 
  min(
    standings_1.points)
from 
  qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.raceid is not NULL
group by races_1.name, standings_1.raceid
limit 34;
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 15;
select  
  circuits_1.circuitid, 
  circuits_1.lat
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitref is not NULL
limit 11;
select  
  constructors_1.constructorid, 
  max(
    constructors_2.name), 
  constructors_2.constructorid, 
  constructors_2.nationality
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_2.constructorid, constructors_2.nationality
limit 18;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid
limit 8;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name
limit 16;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 36;
select  
  constructors_1.name, 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name
limit 38;
select  
  max(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins > constructor_standings_1.constructorstandingsid
limit 19;
select  
  drivers_1.dob, 
  min(
    drivers_1.nationality), 
  min(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.dob, 
  min(
    drivers_1.driverid), 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverref, 
  sum(
    drivers_1.driverid), 
  drivers_1.forename, 
  sum(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.code, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.dob, drivers_1.dob, drivers_1.dob, drivers_1.code, drivers_1.code, drivers_1.dob, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.dob, drivers_1.surname, drivers_1.code
limit 16;
select  
  races_2.time, 
  races_2.year, 
  races_1.time, 
  max(
    races_1.round), 
  races_2.time, 
  count(
    races_2.round), 
  races_2.circuitid
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.year is not NULL
group by races_2.time, races_2.year, races_1.time, races_2.time, races_2.circuitid
limit 6;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date
limit 31;
select  
  avg(
    standings_1.driverstandingsid), 
  circuits_1.circuitid
from 
  drivers as drivers_1
    inner join circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.dob is not NULL
group by circuits_1.circuitid
limit 15;
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
limit 14;
select  
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.constructorid), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.wins), 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  count(*), 
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.position
limit 8;
select  
  max(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.constructorref <= constructors_1.name
limit 31;
select  
  races_1.year, 
  max(
    circuits_1.location)
from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where constructor_standings_1.wins is not NULL
group by races_1.year
limit 24;
select  
  results_1.rank, 
  constructors_1.constructorref, 
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.number, 
  constructors_1.constructorref, 
  constructors_1.name, 
  avg(
    results_1.number), 
  results_1.milliseconds
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.fastestlap is not NULL
group by results_1.rank, constructors_1.constructorref, results_1.milliseconds, results_1.resultid, results_1.number, constructors_1.constructorref, constructors_1.name, results_1.milliseconds
limit 12;
select  
  results_1.raceid
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.grid > results_1.resultid
limit 28;
select  
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 6;
select  
  constructor_standings_1.position, 
  min(
    results_1.date), 
  constructor_standings_1.constructorid, 
  results_1.points, 
  results_1.rank, 
  max(
    results_1.grid), 
  results_1.date, 
  min(
    results_1.rank), 
  results_1.driverid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  results_1.rank, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.constructorid = results_1.laps
group by constructor_standings_1.position, constructor_standings_1.constructorid, results_1.points, results_1.rank, results_1.date, results_1.driverid, constructor_standings_1.constructorid, constructor_standings_1.position, results_1.rank, constructor_standings_1.position
limit 8;
select  
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 3;
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 35;
select  
  circuits_1.lat, 
  circuits_1.country, 
  constructors_2.name, 
  constructors_1.nationality, 
  constructors_2.constructorid, 
  avg(
    constructors_1.constructorid), 
  constructors_2.constructorid, 
  constructors_1.name, 
  circuits_1.location, 
  constructors_1.nationality, 
  circuits_1.alt, 
  circuits_1.lat, 
  constructors_2.constructorref, 
  constructors_2.nationality, 
  constructors_2.constructorid, 
  constructors_1.constructorref, 
  circuits_1.country, 
  circuits_1.location, 
  constructors_2.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  constructors_2.name, 
  circuits_1.circuitref, 
  constructors_1.nationality
from 
  circuits as circuits_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (circuits_1.circuitid = constructors_2.constructorid )
where constructors_2.name >= circuits_1.location
group by circuits_1.lat, circuits_1.country, constructors_2.name, constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorid, constructors_1.name, circuits_1.location, constructors_1.nationality, circuits_1.alt, circuits_1.lat, constructors_2.constructorref, constructors_2.nationality, constructors_2.constructorid, constructors_1.constructorref, circuits_1.country, circuits_1.location, constructors_2.name, circuits_1.lat, circuits_1.lat, constructors_2.name, circuits_1.circuitref, constructors_1.nationality
limit 17;
select  
  races_1.raceid, 
  circuits_1.alt, 
  races_1.name, 
  races_1.time, 
  circuits_1.circuitid, 
  races_1.raceid, 
  races_1.time, 
  races_1.date, 
  circuits_1.lng, 
  races_1.year, 
  circuits_1.alt, 
  races_1.year, 
  circuits_1.lng, 
  avg(
    circuits_1.lng), 
  races_1.circuitid, 
  avg(
    circuits_1.lat), 
  races_1.raceid, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.location, 
  races_1.circuitid, 
  max(
    circuits_1.circuitref)
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.date > races_1.date
group by races_1.raceid, circuits_1.alt, races_1.name, races_1.time, circuits_1.circuitid, races_1.raceid, races_1.time, races_1.date, circuits_1.lng, races_1.year, circuits_1.alt, races_1.year, circuits_1.lng, races_1.circuitid, races_1.raceid, circuits_1.country, circuits_1.country, circuits_1.circuitref, circuits_1.location, races_1.circuitid
limit 12;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 12;
select  
  circuits_1.name
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where circuits_1.alt > standings_1.points
limit 40;
select  
  races_1.date, 
  races_1.name, 
  count(*), 
  races_1.raceid
from 
  races as races_1
where races_1.year is not NULL
group by races_1.date, races_1.name, races_1.raceid
limit 39;
select  
  results_1.points, 
  results_1.date, 
  results_1.resultid, 
  circuits_1.lng, 
  results_1.grid, 
  circuits_1.circuitref, 
  circuits_1.country
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.lng is not NULL
limit 12;
select  
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverid, drivers_1.forename, drivers_1.forename, drivers_1.forename, drivers_1.driverref, drivers_1.forename, drivers_1.code, drivers_1.dob
limit 42;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 14;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.location >= circuits_1.circuitref
limit 24;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.points), 
  count(
    constructor_results_1.constructorid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid
limit 1;
select  
  races_1.date, 
  max(
    races_1.date), 
  races_1.year, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.circuitid
from 
  races as races_1
where races_1.date is not NULL
group by races_1.date, races_1.year, races_1.circuitid, races_1.raceid, races_1.circuitid
limit 26;
select  
  max(
    results_1.date), 
  results_1.milliseconds
from 
  results as results_1
where results_1.number is not NULL
group by results_1.milliseconds
limit 4;
select  
  circuits_1.circuitref, 
  circuits_1.circuitid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 10;
select  
  races_1.date, 
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
limit 5;
select  
  circuits_1.lng
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitref is not NULL
limit 42;
select  
  standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
limit 12;
select  
  constructors_1.constructorid, 
  qualifying_2.position, 
  max(
    constructors_1.constructorref), 
  qualifying_2.driverid, 
  qualifying_2.position, 
  qualifying_2.raceid, 
  constructor_results_1.raceid, 
  qualifying_1.position, 
  constructor_results_1.date, 
  qualifying_1.position
from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
        inner join constructors as constructors_1
        on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.constructorid > qualifying_1.raceid
group by constructors_1.constructorid, qualifying_2.position, qualifying_2.driverid, qualifying_2.position, qualifying_2.raceid, constructor_results_1.raceid, qualifying_1.position, constructor_results_1.date, qualifying_1.position
limit 29;
select  
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 13;
select  
  races_2.name, 
  qualifying_1.driverid, 
  results_1.fastestlap, 
  drivers_1.surname, 
  drivers_1.forename, 
  circuits_1.lng
from 
  results as results_1
      inner join races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      on (results_1.resultid = races_1.raceid )
    inner join races as races_2
      inner join results as results_2
          inner join circuits as circuits_1
          on (results_2.resultid = circuits_1.circuitid )
        inner join drivers as drivers_1
        on (results_2.resultid = drivers_1.driverid )
      on (races_2.raceid = results_2.resultid )
    on (results_1.resultid = results_2.resultid )
where circuits_1.lng is not NULL
limit 9;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 42;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 25;
select  
  max(
    constructor_standings_1.points), 
  drivers_1.forename, 
  drivers_1.dob
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
          inner join constructors as constructors_2
          on (drivers_1.driverid = constructors_2.constructorid )
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.constructorid is not NULL
group by drivers_1.forename, drivers_1.dob
limit 8;
select  
  standings_1.wins, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.constructorstandingsid), 
  drivers_1.driverref, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  drivers_1.surname, 
  standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by standings_1.wins, constructor_standings_1.date, drivers_1.driverref, standings_1.driverstandingsid, standings_1.position, drivers_1.surname, standings_1.wins, constructor_standings_1.constructorstandingsid
limit 9;
select  
  drivers_2.driverref
from 
  constructors as constructors_1
      inner join drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    on (constructors_1.constructorid = circuits_1.circuitid )
where qualifying_1.qualifyid <= qualifying_1.constructorid
limit 4;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 7;
select  
  results_1.grid, 
  results_1.driverid, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.date < results_1.date
group by results_1.grid, results_1.driverid
limit 4;
select  
  results_1.laps, 
  constructor_standings_1.wins, 
  results_1.points
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.number is not NULL
limit 22;
select  
  drivers_1.nationality, 
  drivers_1.driverref, 
  min(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.nationality, drivers_1.driverref, drivers_1.code, drivers_1.driverid, drivers_1.surname, drivers_1.surname, drivers_1.dob
limit 23;
select  
  drivers_1.driverref, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 36;
select  
  standings_1.driverid, 
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.raceid), 
  standings_1.driverid, 
  results_1.statusid, 
  results_1.laps, 
  results_1.rank
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (standings_1.driverstandingsid = results_1.resultid )
where constructor_results_1.date is not NULL
group by standings_1.driverid, constructor_results_1.constructorid, standings_1.driverid, results_1.statusid, results_1.laps, results_1.rank
limit 37;
select  
  constructors_1.name, 
  max(
    races_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  results_1.date, 
  min(
    races_1.name)
from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
        inner join races as races_1
        on (results_1.resultid = races_1.raceid )
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructors_1.constructorid is not NULL
group by constructors_1.name, constructor_standings_1.raceid, constructor_standings_1.position, results_1.date
limit 3;
select  
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.constructorstandingsid), 
  avg(
    constructor_standings_1.position), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  count(
    constructor_standings_1.constructorid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins
limit 37;
select  
  qualifying_1.number, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 7;
select  
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.forename, drivers_1.surname, drivers_1.surname, drivers_1.driverref, drivers_1.surname, drivers_1.forename, drivers_1.forename
limit 39;
select  
  drivers_1.dob, 
  results_1.fastestlap, 
  results_1.rank, 
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.forename = drivers_1.driverref
limit 11;
select  
  races_1.circuitid, 
  races_1.year, 
  races_1.time
from 
  races as races_1
where races_1.raceid is not NULL
limit 42;
select  
  results_1.position, 
  qualifying_1.qualifyid, 
  sum(
    results_1.fastestlap), 
  results_1.position, 
  qualifying_1.driverid, 
  results_1.points, 
  qualifying_1.position, 
  results_1.milliseconds, 
  min(
    qualifying_1.date), 
  results_1.points, 
  results_1.statusid, 
  results_1.position, 
  qualifying_1.raceid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_1.qualifyid = qualifying_1.position
group by results_1.position, qualifying_1.qualifyid, results_1.position, qualifying_1.driverid, results_1.points, qualifying_1.position, results_1.milliseconds, results_1.points, results_1.statusid, results_1.position, qualifying_1.raceid
limit 22;
select  
  constructor_standings_1.points, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.date
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.wins is not NULL
limit 2;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.driverid is not NULL
limit 1;
select distinct 
  constructors_1.constructorid, 
  races_1.circuitid, 
  standings_2.driverstandingsid, 
  qualifying_1.date, 
  qualifying_1.date, 
  standings_2.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.constructorresultsid, 
  max(
    standings_1.wins), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join standings as standings_2
        inner join qualifying as qualifying_1
        on (standings_2.driverstandingsid = qualifying_1.qualifyid )
      inner join constructor_results as constructor_results_2
        inner join races as races_1
          inner join results as results_1
          on (races_1.raceid = results_1.resultid )
        on (constructor_results_2.constructorresultsid = races_1.raceid )
      on (standings_2.driverstandingsid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
where races_1.time is not NULL
group by constructors_1.constructorid, races_1.circuitid, standings_2.driverstandingsid, qualifying_1.date, qualifying_1.date, standings_2.wins, constructor_standings_1.constructorstandingsid, constructor_results_1.constructorresultsid, constructor_standings_1.wins
limit 26;
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.date, 
  min(
    standings_1.points), 
  standings_1.position, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.raceid, standings_1.driverid, standings_1.position, standings_1.wins, standings_1.date, standings_1.position, standings_1.wins, standings_1.points, standings_1.wins, standings_1.wins, standings_1.wins, standings_1.driverid, standings_1.position
limit 2;
select  
  max(
    circuits_1.location), 
  constructor_results_1.constructorid, 
  qualifying_1.position
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.date > qualifying_1.date
group by constructor_results_1.constructorid, qualifying_1.position
limit 10;
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 5;
select  
  constructors_1.nationality, 
  constructor_standings_2.points, 
  constructor_standings_2.position, 
  qualifying_1.number, 
  constructors_1.nationality, 
  qualifying_1.position, 
  min(
    constructors_1.nationality), 
  qualifying_1.date, 
  qualifying_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.date > qualifying_1.date
group by constructors_1.nationality, constructor_standings_2.points, constructor_standings_2.position, qualifying_1.number, constructors_1.nationality, qualifying_1.position, qualifying_1.date, qualifying_1.raceid
limit 33;
select  
  results_1.rank, 
  results_1.date, 
  results_1.constructorid, 
  count(*), 
  results_1.statusid, 
  results_1.position, 
  results_1.points, 
  max(
    results_1.date), 
  results_1.points, 
  results_1.driverid, 
  results_1.statusid, 
  results_1.statusid, 
  results_1.resultid, 
  max(
    results_1.resultid), 
  results_1.position, 
  results_1.laps, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.laps < results_1.resultid
group by results_1.rank, results_1.date, results_1.constructorid, results_1.statusid, results_1.position, results_1.points, results_1.points, results_1.driverid, results_1.statusid, results_1.statusid, results_1.resultid, results_1.position, results_1.laps
limit 33;
select  
  constructor_standings_1.points, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
limit 36;
select  
  races_1.name, 
  races_1.circuitid, 
  races_1.raceid, 
  results_1.grid, 
  min(
    results_1.positionorder), 
  races_1.time, 
  results_1.grid
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.rank is not NULL
group by races_1.name, races_1.circuitid, races_1.raceid, results_1.grid, races_1.time, results_1.grid
limit 9;
select  
  standings_1.points
from 
  standings as standings_1
where standings_1.driverstandingsid <= standings_1.position
limit 15;
select  
  sum(
    races_1.circuitid)
from 
  races as races_1
      inner join circuits as circuits_1
        inner join races as races_2
        on (circuits_1.circuitid = races_2.raceid )
      on (races_1.raceid = races_2.raceid )
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.location is not NULL
limit 34;
select  
  min(
    constructor_results_2.date)
from 
  circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_2
        on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where circuits_1.country > circuits_1.location
limit 42;
select  
  circuits_1.lng, 
  circuits_1.circuitref
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.year is not NULL
limit 22;
select  
  constructors_2.name, 
  constructors_2.name, 
  constructors_2.name, 
  constructors_2.name, 
  constructors_2.nationality, 
  constructors_2.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.constructorid is not NULL
limit 20;
select  
  qualifying_1.qualifyid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.date, 
  constructor_results_1.points, 
  qualifying_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  qualifying_2.driverid, 
  sum(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.date), 
  count(*), 
  constructor_standings_1.points, 
  qualifying_2.qualifyid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
          inner join constructor_standings as constructor_standings_2
          on (qualifying_2.qualifyid = constructor_standings_2.constructorstandingsid )
        inner join constructor_results as constructor_results_1
          inner join constructors as constructors_1
          on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
        on (constructor_standings_2.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructors_1.constructorref is not NULL
group by qualifying_1.qualifyid, constructor_results_1.constructorid, constructor_standings_1.date, constructor_results_1.points, qualifying_1.driverid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructors_1.constructorref, constructors_1.name, qualifying_2.driverid, constructor_standings_1.points, qualifying_2.qualifyid
limit 41;
select  
  avg(
    results_1.resultid), 
  avg(
    results_1.grid), 
  results_1.rank, 
  max(
    results_1.number), 
  results_1.raceid, 
  results_1.resultid, 
  results_1.rank, 
  results_1.statusid, 
  results_1.constructorid
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.rank, results_1.raceid, results_1.resultid, results_1.rank, results_1.statusid, results_1.constructorid
limit 22;
select  
  standings_1.wins, 
  standings_1.driverid, 
  min(
    circuits_1.circuitref), 
  circuits_1.circuitid, 
  circuits_1.country, 
  standings_1.raceid
from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.lat is not NULL
group by standings_1.wins, standings_1.driverid, circuits_1.circuitid, circuits_1.country, standings_1.raceid
limit 40;
select  
  constructor_results_1.constructorresultsid, 
  drivers_1.forename
from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.position = results_1.number
limit 33;
select  
  standings_1.date, 
  standings_1.date, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
where standings_1.position is not NULL
limit 20;
select  
  sum(
    standings_1.position), 
  standings_1.date, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lng, 
  standings_1.date, 
  circuits_1.alt, 
  circuits_1.circuitref
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.date is not NULL
group by standings_1.date, circuits_1.location, circuits_1.alt, circuits_1.country, circuits_1.lng, standings_1.date, circuits_1.alt, circuits_1.circuitref
limit 4;
select  
  qualifying_1.number, 
  qualifying_1.number, 
  constructors_1.name, 
  qualifying_1.position, 
  constructors_1.nationality, 
  qualifying_1.date, 
  constructors_1.nationality, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  max(
    constructors_1.nationality), 
  constructors_1.constructorid, 
  qualifying_1.driverid, 
  constructors_1.nationality, 
  qualifying_1.position, 
  constructors_1.constructorid, 
  sum(
    qualifying_1.constructorid), 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by qualifying_1.number, qualifying_1.number, constructors_1.name, qualifying_1.position, constructors_1.nationality, qualifying_1.date, constructors_1.nationality, qualifying_1.position, qualifying_1.qualifyid, constructors_1.constructorid, qualifying_1.driverid, constructors_1.nationality, qualifying_1.position, constructors_1.constructorid, qualifying_1.date
limit 8;
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 12;
select  
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.name, 
  sum(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.name, circuits_1.lng, circuits_1.alt, circuits_1.location, circuits_1.name
limit 28;
select  
  avg(
    standings_1.points)
from 
  standings as standings_1
where standings_1.date > standings_1.date
limit 42;
select  
  circuits_2.country
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.circuitid < circuits_1.circuitid
limit 21;
select  
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 25;
select  
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  avg(
    drivers_1.driverid), 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid <= drivers_1.driverid
group by drivers_1.nationality, drivers_1.nationality, drivers_1.surname, drivers_1.driverref, drivers_1.nationality, drivers_1.forename, drivers_1.forename, drivers_1.dob, drivers_1.dob, drivers_1.driverref
limit 8;
select  
  standings_1.date, 
  standings_1.date, 
  results_1.constructorid, 
  results_1.grid, 
  count(
    standings_1.driverid), 
  standings_1.driverid, 
  standings_1.wins, 
  results_1.laps, 
  results_1.milliseconds, 
  sum(
    results_1.raceid), 
  standings_1.points, 
  standings_1.points, 
  results_1.constructorid, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.raceid
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.date, results_1.constructorid, results_1.grid, standings_1.driverid, standings_1.wins, results_1.laps, results_1.milliseconds, standings_1.points, standings_1.points, results_1.constructorid, standings_1.raceid, standings_1.driverid, standings_1.raceid
limit 8;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 29;
select  
  drivers_1.dob, 
  constructor_results_1.constructorid, 
  drivers_1.driverid, 
  constructor_results_1.constructorid, 
  drivers_1.forename, 
  constructor_results_1.date, 
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorid, 
  min(
    drivers_1.dob), 
  constructor_results_1.constructorid, 
  drivers_1.code, 
  drivers_1.driverref, 
  min(
    constructor_results_1.date), 
  drivers_1.forename, 
  constructor_results_1.points
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.driverref = drivers_1.code
group by drivers_1.dob, constructor_results_1.constructorid, drivers_1.driverid, constructor_results_1.constructorid, drivers_1.forename, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid, drivers_1.code, drivers_1.driverref, drivers_1.forename, constructor_results_1.points
limit 20;
select  
  races_1.name, 
  races_1.round, 
  races_1.raceid, 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  races_1.raceid, 
  races_1.year, 
  races_1.round, 
  races_1.name
from 
  races as races_1
where races_1.time is not NULL
limit 2;
select  
  qualifying_1.driverid, 
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
group by qualifying_1.driverid, qualifying_1.raceid
limit 36;
select  
  races_1.year, 
  races_1.circuitid, 
  races_1.round, 
  races_1.circuitid, 
  max(
    races_1.name), 
  races_1.raceid, 
  races_1.year, 
  races_1.circuitid, 
  races_1.date, 
  races_1.raceid, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.year, races_1.circuitid, races_1.round, races_1.circuitid, races_1.raceid, races_1.year, races_1.circuitid, races_1.date, races_1.raceid
limit 32;
select  
  results_1.positionorder, 
  results_2.constructorid, 
  races_1.time, 
  drivers_1.nationality, 
  results_2.resultid, 
  results_2.fastestlap, 
  races_1.circuitid
from 
  results as results_1
    inner join races as races_1
      inner join drivers as drivers_1
          inner join results as results_2
          on (drivers_1.driverid = results_2.resultid )
        inner join races as races_2
        on (drivers_1.driverid = races_2.raceid )
      on (races_1.raceid = drivers_1.driverid )
    on (results_1.resultid = drivers_1.driverid )
where races_2.name is not NULL
limit 15;
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 40;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  drivers_1.driverid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    circuits_1.location), 
  drivers_1.surname, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.country, 
  drivers_1.dob, 
  max(
    drivers_1.forename), 
  circuits_1.circuitid, 
  min(
    drivers_1.code), 
  drivers_1.dob, 
  constructor_results_1.constructorresultsid, 
  circuits_1.name
from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where drivers_1.dob >= constructor_results_1.date
group by constructor_results_1.raceid, constructor_results_1.date, drivers_1.driverid, constructor_results_1.points, constructor_results_1.constructorid, drivers_1.surname, circuits_1.lat, circuits_1.alt, circuits_1.country, drivers_1.dob, circuits_1.circuitid, drivers_1.dob, constructor_results_1.constructorresultsid, circuits_1.name
limit 11;
select  
  results_1.milliseconds, 
  min(
    results_1.date), 
  results_1.laps, 
  count(*), 
  results_1.points, 
  count(*), 
  results_1.raceid, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.driverid, 
  results_1.resultid
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.milliseconds, results_1.laps, results_1.points, results_1.raceid, results_1.constructorid, results_1.raceid, results_1.driverid, results_1.resultid
limit 29;
select  
  max(
    circuits_1.circuitid), 
  circuits_1.alt, 
  circuits_1.circuitref, 
  min(
    circuits_1.lng), 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitref, circuits_1.circuitref
limit 11;
select  
  standings_1.points, 
  constructors_1.constructorref, 
  races_1.year, 
  constructors_1.nationality, 
  races_1.year, 
  races_1.date, 
  races_1.year
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorref is not NULL
limit 35;
select  
  constructor_standings_1.points
from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_1
          inner join circuits as circuits_2
          on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
        inner join constructor_standings as constructor_standings_2
          inner join constructors as constructors_1
          on (constructor_standings_2.constructorstandingsid = constructors_1.constructorid )
        on (circuits_2.circuitid = constructors_1.constructorid )
      on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
where standings_1.wins = constructor_standings_2.raceid
limit 11;
select  
  sum(
    drivers_1.driverid), 
  sum(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.driverref, 
  min(
    drivers_1.code), 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.forename, drivers_1.driverref, drivers_1.dob, drivers_1.driverid, drivers_1.driverid, drivers_1.nationality, drivers_1.driverref
limit 27;
select  
  count(*), 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.nationality, 
  min(
    drivers_1.nationality), 
  max(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.code > drivers_1.forename
group by drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.driverid, drivers_1.code
limit 32;
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.year, 
  races_1.year, 
  races_1.round, 
  races_1.date, 
  races_1.date, 
  races_1.circuitid, 
  races_1.year, 
  races_1.circuitid, 
  races_1.circuitid, 
  max(
    races_1.date), 
  races_1.round, 
  races_1.year, 
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.time, races_1.year, races_1.year, races_1.round, races_1.date, races_1.date, races_1.circuitid, races_1.year, races_1.circuitid, races_1.circuitid, races_1.round, races_1.year, races_1.year
limit 23;
select  
  results_1.laps, 
  results_1.resultid, 
  sum(
    standings_1.raceid), 
  count(*), 
  standings_1.raceid, 
  results_1.laps, 
  standings_1.raceid
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.raceid is not NULL
group by results_1.laps, results_1.resultid, standings_1.raceid, results_1.laps, standings_1.raceid
limit 25;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid <= constructor_results_1.constructorid
limit 21;
select  
  circuits_1.country, 
  constructors_1.nationality, 
  circuits_1.circuitref, 
  circuits_2.name, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.lng, 
  max(
    circuits_2.alt), 
  circuits_1.circuitref, 
  circuits_2.circuitid, 
  constructors_2.nationality, 
  circuits_2.circuitid
from 
  constructors as constructors_1
    inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join constructors as constructors_2
      on (circuits_2.circuitid = constructors_2.constructorid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where circuits_1.lat < circuits_2.lat
group by circuits_1.country, constructors_1.nationality, circuits_1.circuitref, circuits_2.name, circuits_1.circuitref, circuits_1.name, circuits_1.lng, circuits_1.circuitref, circuits_2.circuitid, constructors_2.nationality, circuits_2.circuitid
limit 17;
select  
  results_1.points, 
  results_1.milliseconds, 
  results_1.fastestlap, 
  sum(
    results_1.position)
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.time is not NULL
group by results_1.points, results_1.milliseconds, results_1.fastestlap
limit 41;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.points = standings_1.points
limit 17;
select  
  drivers_2.dob, 
  drivers_1.surname, 
  constructors_1.name, 
  races_1.time, 
  races_1.circuitid, 
  constructors_1.constructorid, 
  drivers_1.driverref, 
  races_1.name, 
  drivers_1.driverref, 
  standings_1.driverid, 
  races_1.raceid, 
  min(
    drivers_1.dob), 
  constructors_1.constructorref, 
  drivers_2.forename
from 
  constructors as constructors_1
      inner join races as races_1
          inner join standings as standings_1
          on (races_1.raceid = standings_1.driverstandingsid )
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join drivers as drivers_2
    on (races_1.raceid = drivers_2.driverid )
where races_1.name = drivers_1.code
group by drivers_2.dob, drivers_1.surname, constructors_1.name, races_1.time, races_1.circuitid, constructors_1.constructorid, drivers_1.driverref, races_1.name, drivers_1.driverref, standings_1.driverid, races_1.raceid, constructors_1.constructorref, drivers_2.forename
limit 6;
select  
  constructor_results_1.constructorid, 
  races_1.circuitid, 
  races_1.date, 
  constructor_results_1.raceid, 
  races_1.year, 
  races_1.date
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where races_1.circuitid is not NULL
limit 42;
select  
  constructors_1.name, 
  constructors_1.nationality
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.statusid is not NULL
limit 42;
select  
  avg(
    circuits_2.alt), 
  circuits_2.location, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_2.location, 
  circuits_1.country, 
  circuits_2.lat, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_2.location, 
  circuits_2.circuitid
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.name is not NULL
group by circuits_2.location, circuits_1.alt, circuits_1.country, circuits_1.name, circuits_1.location, circuits_2.location, circuits_1.country, circuits_2.lat, circuits_1.location, circuits_1.name, circuits_2.location, circuits_2.circuitid
limit 13;
select  
  races_1.raceid, 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 26;
select  
  constructor_results_1.constructorresultsid, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.code, 
  min(
    drivers_1.dob), 
  drivers_1.code, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  drivers_1.driverref, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  drivers_1.dob, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.driverid is not NULL
group by constructor_results_1.constructorresultsid, drivers_1.surname, drivers_1.nationality, drivers_1.nationality, drivers_1.code, drivers_1.code, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, drivers_1.driverref, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorid, drivers_1.dob, constructor_results_1.points, constructor_results_1.constructorresultsid
limit 39;
select  
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng <= circuits_1.alt
limit 4;
select  
  count(*), 
  avg(
    qualifying_1.driverid)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 1;
select  
  constructor_results_1.points, 
  drivers_1.dob, 
  constructor_results_1.constructorid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid > drivers_1.driverid
limit 13;
select  
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.date, 
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.position, 
  max(
    qualifying_1.constructorid), 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  count(
    qualifying_1.position), 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.date, qualifying_1.number, qualifying_1.constructorid, qualifying_1.number, qualifying_1.date, qualifying_1.raceid, qualifying_1.position, qualifying_1.position, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.date, qualifying_1.position, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.driverid
limit 5;
select  
  constructors_1.constructorid, 
  results_1.milliseconds
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.milliseconds is not NULL
limit 11;
select  
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date), 
  avg(
    constructor_standings_1.wins), 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date
limit 35;
select  
  qualifying_1.raceid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  qualifying_1.number
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.name <= constructors_1.nationality
limit 35;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 6;
select  
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 40;
select  
  results_1.statusid, 
  constructors_1.nationality
from 
  circuits as circuits_1
      inner join results as results_1
        inner join standings as standings_1
        on (results_1.resultid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where results_1.milliseconds < results_1.position
limit 20;
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 3;
select  
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.raceid is not NULL
limit 8;
select  
  constructor_results_1.points, 
  standings_1.raceid, 
  constructor_results_2.constructorresultsid, 
  standings_1.points
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
where constructor_results_1.points is not NULL
limit 39;
select  
  races_1.circuitid, 
  races_1.year, 
  races_1.raceid, 
  races_1.name, 
  races_1.date, 
  races_1.year, 
  max(
    races_1.raceid), 
  races_1.year
from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.year, races_1.raceid, races_1.name, races_1.date, races_1.year, races_1.year
limit 1;
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverref, drivers_1.driverid, drivers_1.nationality, drivers_1.dob
limit 3;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.constructorid
limit 8;
select  
  races_1.name, 
  min(
    circuits_1.location), 
  standings_1.points
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.raceid is not NULL
group by races_1.name, standings_1.points
limit 20;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.date
limit 32;
select  
  min(
    standings_2.date), 
  results_1.milliseconds, 
  max(
    results_1.date), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  results_1.rank, 
  avg(
    results_1.fastestlap)
from 
  standings as standings_1
    inner join constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      inner join standings as standings_2
      on (constructors_1.constructorid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_2.raceid is not NULL
group by results_1.milliseconds, constructors_1.constructorref, constructors_1.nationality, results_1.rank
limit 4;
select  
  avg(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 2;
select  
  avg(
    constructor_standings_1.raceid), 
  constructors_2.name
from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructors_2.constructorref is not NULL
group by constructors_2.name
limit 41;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorid
limit 30;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 35;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 27;
select  
  qualifying_1.number, 
  circuits_1.circuitid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.number is not NULL
limit 13;
select  
  min(
    circuits_1.circuitref), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.name, circuits_1.circuitref, circuits_1.alt, circuits_1.name, circuits_1.circuitid
limit 31;
select  
  races_1.circuitid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
limit 18;
select  
  qualifying_1.number, 
  count(
    qualifying_1.number), 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.number, qualifying_1.date, qualifying_1.date, qualifying_1.number
limit 33;
select  
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 37;
select  
  standings_1.position, 
  standings_1.points, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 23;
select  
  constructors_1.constructorref, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  constructors_1.constructorref, 
  min(
    standings_1.date), 
  standings_1.position, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  standings_1.raceid, 
  constructors_1.constructorref, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  max(
    constructors_1.constructorref), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorref)
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.name >= constructors_1.constructorref
group by constructors_1.constructorref, standings_1.date, standings_1.driverstandingsid, constructors_1.constructorref, standings_1.position, constructors_1.nationality, constructors_1.nationality, standings_1.raceid, constructors_1.constructorref, standings_1.points, standings_1.wins, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.position, constructors_1.constructorid
limit 41;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 11;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 35;
select distinct 
  max(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.date
limit 15;
select  
  min(
    results_1.date), 
  results_1.position, 
  results_1.fastestlap
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.position, results_1.fastestlap
limit 24;
select  
  drivers_1.surname, 
  drivers_1.driverref, 
  count(*), 
  drivers_1.driverid, 
  count(*), 
  min(
    drivers_1.code), 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.surname, drivers_1.driverref, drivers_1.driverid, drivers_1.dob, drivers_1.code, drivers_1.nationality
limit 27;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 5;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 32;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 14;
select  
  results_1.fastestlap, 
  results_1.statusid, 
  avg(
    results_1.milliseconds), 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.statusid, 
  results_1.raceid, 
  avg(
    results_1.constructorid), 
  min(
    results_1.date), 
  results_1.position, 
  results_1.milliseconds, 
  min(
    results_1.driverid), 
  results_1.statusid
from 
  results as results_1
where results_1.date is not NULL
group by results_1.fastestlap, results_1.statusid, results_1.resultid, results_1.milliseconds, results_1.milliseconds, results_1.statusid, results_1.raceid, results_1.position, results_1.milliseconds, results_1.statusid
limit 7;
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.surname, 
  sum(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
group by drivers_1.forename, drivers_1.driverid, drivers_1.driverid, drivers_1.surname, drivers_1.surname, drivers_1.surname, drivers_1.code, drivers_1.driverid
limit 19;
select distinct 
  sum(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.date
limit 28;
select  
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.forename, drivers_1.driverid, drivers_1.driverid, drivers_1.code, drivers_1.code
limit 38;
select  
  max(
    standings_1.date), 
  constructor_standings_1.wins, 
  min(
    standings_2.position), 
  standings_2.wins, 
  standings_2.driverid, 
  standings_2.wins, 
  standings_2.driverstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join standings as standings_2
    on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
where standings_1.driverid is not NULL
group by constructor_standings_1.wins, standings_2.wins, standings_2.driverid, standings_2.wins, standings_2.driverstandingsid
limit 40;
select  
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.raceid, standings_1.points, standings_1.raceid
limit 19;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 30;
select  
  max(
    constructor_standings_2.date), 
  races_1.circuitid, 
  circuits_1.circuitref
from 
  constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_2
    on (races_1.raceid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.wins is not NULL
group by races_1.circuitid, circuits_1.circuitref
limit 23;
select  
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 40;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 11;
select  
  results_1.raceid, 
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.driverid, 
  results_1.position, 
  results_1.laps
from 
  results as results_1
where results_1.driverid is not NULL
limit 10;
select  
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
    on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorid is not NULL
limit 12;
select  
  constructor_standings_1.position, 
  min(
    standings_1.date)
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.position is not NULL
group by constructor_standings_1.position
limit 2;
select  
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.position, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.raceid
limit 14;
select  
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 28;
select  
  standings_1.date, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date <= standings_1.date
limit 22;
select  
  qualifying_1.raceid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  qualifying_1.driverid, 
  min(
    constructors_1.name), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.name is not NULL
group by qualifying_1.raceid, constructors_1.nationality, constructors_1.constructorid, qualifying_1.driverid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 19;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 34;
select  
  qualifying_1.date, 
  races_1.circuitid, 
  qualifying_1.raceid, 
  max(
    races_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.date
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.round is not NULL
group by qualifying_1.date, races_1.circuitid, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.date
limit 37;
select  
  races_1.name, 
  races_1.name, 
  max(
    races_1.name), 
  races_1.date
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.name, races_1.name, races_1.date
limit 13;
select  
  qualifying_1.constructorid, 
  results_1.position, 
  qualifying_1.date, 
  count(
    qualifying_1.position)
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.laps is not NULL
group by qualifying_1.constructorid, results_1.position, qualifying_1.date
limit 35;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  min(
    constructors_1.nationality), 
  constructors_1.constructorref, 
  max(
    constructors_1.name), 
  max(
    constructors_1.name), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality
limit 12;
select  
  constructors_1.constructorid
from 
  constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
          inner join races as races_1
          on (constructor_standings_2.constructorstandingsid = races_1.raceid )
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
where races_1.date > drivers_1.dob
limit 32;
select  
  constructors_1.nationality, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  constructors_1.constructorid, 
  qualifying_1.position
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 30;
select  
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 22;
select  
  count(
    results_1.grid), 
  min(
    races_1.name), 
  results_1.resultid, 
  results_1.milliseconds, 
  races_1.round
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.name <= races_1.time
group by results_1.resultid, results_1.milliseconds, races_1.round
limit 10;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 13;
select  
  qualifying_1.number, 
  avg(
    qualifying_1.driverid)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.number
limit 11;
select  
  circuits_1.country, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 9;
select  
  drivers_1.surname, 
  max(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  drivers_1.dob, 
  min(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.code, 
  sum(
    drivers_1.driverid), 
  drivers_1.nationality, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.surname, drivers_1.dob, drivers_1.nationality, drivers_1.code, drivers_1.nationality, drivers_1.code, drivers_1.nationality
limit 35;
select  
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.location, 
  max(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.location, 
  max(
    circuits_1.name), 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.alt, 
  min(
    circuits_1.lng), 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
group by circuits_1.name, circuits_1.circuitid, circuits_1.lng, circuits_1.location, circuits_1.location, circuits_1.lat, circuits_1.lat, circuits_1.country, circuits_1.country, circuits_1.location, circuits_1.country, circuits_1.location, circuits_1.alt, circuits_1.alt, circuits_1.alt, circuits_1.circuitref, circuits_1.location, circuits_1.circuitid, circuits_1.lng, circuits_1.alt, circuits_1.lng, circuits_1.lng, circuits_1.name
limit 29;
select  
  results_1.points
from 
  results as results_1
where results_1.positionorder is not NULL
limit 15;
select  
  standings_1.driverid, 
  races_1.round, 
  min(
    races_1.date)
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.points <= standings_1.points
group by standings_1.driverid, races_1.round
limit 32;
select  
  min(
    standings_1.date), 
  qualifying_1.constructorid, 
  standings_1.raceid
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, standings_1.raceid
limit 6;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  races_1.time, 
  qualifying_1.position, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    inner join results as results_1
          inner join constructor_standings as constructor_standings_1
          on (results_1.resultid = constructor_standings_1.constructorstandingsid )
        inner join qualifying as qualifying_2
        on (results_1.resultid = qualifying_2.qualifyid )
      inner join races as races_1
      on (qualifying_2.qualifyid = races_1.raceid )
    on (qualifying_1.qualifyid = results_1.resultid )
where constructor_results_1.raceid is not NULL
limit 7;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  max(
    constructors_1.name), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.name
limit 40;
select  
  min(
    drivers_1.code)
from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 6;
select  
  circuits_1.circuitid, 
  max(
    circuits_2.lat), 
  circuits_1.alt, 
  constructors_3.nationality, 
  drivers_1.dob, 
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.constructorid, 
  avg(
    constructors_3.constructorid), 
  constructor_results_1.constructorid, 
  constructors_1.name
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
          inner join constructors as constructors_1
          on (circuits_1.circuitid = constructors_1.constructorid )
        inner join drivers as drivers_1
          inner join circuits as circuits_2
            inner join constructors as constructors_2
            on (circuits_2.circuitid = constructors_2.constructorid )
          on (drivers_1.driverid = circuits_2.circuitid )
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
    inner join constructors as constructors_3
    on (drivers_1.driverid = constructors_3.constructorid )
where constructors_2.constructorid is not NULL
group by circuits_1.circuitid, circuits_1.alt, constructors_3.nationality, drivers_1.dob, constructor_results_1.constructorid, constructor_results_1.constructorid, constructors_1.name
limit 17;
select  
  qualifying_2.raceid, 
  qualifying_1.constructorid
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (results_1.resultid = qualifying_2.qualifyid )
where qualifying_2.qualifyid is not NULL
limit 38;
select  
  qualifying_1.date, 
  avg(
    results_1.fastestlap), 
  qualifying_1.driverid
from 
  drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.fastestlap <= results_1.rank
group by qualifying_1.date, qualifying_1.driverid
limit 18;
select  
  min(
    drivers_1.surname), 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.dob, 
  min(
    drivers_1.forename), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverid, drivers_1.nationality, drivers_1.nationality, drivers_1.dob, drivers_1.dob, drivers_1.surname
limit 17;
select  
  races_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  min(
    races_1.date), 
  races_1.name, 
  constructors_1.constructorid, 
  races_1.year, 
  constructors_1.name, 
  constructors_1.constructorid, 
  races_1.time, 
  races_1.round, 
  min(
    races_1.raceid), 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where constructors_1.constructorid < races_1.round
group by races_1.name, constructors_1.name, constructors_1.nationality, races_1.name, constructors_1.constructorid, races_1.year, constructors_1.name, constructors_1.constructorid, races_1.time, races_1.round, constructors_1.nationality, constructors_1.constructorid
limit 2;
select  
  results_1.grid
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.position <= results_1.statusid
limit 36;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_2.nationality, 
  constructors_2.constructorref, 
  constructors_1.constructorid, 
  constructors_2.name, 
  min(
    constructors_1.constructorid), 
  constructors_2.constructorid
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_2.nationality, constructors_2.constructorref, constructors_1.constructorid, constructors_2.name, constructors_2.constructorid
limit 10;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 1;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid < constructor_results_1.constructorid
limit 37;
select  
  standings_1.driverstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.driverid is not NULL
limit 10;
select  
  max(
    races_1.round), 
  races_1.round, 
  races_1.time, 
  races_1.name, 
  races_1.time, 
  races_1.raceid, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.round, races_1.time, races_1.name, races_1.time, races_1.raceid
limit 22;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  count(*), 
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.constructorid, qualifying_1.position
limit 23;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 27;
select  
  max(
    drivers_1.dob), 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.nationality
limit 34;
select  
  circuits_1.alt, 
  circuits_1.country, 
  min(
    circuits_1.circuitid), 
  min(
    circuits_1.circuitref), 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.lng, 
  min(
    circuits_1.circuitref), 
  min(
    circuits_1.alt), 
  circuits_1.country, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.location, circuits_1.lat, circuits_1.circuitid, circuits_1.circuitid, circuits_1.name, circuits_1.country, circuits_1.name, circuits_1.lng, circuits_1.country, circuits_1.alt
limit 21;
select  
  races_1.time, 
  drivers_1.forename, 
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join drivers as drivers_1
        inner join constructors as constructors_2
        on (drivers_1.driverid = constructors_2.constructorid )
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.name is not NULL
limit 5;
select  
  results_1.laps, 
  results_1.position, 
  constructors_2.constructorid, 
  standings_1.position
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      inner join results as results_1
        inner join constructors as constructors_2
        on (results_1.resultid = constructors_2.constructorid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where standings_1.driverid > results_1.resultid
limit 2;
select  
  max(
    constructor_standings_1.date)
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.raceid > constructor_standings_1.wins
limit 33;
select  
  min(
    results_1.rank), 
  drivers_1.nationality, 
  results_1.date, 
  qualifying_1.qualifyid, 
  results_1.statusid, 
  races_1.date, 
  results_1.statusid, 
  qualifying_1.number, 
  results_1.resultid, 
  qualifying_1.constructorid, 
  drivers_1.dob
from 
  qualifying as qualifying_1
    inner join results as results_1
        inner join races as races_1
        on (results_1.resultid = races_1.raceid )
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.round = results_1.grid
group by drivers_1.nationality, results_1.date, qualifying_1.qualifyid, results_1.statusid, races_1.date, results_1.statusid, qualifying_1.number, results_1.resultid, qualifying_1.constructorid, drivers_1.dob
limit 24;
select  
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.date is not NULL
group by constructor_standings_1.points
limit 4;
select  
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.position, qualifying_1.constructorid, qualifying_1.number, qualifying_1.raceid, qualifying_1.date, qualifying_1.qualifyid
limit 18;
select  
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid = constructor_results_1.constructorresultsid
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid
limit 39;
select  
  min(
    results_1.rank), 
  results_1.milliseconds, 
  results_1.rank, 
  constructors_1.nationality, 
  results_1.raceid
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.rank = results_1.number
group by results_1.milliseconds, results_1.rank, constructors_1.nationality, results_1.raceid
limit 16;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  count(*)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid
limit 18;
select  
  min(
    races_1.time), 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.year
limit 27;
select  
  sum(
    results_1.fastestlap), 
  min(
    qualifying_1.date), 
  results_1.raceid, 
  qualifying_1.number
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    on (results_1.resultid = qualifying_1.qualifyid )
where constructors_1.nationality is not NULL
group by results_1.raceid, qualifying_1.number
limit 22;
select  
  drivers_1.surname
from 
  results as results_1
    inner join circuits as circuits_1
          inner join constructor_standings as constructor_standings_1
          on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.fastestlap is not NULL
limit 10;
select  
  circuits_1.location, 
  max(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorref), 
  circuits_1.lng, 
  constructors_1.constructorid, 
  circuits_1.location, 
  constructors_1.name, 
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  circuits_1.country, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorref), 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where constructors_1.constructorref is not NULL
group by circuits_1.location, circuits_1.lng, constructors_1.constructorid, circuits_1.location, constructors_1.name, constructors_1.name, circuits_1.country, constructors_1.constructorref, constructors_1.nationality
limit 9;
select  
  standings_2.date
from 
  standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.driverstandingsid = drivers_1.driverid )
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.raceid is not NULL
limit 13;
select  
  max(
    results_1.date)
from 
  results as results_1
where results_1.grid is not NULL
limit 22;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
limit 27;
select  
  constructors_1.nationality, 
  max(
    constructors_1.constructorref), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.name, constructors_1.name
limit 34;
select  
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 15;
select  
  races_1.time, 
  races_1.year, 
  races_1.year, 
  min(
    races_1.name), 
  races_1.name, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.time, 
  races_1.time, 
  races_1.year, 
  races_1.round, 
  races_1.round, 
  races_1.round, 
  races_1.name, 
  races_1.circuitid, 
  races_1.name, 
  races_1.name
from 
  races as races_1
where races_1.date is not NULL
group by races_1.time, races_1.year, races_1.year, races_1.name, races_1.raceid, races_1.circuitid, races_1.raceid, races_1.time, races_1.time, races_1.year, races_1.round, races_1.round, races_1.round, races_1.name, races_1.circuitid, races_1.name, races_1.name
limit 5;
select  
  results_1.fastestlap, 
  results_1.points, 
  results_1.laps, 
  results_1.position, 
  results_1.points, 
  count(
    results_1.position), 
  count(*), 
  min(
    results_1.number), 
  results_1.number
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.fastestlap, results_1.points, results_1.laps, results_1.position, results_1.points, results_1.number
limit 32;
select  
  results_1.positionorder
from 
  results as results_1
    inner join drivers as drivers_1
      inner join qualifying as qualifying_1
        inner join results as results_2
        on (qualifying_1.qualifyid = results_2.resultid )
      on (drivers_1.driverid = results_2.resultid )
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.number is not NULL
limit 7;
select  
  max(
    qualifying_1.raceid), 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.date, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.position
limit 4;
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_1.date
limit 25;
select  
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.location, 
  max(
    circuits_1.circuitref), 
  max(
    circuits_1.circuitref)
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitref, circuits_1.circuitref, circuits_1.location, circuits_1.lng, circuits_1.alt, circuits_1.country, circuits_1.location
limit 3;
select  
  min(
    constructors_1.name), 
  max(
    races_1.date), 
  constructors_1.constructorref, 
  races_1.year, 
  races_1.date, 
  constructors_1.name, 
  races_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  races_1.name
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, races_1.year, races_1.date, constructors_1.name, races_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, races_1.name
limit 33;
select  
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 12;
select  
  constructor_standings_1.points, 
  standings_2.wins, 
  standings_2.points
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join standings as standings_2
      inner join standings as standings_3
      on (standings_2.driverstandingsid = standings_3.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = standings_3.driverstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 38;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 4;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.constructorid
limit 27;
select  
  constructor_results_2.constructorid, 
  constructor_standings_1.position, 
  standings_1.driverid
from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
        inner join constructor_results as constructor_results_1
          inner join constructor_results as constructor_results_2
          on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 28;
select  
  results_1.grid, 
  results_1.raceid
from 
  results as results_1
where results_1.positionorder is not NULL
limit 3;
select  
  standings_1.driverstandingsid, 
  results_1.position, 
  results_1.rank, 
  standings_1.driverid, 
  circuits_1.alt, 
  circuits_1.name, 
  results_1.driverid, 
  avg(
    results_1.position), 
  circuits_1.location, 
  standings_1.points, 
  min(
    races_1.name), 
  standings_1.driverid, 
  races_1.name, 
  results_1.resultid, 
  max(
    circuits_1.country), 
  max(
    results_1.date)
from 
  races as races_1
        inner join results as results_1
        on (races_1.raceid = results_1.resultid )
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.location is not NULL
group by standings_1.driverstandingsid, results_1.position, results_1.rank, standings_1.driverid, circuits_1.alt, circuits_1.name, results_1.driverid, circuits_1.location, standings_1.points, standings_1.driverid, races_1.name, results_1.resultid
limit 41;
select  
  races_1.name, 
  races_1.year, 
  races_1.time, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.date, 
  races_1.date, 
  races_1.round, 
  races_1.time, 
  races_1.year, 
  max(
    races_1.raceid), 
  races_1.date, 
  races_1.circuitid, 
  races_1.year, 
  races_1.raceid, 
  races_1.time, 
  races_1.year, 
  races_1.round, 
  races_1.date, 
  races_1.time
from 
  races as races_1
where races_1.round > races_1.circuitid
group by races_1.name, races_1.year, races_1.time, races_1.name, races_1.date, races_1.date, races_1.round, races_1.time, races_1.year, races_1.date, races_1.circuitid, races_1.year, races_1.raceid, races_1.time, races_1.year, races_1.round, races_1.date, races_1.time
limit 4;
select  
  results_1.rank, 
  results_1.points, 
  results_1.laps, 
  results_1.position, 
  results_1.rank, 
  results_1.positionorder, 
  results_1.date, 
  results_1.date, 
  results_1.raceid, 
  results_1.number, 
  max(
    results_1.constructorid), 
  results_1.fastestlap, 
  results_1.rank
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.rank, results_1.points, results_1.laps, results_1.position, results_1.rank, results_1.positionorder, results_1.date, results_1.date, results_1.raceid, results_1.number, results_1.fastestlap, results_1.rank
limit 13;
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 14;
select  
  avg(
    circuits_1.circuitid)
from 
  standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (standings_1.driverstandingsid = circuits_2.circuitid )
where circuits_1.lat is not NULL
limit 30;
select  
  max(
    standings_1.points)
from 
  standings as standings_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points < standings_1.points
limit 12;
select  
  races_1.raceid
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 28;
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 17;
select  
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid = qualifying_1.raceid
limit 1;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points
limit 28;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 9;
select  
  constructors_1.constructorid
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorid <= circuits_1.circuitid
limit 16;
select  
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.raceid, qualifying_1.date, qualifying_1.number, qualifying_1.position
limit 1;
select  
  results_1.number
from 
  results as results_1
where results_1.resultid is not NULL
limit 41;
select  
  standings_1.date, 
  standings_1.raceid, 
  results_1.constructorid, 
  standings_1.driverid
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
limit 37;
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.code, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.surname, drivers_1.driverid, drivers_1.nationality, drivers_1.surname, drivers_1.code
limit 18;
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.driverid), 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.raceid, qualifying_1.number, qualifying_1.raceid
limit 5;
select  
  constructor_standings_1.position, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 27;
select  
  constructor_results_1.date, 
  circuits_1.lng, 
  constructor_results_1.points, 
  circuits_1.alt, 
  min(
    constructor_results_1.date)
from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where circuits_1.lat > circuits_1.alt
group by constructor_results_1.date, circuits_1.lng, constructor_results_1.points, circuits_1.alt
limit 2;
select  
  constructor_standings_1.points, 
  min(
    races_1.time)
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points
limit 17;
select  
  constructors_1.name, 
  constructors_1.name, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.lat is not NULL
limit 12;
select  
  standings_1.driverid, 
  races_2.year
from 
  standings as standings_1
      inner join races as races_1
          inner join constructor_standings as constructor_standings_1
          on (races_1.raceid = constructor_standings_1.constructorstandingsid )
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join circuits as circuits_2
      inner join races as races_2
      on (circuits_2.circuitid = races_2.raceid )
    on (races_1.raceid = races_2.raceid )
where circuits_1.name = circuits_2.name
limit 35;
select  
  count(*), 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.position, 
  count(
    qualifying_1.constructorid), 
  qualifying_1.position, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  avg(
    qualifying_1.raceid), 
  qualifying_1.position, 
  sum(
    qualifying_1.driverid), 
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.raceid, qualifying_1.number, qualifying_1.position, qualifying_1.position, qualifying_1.driverid, qualifying_1.number, qualifying_1.date, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.position, qualifying_1.position, qualifying_1.position, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.date
limit 22;
select  
  min(
    constructor_results_1.points), 
  constructor_results_1.date, 
  count(
    constructor_results_1.date), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.raceid
limit 9;
select  
  races_1.year, 
  constructor_results_1.raceid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.points > constructor_results_1.points
limit 27;
select  
  races_1.year, 
  races_1.date, 
  races_1.name, 
  races_1.raceid
from 
  races as races_1
where races_1.circuitid is not NULL
limit 10;
select  
  races_1.date, 
  races_1.date, 
  races_1.time, 
  races_1.circuitid, 
  races_1.circuitid
from 
  races as races_1
where races_1.round is not NULL
limit 21;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.position
limit 8;
select  
  results_1.rank, 
  races_1.round, 
  count(*), 
  races_1.date, 
  results_1.grid, 
  races_1.raceid, 
  min(
    results_1.date), 
  results_1.number, 
  results_1.driverid, 
  races_1.raceid
from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where results_1.driverid is not NULL
group by results_1.rank, races_1.round, races_1.date, results_1.grid, races_1.raceid, results_1.number, results_1.driverid, races_1.raceid
limit 18;
select  
  standings_1.driverid
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 33;
select  
  constructor_standings_1.wins, 
  drivers_1.code, 
  min(
    drivers_1.dob), 
  drivers_1.driverid
from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.driverid is not NULL
group by constructor_standings_1.wins, drivers_1.code, drivers_1.driverid
limit 13;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.constructorid
limit 17;
select  
  circuits_1.circuitid, 
  results_1.number
from 
  results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    inner join drivers as drivers_1
      inner join qualifying as qualifying_1
        inner join circuits as circuits_2
        on (qualifying_1.qualifyid = circuits_2.circuitid )
      on (drivers_1.driverid = qualifying_1.qualifyid )
    on (results_1.resultid = drivers_1.driverid )
where circuits_2.alt is not NULL
limit 42;
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorref)
from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
group by constructors_1.name, constructors_1.constructorref
limit 27;
select  
  min(
    circuits_1.lat), 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.location, circuits_1.alt, circuits_1.lat
limit 23;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    constructors_1.constructorref), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  max(
    constructors_1.nationality), 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorref), 
  min(
    constructors_1.constructorid), 
  count(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid
limit 19;
select  
  count(*), 
  min(
    drivers_1.nationality), 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.forename
limit 26;
select  
  qualifying_1.position, 
  max(
    circuits_1.circuitref)
from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.driverid = qualifying_1.position
group by qualifying_1.position
limit 27;
select  
  standings_1.driverid
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.date = constructor_standings_1.date
limit 29;
select  
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.points
limit 2;
select  
  min(
    races_1.name)
from 
  qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_results_1.date = constructor_standings_1.date
limit 42;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  count(
    constructor_results_1.raceid), 
  count(
    constructor_results_1.constructorid), 
  constructor_results_1.date, 
  count(
    constructor_results_1.constructorid), 
  sum(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.points, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.points
limit 3;
select  
  results_1.statusid, 
  results_1.position, 
  results_1.constructorid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.date = results_1.date
limit 30;
select  
  races_1.round, 
  circuits_1.location, 
  sum(
    circuits_1.lng), 
  circuits_1.circuitref, 
  circuits_1.lat, 
  races_1.circuitid, 
  races_1.raceid, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  races_1.round, 
  min(
    circuits_1.name), 
  races_1.name, 
  circuits_1.circuitid, 
  min(
    races_1.name), 
  circuits_1.lat, 
  circuits_1.country, 
  races_1.date
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.circuitid is not NULL
group by races_1.round, circuits_1.location, circuits_1.circuitref, circuits_1.lat, races_1.circuitid, races_1.raceid, circuits_1.circuitref, circuits_1.circuitref, races_1.round, races_1.name, circuits_1.circuitid, circuits_1.lat, circuits_1.country, races_1.date
limit 22;
select  
  races_1.name, 
  max(
    races_1.raceid), 
  races_1.round, 
  races_1.raceid, 
  count(*), 
  races_1.raceid, 
  avg(
    races_1.round)
from 
  races as races_1
where races_1.round is not NULL
group by races_1.name, races_1.round, races_1.raceid, races_1.raceid
limit 2;
select  
  results_1.milliseconds
from 
  constructor_standings as constructor_standings_1
        inner join races as races_1
          inner join qualifying as qualifying_1
            inner join circuits as circuits_1
            on (qualifying_1.qualifyid = circuits_1.circuitid )
          on (races_1.raceid = qualifying_1.qualifyid )
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join results as results_2
    on (qualifying_1.qualifyid = results_2.resultid )
where results_2.milliseconds is not NULL
limit 34;
select  
  standings_1.position
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 2;
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  max(
    circuits_1.location), 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid, circuits_1.alt, circuits_1.circuitid, circuits_1.circuitid, circuits_1.location, circuits_1.circuitref, circuits_1.location
limit 19;
select  
  results_1.resultid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.points is not NULL
limit 15;
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.surname < drivers_1.nationality
limit 25;
select  
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 39;
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.name, 
  max(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.name
limit 7;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 20;
select  
  constructor_results_2.raceid, 
  results_1.statusid, 
  constructor_results_1.points, 
  races_1.date, 
  results_1.fastestlap, 
  constructor_results_1.constructorid, 
  results_1.raceid, 
  drivers_1.forename, 
  races_1.circuitid, 
  constructor_results_2.constructorresultsid, 
  drivers_1.driverid, 
  races_1.date, 
  min(
    results_1.constructorid), 
  drivers_1.dob, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  drivers as drivers_1
          inner join constructor_results as constructor_results_1
          on (drivers_1.driverid = constructor_results_1.constructorresultsid )
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      inner join constructor_results as constructor_results_2
      on (races_1.raceid = constructor_results_2.constructorresultsid )
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where races_1.time >= drivers_1.nationality
group by constructor_results_2.raceid, results_1.statusid, constructor_results_1.points, races_1.date, results_1.fastestlap, constructor_results_1.constructorid, results_1.raceid, drivers_1.forename, races_1.circuitid, constructor_results_2.constructorresultsid, drivers_1.driverid, races_1.date, drivers_1.dob, constructor_results_1.date, constructor_results_1.constructorid
limit 33;
select  
  standings_1.position, 
  max(
    drivers_1.dob), 
  standings_1.driverid, 
  constructor_results_1.date, 
  count(*), 
  constructor_results_1.constructorid, 
  count(
    drivers_1.surname), 
  constructor_results_1.date, 
  drivers_1.forename, 
  standings_1.wins, 
  avg(
    results_1.points), 
  max(
    standings_1.points), 
  constructors_1.constructorref, 
  results_1.number, 
  constructors_2.name, 
  constructor_results_1.constructorid, 
  constructors_1.nationality, 
  constructors_2.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructors_2.constructorid, 
  constructors_2.constructorid, 
  standings_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructors_2.constructorid, 
  constructors_2.constructorid, 
  constructors_1.name, 
  drivers_1.code, 
  drivers_1.forename, 
  max(
    results_1.points), 
  constructors_1.constructorref, 
  constructors_1.name, 
  results_1.laps, 
  constructors_2.name, 
  constructors_2.name, 
  drivers_1.code
from 
  constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join drivers as drivers_1
        inner join results as results_1
        on (drivers_1.driverid = results_1.resultid )
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where results_1.points <= results_1.milliseconds
group by standings_1.position, standings_1.driverid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.date, drivers_1.forename, standings_1.wins, constructors_1.constructorref, results_1.number, constructors_2.name, constructor_results_1.constructorid, constructors_1.nationality, constructors_2.constructorid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructors_2.constructorid, constructors_2.constructorid, standings_1.driverid, constructor_results_1.constructorid, constructor_results_1.points, constructors_2.constructorid, constructors_2.constructorid, constructors_1.name, drivers_1.code, drivers_1.forename, constructors_1.constructorref, constructors_1.name, results_1.laps, constructors_2.name, constructors_2.name, drivers_1.code
limit 10;
select  
  avg(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 2;
select  
  standings_1.driverstandingsid, 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverstandingsid
limit 28;
select  
  count(*), 
  standings_1.raceid, 
  count(
    standings_1.driverstandingsid), 
  qualifying_1.qualifyid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.points = standings_1.points
group by standings_1.raceid, qualifying_1.qualifyid
limit 12;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  count(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid
limit 16;
select distinct 
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.name
limit 23;
select  
  results_1.constructorid, 
  circuits_1.location
from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where constructor_standings_1.constructorid is not NULL
limit 4;
select  
  races_1.round, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.date, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.name is not NULL
limit 17;
select  
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.name
limit 26;
select  
  races_1.circuitid, 
  races_1.date
from 
  races as races_1
where races_1.date is not NULL
limit 41;
select  
  circuits_1.circuitid, 
  sum(
    circuits_1.alt), 
  min(
    races_1.time), 
  circuits_1.lng, 
  avg(
    races_1.raceid)
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.lng
limit 7;
select  
  drivers_1.code, 
  drivers_1.dob, 
  circuits_1.alt, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  drivers_1.nationality, 
  circuits_1.lat
from 
  drivers as drivers_1
    inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 32;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 22;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 27;
select  
  races_1.raceid
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.code is not NULL
limit 9;
select  
  constructors_1.nationality, 
  min(
    constructors_1.nationality), 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.nationality
limit 35;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 12;
select  
  constructor_standings_1.date, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.circuitid is not NULL
limit 23;
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.number < qualifying_1.constructorid
group by qualifying_1.position, qualifying_1.number, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.raceid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.raceid, qualifying_1.position
limit 2;
select  
  avg(
    results_1.positionorder), 
  results_1.position, 
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.lat is not NULL
group by results_1.position, circuits_1.circuitid
limit 10;
select  
  max(
    drivers_1.nationality), 
  qualifying_1.date, 
  max(
    qualifying_1.position), 
  drivers_1.code, 
  min(
    drivers_1.forename), 
  drivers_1.code, 
  qualifying_1.qualifyid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, drivers_1.code, drivers_1.code, qualifying_1.qualifyid
limit 39;
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position < constructor_standings_1.constructorstandingsid
limit 23;
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.points, 
  avg(
    standings_1.points), 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.wins, standings_1.position, standings_1.points, standings_1.points, standings_1.raceid, standings_1.raceid, standings_1.driverid
limit 24;
select  
  constructors_2.constructorid, 
  results_1.position, 
  qualifying_1.driverid
from 
  constructors as constructors_1
      inner join results as results_1
        inner join constructors as constructors_2
        on (results_1.resultid = constructors_2.constructorid )
      on (constructors_1.constructorid = results_1.resultid )
    inner join qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where qualifying_1.raceid is not NULL
limit 12;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  count(
    constructors_1.nationality), 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 32;
select  
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.time, 
  count(*), 
  races_1.date, 
  races_1.raceid, 
  races_1.name
from 
  races as races_1
where races_1.raceid >= races_1.circuitid
group by races_1.circuitid, races_1.circuitid, races_1.time, races_1.date, races_1.raceid, races_1.name
limit 7;
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  min(
    races_1.time), 
  min(
    circuits_1.name), 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_2.circuitref, 
  circuits_1.location, 
  circuits_2.alt, 
  circuits_2.lat
from 
  races as races_1
      inner join drivers as drivers_1
        inner join circuits as circuits_1
        on (drivers_1.driverid = circuits_1.circuitid )
      on (races_1.raceid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.alt is not NULL
group by drivers_1.forename, drivers_1.driverref, drivers_1.driverref, circuits_1.alt, circuits_1.name, circuits_2.circuitref, circuits_1.location, circuits_2.alt, circuits_2.lat
limit 3;
select  
  drivers_1.dob, 
  constructor_standings_1.raceid, 
  drivers_1.forename, 
  sum(
    results_1.position), 
  races_1.year
from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where results_1.rank is not NULL
group by drivers_1.dob, constructor_standings_1.raceid, drivers_1.forename, races_1.year
limit 1;
select  
  drivers_1.nationality
from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.driverref is not NULL
limit 25;
select  
  min(
    drivers_1.driverid), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.surname
limit 21;
select  
  drivers_2.nationality
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_1.driverid <= drivers_2.driverid
limit 42;
select  
  constructor_standings_3.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_2
        on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
      inner join constructor_standings as constructor_standings_3
      on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_3.date is not NULL
limit 23;
select  
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid
limit 25;
select  
  standings_1.date
from 
  standings as standings_1
where standings_1.points <= standings_1.points
limit 23;
select  
  circuits_1.name, 
  max(
    circuits_1.name), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.name, circuits_1.name, circuits_1.circuitref, circuits_1.circuitid, circuits_1.location, circuits_1.lng
limit 28;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    constructors_1.name), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  constructors_1.name, 
  count(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    constructors_1.name), 
  min(
    constructors_1.constructorid), 
  min(
    constructors_1.name), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, constructors_1.name
limit 13;
select  
  results_1.position, 
  results_1.milliseconds
from 
  results as results_1
where results_1.laps is not NULL
limit 30;
select  
  races_1.circuitid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  races_1.date, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid
from 
  races as races_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (races_1.raceid = qualifying_1.qualifyid )
where constructors_1.name is not NULL
limit 25;
select  
  circuits_1.lat, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 35;
select  
  drivers_1.surname, 
  results_1.laps, 
  results_1.driverid, 
  drivers_1.dob, 
  drivers_1.code, 
  max(
    results_1.grid), 
  results_1.raceid, 
  results_1.position, 
  avg(
    results_1.fastestlap), 
  drivers_1.forename, 
  results_1.raceid
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.grid is not NULL
group by drivers_1.surname, results_1.laps, results_1.driverid, drivers_1.dob, drivers_1.code, results_1.raceid, results_1.position, drivers_1.forename, results_1.raceid
limit 17;
select  
  results_1.number, 
  results_1.milliseconds, 
  results_1.fastestlap, 
  max(
    results_1.date)
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where circuits_1.name = circuits_1.location
group by results_1.number, results_1.milliseconds, results_1.fastestlap
limit 25;
select  
  max(
    constructor_results_1.date), 
  min(
    constructors_1.constructorid), 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date), 
  min(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructors_1.nationality, 
  max(
    constructors_1.name), 
  constructors_1.name, 
  constructor_results_1.constructorid, 
  constructors_1.nationality, 
  constructor_results_1.date, 
  constructors_1.nationality, 
  max(
    constructor_results_1.points), 
  min(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructors_1.constructorref
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.date, constructors_1.nationality, constructors_1.name, constructor_results_1.constructorid, constructors_1.nationality, constructor_results_1.date, constructors_1.nationality, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.date, constructors_1.constructorref
limit 39;
select  
  drivers_1.code, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 4;
select  
  circuits_1.lat, 
  count(
    circuits_1.lng), 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  min(
    circuits_1.circuitref)
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.lat, circuits_1.circuitref, circuits_1.lat, circuits_1.alt, circuits_1.circuitid
limit 8;
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.code, 
  max(
    drivers_1.forename), 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.dob, 
  min(
    drivers_1.driverref), 
  drivers_1.dob, 
  sum(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
group by drivers_1.dob, drivers_1.surname, drivers_1.nationality, drivers_1.code, drivers_1.driverid, drivers_1.dob, drivers_1.forename, drivers_1.dob, drivers_1.dob, drivers_1.driverid, drivers_1.driverid
limit 37;
select  
  results_1.positionorder, 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  min(
    results_1.date)
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.date > qualifying_1.date
group by results_1.positionorder, qualifying_1.position
limit 41;
select  
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 4;
select  
  races_1.time, 
  races_1.raceid, 
  qualifying_1.qualifyid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  min(
    races_1.date), 
  avg(
    qualifying_1.position), 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_1.time is not NULL
group by races_1.time, races_1.raceid, qualifying_1.qualifyid, constructor_standings_1.points, qualifying_1.raceid, qualifying_1.driverid, constructor_standings_1.points
limit 42;
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid >= standings_1.position
limit 4;
select  
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  count(*)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.name, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.name
limit 39;
select  
  circuits_1.location, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 6;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.forename, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  drivers_1.driverref
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.dob = constructor_standings_1.date
group by drivers_1.surname, drivers_1.dob, drivers_1.forename, drivers_1.forename, constructor_standings_1.raceid, constructor_standings_1.raceid, drivers_1.driverref
limit 18;
select  
  sum(
    qualifying_1.driverid), 
  qualifying_1.raceid, 
  qualifying_1.raceid
from 
  races as races_1
    inner join drivers as drivers_1
            inner join circuits as circuits_1
            on (drivers_1.driverid = circuits_1.circuitid )
          inner join constructor_standings as constructor_standings_1
          on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (races_1.raceid = qualifying_1.qualifyid )
where constructor_standings_1.wins is not NULL
group by qualifying_1.raceid, qualifying_1.raceid
limit 20;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 33;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 25;
select  
  standings_1.points, 
  min(
    constructor_standings_1.wins), 
  races_1.circuitid, 
  constructors_1.constructorref, 
  races_1.round, 
  races_1.year, 
  min(
    races_1.date), 
  constructor_standings_1.constructorstandingsid, 
  races_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  races_1.date, 
  constructor_standings_1.wins, 
  constructors_1.constructorref, 
  standings_1.driverid, 
  avg(
    standings_1.position), 
  constructor_standings_1.position, 
  races_1.name
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    on (constructors_1.constructorid = races_1.raceid )
where standings_1.position is not NULL
group by standings_1.points, races_1.circuitid, constructors_1.constructorref, races_1.round, races_1.year, constructor_standings_1.constructorstandingsid, races_1.name, constructors_1.constructorid, constructors_1.nationality, races_1.date, constructor_standings_1.wins, constructors_1.constructorref, standings_1.driverid, constructor_standings_1.position, races_1.name
limit 6;
select  
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  count(*), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.qualifyid
limit 39;
select  
  min(
    circuits_1.country), 
  circuits_1.name, 
  avg(
    circuits_1.alt), 
  circuits_1.alt, 
  max(
    circuits_1.alt), 
  circuits_1.circuitref, 
  count(
    circuits_1.lat), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.location, 
  count(
    circuits_1.name), 
  circuits_1.circuitref, 
  circuits_1.name, 
  min(
    circuits_1.location), 
  circuits_1.circuitref, 
  sum(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.name, circuits_1.alt, circuits_1.circuitref, circuits_1.lng, circuits_1.lng, circuits_1.circuitref, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.name, circuits_1.name, circuits_1.alt, circuits_1.location, circuits_1.circuitref, circuits_1.name, circuits_1.circuitref, circuits_1.name, circuits_1.circuitref, circuits_1.name, circuits_1.alt, circuits_1.alt
limit 14;
select  
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 12;
select  
  standings_1.position, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 15;
select  
  constructor_results_1.constructorid
from 
  races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_1.raceid is not NULL
limit 28;
select  
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 37;
select  
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
limit 27;
select  
  results_1.rank, 
  count(*)
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.rank
limit 10;
select  
  races_1.time, 
  standings_1.date, 
  max(
    results_1.date), 
  max(
    standings_1.date), 
  standings_1.date
from 
  standings as standings_1
    inner join races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.points = results_1.fastestlap
group by races_1.time, standings_1.date, standings_1.date
limit 36;
select  
  standings_1.points, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  min(
    standings_1.points), 
  standings_1.points, 
  standings_1.date, 
  min(
    standings_1.points), 
  standings_1.position, 
  standings_1.points, 
  standings_1.points, 
  standings_1.date, 
  standings_1.position, 
  standings_1.date, 
  sum(
    standings_1.driverid), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.raceid <= standings_1.position
group by standings_1.points, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.date, standings_1.position, standings_1.points, standings_1.points, standings_1.date, standings_1.position, standings_1.date, standings_1.date, standings_1.driverid, standings_1.points, standings_1.date
limit 38;
select  
  results_1.grid, 
  results_1.positionorder, 
  results_1.positionorder, 
  count(*)
from 
  results as results_1
where results_1.milliseconds < results_1.rank
group by results_1.grid, results_1.positionorder, results_1.positionorder
limit 22;
select  
  max(
    circuits_1.alt), 
  circuits_1.circuitid, 
  sum(
    circuits_1.circuitid)
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid
limit 5;
select  
  qualifying_1.number, 
  avg(
    constructor_standings_1.points), 
  min(
    qualifying_1.date), 
  max(
    constructor_standings_1.points), 
  max(
    constructors_1.constructorref)
from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by qualifying_1.number
limit 40;
select  
  drivers_1.forename, 
  drivers_1.forename, 
  min(
    drivers_1.forename), 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.dob, 
  min(
    drivers_1.surname), 
  max(
    drivers_1.forename), 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  max(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.surname), 
  drivers_1.forename, 
  drivers_1.nationality, 
  max(
    drivers_1.dob), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
group by drivers_1.forename, drivers_1.forename, drivers_1.nationality, drivers_1.nationality, drivers_1.dob, drivers_1.nationality, drivers_1.dob, drivers_1.forename, drivers_1.dob, drivers_1.forename, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.nationality, drivers_1.driverref, drivers_1.nationality, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 15;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
limit 21;
select  
  standings_1.driverstandingsid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 24;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  standings_1.date, 
  constructors_1.nationality, 
  standings_1.position, 
  standings_1.date
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.date >= standings_1.date
limit 28;
select  
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.lat, 
  sum(
    circuits_1.circuitid), 
  circuits_1.alt, 
  max(
    circuits_1.location), 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lng < circuits_1.lat
group by circuits_1.name, circuits_1.location, circuits_1.alt, circuits_1.circuitid, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitid, circuits_1.name, circuits_1.lat, circuits_1.alt, circuits_1.location, circuits_1.circuitref, circuits_1.circuitid, circuits_1.circuitid
limit 2;
select  
  constructors_2.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    constructors_2.name), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_2.name, 
  count(
    constructors_1.name), 
  min(
    constructors_1.constructorid), 
  constructors_2.constructorid, 
  max(
    constructors_1.constructorref), 
  constructors_2.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_2.constructorid, 
  constructors_2.nationality, 
  constructors_1.constructorref, 
  constructors_2.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_2.nationality, 
  constructors_2.name, 
  max(
    constructors_2.name), 
  min(
    constructors_1.nationality), 
  constructors_1.name, 
  constructors_2.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_2.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  count(*)
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.name is not NULL
group by constructors_2.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorref, constructors_2.name, constructors_2.constructorid, constructors_2.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_2.constructorid, constructors_2.nationality, constructors_1.constructorref, constructors_2.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_2.nationality, constructors_2.name, constructors_1.name, constructors_2.constructorid, constructors_1.nationality, constructors_1.name, constructors_2.name, constructors_1.constructorid, constructors_1.name
limit 37;
select  
  standings_1.driverid, 
  standings_1.points
from 
  standings as standings_1
where standings_1.date < standings_1.date
limit 16;
select  
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 28;
select  
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date <= standings_1.date
limit 21;
select  
  constructor_standings_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.constructorid, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.date is not NULL
limit 31;
select  
  races_1.date, 
  races_1.round, 
  races_1.round, 
  races_1.raceid
from 
  races as races_1
where races_1.raceid is not NULL
limit 11;
select  
  constructors_2.constructorref, 
  results_1.positionorder, 
  min(
    results_1.milliseconds), 
  constructors_1.constructorref
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      on (constructors_1.constructorid = results_1.resultid )
    inner join constructors as constructors_2
      inner join constructor_standings as constructor_standings_1
      on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
where constructor_results_1.date is not NULL
group by constructors_2.constructorref, results_1.positionorder, constructors_1.constructorref
limit 10;
select  
  min(
    qualifying_1.position), 
  qualifying_1.driverid
from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.fastestlap is not NULL
group by qualifying_1.driverid
limit 21;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 17;
select  
  drivers_1.surname, 
  circuits_1.location, 
  circuits_1.name
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.dob >= drivers_1.dob
limit 17;
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 39;
select  
  races_1.year, 
  races_1.name, 
  races_1.raceid, 
  races_1.year, 
  races_1.circuitid
from 
  races as races_1
where races_1.raceid is not NULL
limit 19;
select  
  circuits_1.alt, 
  circuits_1.circuitref, 
  max(
    circuits_1.name)
from 
  circuits as circuits_1
where circuits_1.circuitref > circuits_1.name
group by circuits_1.alt, circuits_1.circuitref
limit 20;
select  
  standings_1.date, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.points, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.date
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 27;
select  
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.forename, drivers_1.dob, drivers_1.surname, drivers_1.driverid, drivers_1.nationality, drivers_1.nationality, drivers_1.code, drivers_1.code
limit 20;
select  
  standings_1.wins
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 22;
select  
  constructor_results_1.constructorid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.position is not NULL
limit 12;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructors_2.nationality, 
  sum(
    standings_1.points), 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  constructors_2.nationality, 
  constructors_1.name, 
  constructor_results_1.raceid, 
  qualifying_1.number, 
  qualifying_1.date, 
  standings_1.date, 
  constructors_1.name, 
  avg(
    standings_1.points), 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  min(
    constructors_2.name), 
  constructors_2.constructorref, 
  sum(
    standings_1.points), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.qualifyid = constructors_1.constructorid )
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (standings_1.driverstandingsid = constructors_2.constructorid )
where constructors_2.constructorid is not NULL
group by qualifying_1.position, qualifying_1.position, constructor_results_1.date, constructor_results_1.date, constructors_2.nationality, standings_1.driverstandingsid, standings_1.date, standings_1.position, constructors_2.nationality, constructors_1.name, constructor_results_1.raceid, qualifying_1.number, qualifying_1.date, standings_1.date, constructors_1.name, qualifying_1.raceid, qualifying_1.raceid, constructors_2.constructorref, constructor_results_1.raceid
limit 38;
select  
  circuits_1.location, 
  circuits_1.lng, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  circuits_1.circuitref, 
  results_1.driverid, 
  constructor_results_1.raceid, 
  sum(
    results_1.constructorid)
from 
  results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_2
    on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
where circuits_1.circuitid < constructor_results_1.constructorresultsid
group by circuits_1.location, circuits_1.lng, constructor_results_1.raceid, constructor_results_1.raceid, circuits_1.circuitref, results_1.driverid, constructor_results_1.raceid
limit 1;
select  
  races_1.time, 
  races_1.name
from 
  races as races_1
where races_1.year is not NULL
limit 2;
select  
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  sum(
    circuits_1.alt), 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  sum(
    circuits_1.alt), 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.alt, circuits_1.country, circuits_1.circuitid, circuits_1.lng, circuits_1.lat, circuits_1.circuitid, circuits_1.circuitid, circuits_1.lat, circuits_1.circuitref, circuits_1.circuitid
limit 2;
select  
  constructors_1.constructorref, 
  min(
    constructors_1.nationality), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  count(
    constructors_1.constructorref), 
  min(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.nationality
limit 1;
select  
  min(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.location, 
  avg(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.lat, circuits_1.name, circuits_1.lng, circuits_1.country, circuits_1.location
limit 4;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 36;
select  
  races_1.time
from 
  races as races_1
where races_1.name is not NULL
limit 11;
select  
  max(
    constructors_1.nationality), 
  constructor_results_1.date, 
  min(
    constructors_1.nationality)
from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where constructors_1.constructorid > races_1.round
group by constructor_results_1.date
limit 39;
select  
  standings_1.date, 
  races_1.name, 
  races_1.raceid, 
  races_1.round, 
  standings_1.position, 
  min(
    standings_1.points), 
  standings_1.position
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.points is not NULL
group by standings_1.date, races_1.name, races_1.raceid, races_1.round, standings_1.position, standings_1.position
limit 38;
select  
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.number
limit 26;
select  
  qualifying_1.number, 
  count(*), 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  count(*), 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.number, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.position, qualifying_1.position, qualifying_1.number, qualifying_1.number, qualifying_1.position
limit 1;
select  
  races_1.circuitid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  results_1.date, 
  results_1.laps, 
  results_1.date, 
  constructor_results_1.points, 
  sum(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid
from 
  results as results_1
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = races_1.raceid )
where constructor_results_1.raceid is not NULL
group by races_1.circuitid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, results_1.date, results_1.laps, results_1.date, constructor_results_1.points, constructor_results_1.constructorid
limit 18;
select  
  constructor_results_1.constructorid, 
  circuits_1.lng, 
  results_1.resultid, 
  results_1.number
from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where circuits_1.alt is not NULL
limit 34;
select  
  constructor_standings_1.raceid, 
  races_1.time, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  races_1.name
from 
  constructor_standings as constructor_standings_1
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.circuitid is not NULL
limit 27;
select  
  constructor_standings_1.constructorid
from 
  races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where races_1.raceid is not NULL
limit 14;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 29;
select  
  max(
    circuits_1.circuitref), 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.name, 
  min(
    circuits_1.country), 
  circuits_1.lat, 
  circuits_1.circuitid, 
  count(*), 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitref, circuits_1.name, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.alt, circuits_1.name, circuits_1.lat, circuits_1.circuitid, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitref
limit 10;
select  
  qualifying_1.date, 
  min(
    circuits_1.country), 
  circuits_1.country, 
  qualifying_1.driverid, 
  count(
    circuits_1.lat), 
  circuits_1.location, 
  max(
    circuits_1.country), 
  circuits_1.circuitid, 
  qualifying_1.date, 
  qualifying_1.date, 
  circuits_1.lng, 
  avg(
    circuits_1.alt), 
  qualifying_1.date, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.location
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.date < qualifying_1.date
group by qualifying_1.date, circuits_1.country, qualifying_1.driverid, circuits_1.location, circuits_1.circuitid, qualifying_1.date, qualifying_1.date, circuits_1.lng, qualifying_1.date, circuits_1.name, circuits_1.country, circuits_1.circuitid, circuits_1.circuitid, circuits_1.location
limit 27;
select  
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.position = standings_1.raceid
limit 31;
select  
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.position, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
group by qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.date, qualifying_1.position
limit 39;
select  
  constructors_1.nationality, 
  min(
    standings_1.date), 
  constructors_1.constructorref, 
  standings_1.position, 
  max(
    standings_1.date)
from 
  standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructors_1.nationality, constructors_1.constructorref, standings_1.position
limit 38;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.constructorid), 
  constructor_standings_1.points, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.points, constructor_standings_1.date
limit 41;
select  
  drivers_1.dob
from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join races as races_1
          inner join standings as standings_1
          on (races_1.raceid = standings_1.driverstandingsid )
        inner join qualifying as qualifying_1
          inner join results as results_1
          on (qualifying_1.qualifyid = results_1.resultid )
        on (races_1.raceid = results_1.resultid )
      on (drivers_1.driverid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
limit 29;
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.dob, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.forename, drivers_1.driverid, drivers_1.dob
limit 6;
select  
  max(
    drivers_1.driverid), 
  drivers_1.driverid, 
  circuits_1.country, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_2.nationality, 
  drivers_2.surname, 
  circuits_1.alt, 
  circuits_1.lat
from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.lat is not NULL
group by drivers_1.driverid, circuits_1.country, drivers_1.dob, drivers_1.dob, drivers_2.nationality, drivers_2.surname, circuits_1.alt, circuits_1.lat
limit 6;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_1.raceid is not NULL
limit 19;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.points > constructor_results_1.points
limit 7;
select  
  sum(
    results_1.resultid)
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.resultid is not NULL
limit 11;
select  
  results_1.grid, 
  results_1.driverid, 
  max(
    results_1.resultid), 
  results_1.laps
from 
  results as results_1
where results_1.date = results_1.date
group by results_1.grid, results_1.driverid, results_1.laps
limit 21;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
limit 37;
select  
  results_1.points, 
  circuits_2.lng, 
  constructors_1.constructorref, 
  standings_1.driverstandingsid, 
  constructor_results_1.points
from 
  standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      inner join drivers as drivers_1
          inner join circuits as circuits_2
          on (drivers_1.driverid = circuits_2.circuitid )
        inner join constructors as constructors_1
          inner join races as races_1
          on (constructors_1.constructorid = races_1.raceid )
        on (drivers_1.driverid = constructors_1.constructorid )
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join results as results_1
      inner join drivers as drivers_2
        inner join constructor_results as constructor_results_1
        on (drivers_2.driverid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = drivers_2.driverid )
    on (drivers_1.driverid = drivers_2.driverid )
where constructor_results_1.date = drivers_2.dob
limit 31;
select  
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    drivers_1.nationality), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_2.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_2.constructorid, 
  max(
    constructor_standings_2.points), 
  drivers_1.driverid, 
  constructor_standings_2.raceid, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_2.constructorid, 
  constructor_standings_2.raceid, 
  constructor_standings_2.position, 
  avg(
    constructor_standings_2.constructorstandingsid), 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_2.constructorstandingsid, 
  drivers_1.nationality, 
  constructor_standings_1.constructorstandingsid
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_2.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_2.constructorid, drivers_1.driverid, constructor_standings_2.raceid, constructor_standings_2.constructorstandingsid, constructor_standings_1.points, constructor_standings_2.constructorid, constructor_standings_2.raceid, constructor_standings_2.position, constructor_standings_2.constructorstandingsid, constructor_standings_2.constructorstandingsid, drivers_1.nationality, constructor_standings_1.constructorstandingsid
limit 41;
select  
  circuits_1.lng, 
  circuits_1.circuitref, 
  drivers_1.nationality, 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  standings_1.points, 
  drivers_1.dob, 
  standings_1.date, 
  circuits_1.location, 
  min(
    circuits_1.location)
from 
  standings as standings_1
    inner join drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = drivers_1.driverid )
where circuits_1.circuitid is not NULL
group by circuits_1.lng, circuits_1.circuitref, drivers_1.nationality, drivers_1.code, standings_1.points, drivers_1.dob, standings_1.date, circuits_1.location
limit 3;
select  
  races_1.name, 
  races_1.time, 
  max(
    races_1.time), 
  max(
    races_1.name), 
  max(
    races_1.date), 
  races_1.round, 
  max(
    races_1.date)
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.name, races_1.time, races_1.round
limit 31;
select  
  races_1.date, 
  races_1.time, 
  races_1.circuitid, 
  races_1.raceid
from 
  races as races_1
where races_1.round = races_1.year
limit 23;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid
limit 27;
select  
  qualifying_1.constructorid, 
  races_1.circuitid, 
  races_1.year, 
  qualifying_1.number, 
  min(
    races_1.time), 
  races_1.round, 
  min(
    races_1.time), 
  max(
    races_1.date), 
  qualifying_1.qualifyid, 
  races_1.date, 
  races_1.round, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date), 
  qualifying_1.raceid, 
  races_1.time
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.year is not NULL
group by qualifying_1.constructorid, races_1.circuitid, races_1.year, qualifying_1.number, races_1.round, qualifying_1.qualifyid, races_1.date, races_1.round, qualifying_1.constructorid, qualifying_1.raceid, races_1.time
limit 25;
select  
  max(
    constructor_standings_1.constructorid), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points
limit 22;
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.name > circuits_1.location
limit 38;
select  
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.constructorid), 
  constructor_standings_1.wins, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.date
limit 29;
select  
  max(
    qualifying_1.qualifyid), 
  qualifying_1.qualifyid, 
  avg(
    qualifying_1.number), 
  drivers_1.nationality, 
  drivers_1.nationality, 
  avg(
    qualifying_1.position), 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.position <= qualifying_1.number
group by qualifying_1.qualifyid, drivers_1.nationality, drivers_1.nationality, qualifying_1.constructorid, qualifying_1.raceid, qualifying_1.qualifyid, qualifying_1.raceid
limit 31;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 3;
select  
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 40;
select  
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 36;
select  
  max(
    circuits_1.alt), 
  circuits_1.lat, 
  circuits_1.lat, 
  count(*)
from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
group by circuits_1.lat, circuits_1.lat
limit 5;
select  
  results_1.driverid, 
  results_1.raceid, 
  results_1.resultid, 
  max(
    results_1.number)
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.driverid, results_1.raceid, results_1.resultid
limit 33;
select  
  min(
    drivers_1.driverid), 
  count(*), 
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  max(
    drivers_1.nationality), 
  min(
    drivers_1.code), 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.forename, drivers_1.driverref
limit 5;
select  
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.location, 
  max(
    circuits_1.name), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.location, 
  min(
    circuits_1.location), 
  circuits_1.lng, 
  max(
    circuits_1.alt), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.name, circuits_1.country, circuits_1.circuitid, circuits_1.location, circuits_1.lng, circuits_1.lng, circuits_1.circuitid, circuits_1.lat, circuits_1.country, circuits_1.circuitref, circuits_1.country, circuits_1.name, circuits_1.location, circuits_1.lng, circuits_1.location
limit 30;
select  
  max(
    drivers_1.forename), 
  drivers_1.code, 
  min(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.dob, drivers_1.code, drivers_1.surname, drivers_1.dob, drivers_1.surname
limit 5;
select  
  constructors_1.constructorid, 
  max(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  max(
    constructors_1.nationality), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid
limit 10;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 24;
select  
  constructor_standings_1.raceid, 
  min(
    constructors_1.nationality)
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructors_1.name is not NULL
group by constructor_standings_1.raceid
limit 16;
select  
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorid
limit 29;
select  
  min(
    races_1.round)
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
limit 37;
select  
  results_1.number, 
  circuits_1.lng, 
  circuits_1.alt, 
  results_1.points, 
  circuits_1.alt, 
  results_1.statusid, 
  circuits_1.location, 
  max(
    circuits_1.country), 
  results_1.position, 
  circuits_1.circuitid, 
  circuits_1.lat
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.fastestlap is not NULL
group by results_1.number, circuits_1.lng, circuits_1.alt, results_1.points, circuits_1.alt, results_1.statusid, circuits_1.location, results_1.position, circuits_1.circuitid, circuits_1.lat
limit 15;
select  
  results_1.position, 
  results_1.driverid, 
  results_1.grid, 
  max(
    results_1.fastestlap), 
  results_1.driverid, 
  results_1.rank, 
  results_1.position, 
  results_1.number, 
  max(
    results_1.grid), 
  results_1.points, 
  results_1.resultid, 
  results_1.driverid, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.positionorder, 
  results_1.rank, 
  results_1.rank, 
  results_1.positionorder, 
  results_1.laps, 
  min(
    results_1.points), 
  results_1.number, 
  results_1.points, 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.points, 
  results_1.milliseconds
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.position, results_1.driverid, results_1.grid, results_1.driverid, results_1.rank, results_1.position, results_1.number, results_1.points, results_1.resultid, results_1.driverid, results_1.milliseconds, results_1.number, results_1.positionorder, results_1.rank, results_1.rank, results_1.positionorder, results_1.laps, results_1.number, results_1.points, results_1.positionorder, results_1.resultid, results_1.points, results_1.milliseconds
limit 12;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 29;
select  
  constructor_standings_2.date, 
  max(
    circuits_1.country), 
  drivers_1.driverid, 
  min(
    circuits_1.location), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  races_1.time, 
  constructor_results_1.raceid, 
  min(
    constructor_standings_2.date), 
  drivers_1.code, 
  drivers_1.nationality, 
  circuits_1.alt, 
  min(
    constructor_standings_2.constructorstandingsid), 
  constructor_standings_2.date, 
  races_1.time
from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join constructor_standings as constructor_standings_2
        inner join races as races_1
        on (constructor_standings_2.constructorstandingsid = races_1.raceid )
      on (circuits_1.circuitid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where circuits_1.name is not NULL
group by constructor_standings_2.date, drivers_1.driverid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, races_1.time, constructor_results_1.raceid, drivers_1.code, drivers_1.nationality, circuits_1.alt, constructor_standings_2.date, races_1.time
limit 5;
select  
  races_1.raceid, 
  standings_1.position
from 
  races as races_1
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.name < races_1.time
limit 7;
select  
  results_1.milliseconds, 
  results_1.fastestlap, 
  results_1.fastestlap, 
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.date, 
  max(
    results_1.driverid), 
  results_1.laps, 
  results_1.grid, 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.points, 
  results_1.constructorid, 
  results_1.points, 
  sum(
    results_1.statusid)
from 
  results as results_1
where results_1.milliseconds >= results_1.rank
group by results_1.milliseconds, results_1.fastestlap, results_1.fastestlap, results_1.constructorid, results_1.constructorid, results_1.positionorder, results_1.fastestlap, results_1.date, results_1.laps, results_1.grid, results_1.constructorid, results_1.fastestlap, results_1.resultid, results_1.points, results_1.constructorid, results_1.points
limit 34;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid > constructor_results_1.raceid
limit 11;
select  
  results_1.laps, 
  results_1.rank, 
  results_1.rank, 
  min(
    results_1.rank)
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.milliseconds is not NULL
group by results_1.laps, results_1.rank, results_1.rank
limit 40;
select  
  sum(
    qualifying_1.qualifyid)
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.points = constructor_results_1.points
limit 39;
select  
  circuits_1.location, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.lng is not NULL
limit 12;
select  
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.qualifyid, qualifying_1.constructorid
limit 30;
select  
  standings_1.driverstandingsid, 
  max(
    races_1.date), 
  qualifying_1.qualifyid, 
  standings_1.raceid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = races_1.raceid )
where standings_1.date is not NULL
group by standings_1.driverstandingsid, qualifying_1.qualifyid, standings_1.raceid, qualifying_1.date
limit 16;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 12;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.raceid), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  avg(
    constructor_results_1.points), 
  max(
    constructors_1.constructorref), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  avg(
    constructor_results_1.points), 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructors_1.nationality, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, constructor_results_1.raceid, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructor_results_1.constructorid, constructor_results_1.constructorid, constructors_1.nationality, constructor_results_1.constructorid, constructor_results_1.raceid, constructors_1.nationality
limit 37;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  results_1.resultid, 
  max(
    constructor_results_1.date)
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.fastestlap is not NULL
group by constructor_results_1.date, constructor_results_1.raceid, results_1.resultid
limit 13;
select distinct 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid >= constructor_results_1.constructorresultsid
limit 8;
select  
  min(
    races_1.date), 
  races_1.time
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.time
limit 35;
select  
  results_1.rank, 
  results_1.grid, 
  avg(
    results_1.milliseconds), 
  results_1.positionorder, 
  min(
    results_1.date), 
  avg(
    results_1.statusid), 
  results_1.raceid
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.rank, results_1.grid, results_1.positionorder, results_1.raceid
limit 32;
select  
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.location, 
  count(
    circuits_1.lat), 
  count(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
group by circuits_1.country, circuits_1.lat, circuits_1.location
limit 25;
select  
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.surname, 
  min(
    results_1.positionorder), 
  results_1.milliseconds, 
  drivers_1.forename, 
  count(
    drivers_1.surname), 
  results_1.raceid, 
  drivers_1.code
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.forename = drivers_1.nationality
group by drivers_1.driverid, drivers_1.driverid, drivers_1.surname, results_1.milliseconds, drivers_1.forename, results_1.raceid, drivers_1.code
limit 2;
select  
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 23;
select  
  drivers_1.code, 
  drivers_1.code, 
  count(
    drivers_1.dob), 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.code, drivers_1.forename, drivers_1.code, drivers_1.surname
limit 35;
select  
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  count(
    qualifying_1.constructorid), 
  max(
    qualifying_1.qualifyid), 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.date, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.raceid, qualifying_1.driverid
limit 25;
select  
  min(
    constructor_results_1.date), 
  constructor_standings_2.wins, 
  constructors_1.constructorref, 
  count(
    constructor_standings_1.date), 
  circuits_1.circuitref, 
  constructor_results_2.constructorid, 
  constructor_standings_1.wins, 
  circuits_1.location
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_2
            inner join circuits as circuits_1
            on (constructor_standings_2.constructorstandingsid = circuits_1.circuitid )
          inner join constructor_results as constructor_results_1
            inner join drivers as drivers_1
            on (constructor_results_1.constructorresultsid = drivers_1.driverid )
          on (constructor_standings_2.constructorstandingsid = drivers_1.driverid )
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_standings_2.wins, constructors_1.constructorref, circuits_1.circuitref, constructor_results_2.constructorid, constructor_standings_1.wins, circuits_1.location
limit 22;
select  
  standings_1.points, 
  standings_1.driverstandingsid, 
  qualifying_1.raceid
from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.position is not NULL
limit 5;
select  
  max(
    results_1.date), 
  standings_1.points, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.date, 
  results_1.number
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where results_1.laps is not NULL
group by standings_1.points, standings_1.raceid, standings_1.date, results_1.number
limit 11;
select  
  qualifying_1.raceid, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 32;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.dob, 
  sum(
    drivers_1.driverid), 
  drivers_1.code, 
  count(
    drivers_1.nationality), 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
group by drivers_1.driverref, drivers_1.dob, drivers_1.dob, drivers_1.code, drivers_1.forename, drivers_1.surname, drivers_1.nationality, drivers_1.code, drivers_1.nationality, drivers_1.dob
limit 30;
select  
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points
limit 3;
select  
  circuits_1.circuitref, 
  avg(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.name, 
  max(
    circuits_1.location), 
  circuits_1.alt, 
  count(*), 
  circuits_1.alt, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitref, circuits_1.circuitref, circuits_1.name, circuits_1.alt, circuits_1.alt, circuits_1.circuitid
limit 13;
select  
  qualifying_1.number, 
  races_1.year
from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.raceid is not NULL
limit 4;
select  
  qualifying_2.qualifyid, 
  results_1.resultid, 
  min(
    qualifying_2.date), 
  qualifying_1.driverid, 
  min(
    results_1.date), 
  standings_2.points, 
  qualifying_1.driverid, 
  sum(
    results_1.statusid), 
  count(
    qualifying_2.qualifyid), 
  standings_1.position, 
  qualifying_2.number
from 
  standings as standings_1
    inner join standings as standings_2
          inner join qualifying as qualifying_1
          on (standings_2.driverstandingsid = qualifying_1.qualifyid )
        inner join qualifying as qualifying_2
        on (standings_2.driverstandingsid = qualifying_2.qualifyid )
      inner join results as results_1
      on (qualifying_2.qualifyid = results_1.resultid )
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_2.driverid is not NULL
group by qualifying_2.qualifyid, results_1.resultid, qualifying_1.driverid, standings_2.points, qualifying_1.driverid, standings_1.position, qualifying_2.number
limit 6;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 35;
select  
  drivers_2.driverid, 
  max(
    circuits_1.alt), 
  drivers_1.dob, 
  drivers_2.driverid, 
  constructors_1.nationality, 
  constructor_standings_1.points
from 
  circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.nationality <= drivers_2.surname
group by drivers_2.driverid, drivers_1.dob, drivers_2.driverid, constructors_1.nationality, constructor_standings_1.points
limit 17;
select  
  max(
    constructor_standings_1.raceid), 
  min(
    constructor_standings_1.position), 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
group by constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorid, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.position
limit 19;
select  
  drivers_1.surname, 
  min(
    drivers_1.forename)
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    on (drivers_1.driverid = qualifying_1.qualifyid )
where results_1.grid = qualifying_1.constructorid
group by drivers_1.surname
limit 26;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  standings_1.position, 
  constructor_results_1.date, 
  standings_1.raceid, 
  standings_1.points, 
  max(
    standings_1.date), 
  constructor_results_1.points, 
  standings_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  standings_1.driverid, 
  standings_1.driverid, 
  constructor_results_1.date
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.date, standings_1.position, constructor_results_1.date, standings_1.raceid, standings_1.points, constructor_results_1.points, standings_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, standings_1.driverid, standings_1.driverid, constructor_results_1.date
limit 5;
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  races_1.circuitid
from 
  races as races_1
where races_1.raceid <= races_1.circuitid
limit 41;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  count(
    constructor_standings_1.wins), 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.raceid
limit 35;
select  
  min(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.points < standings_1.points
group by standings_1.raceid, standings_1.driverstandingsid, drivers_1.surname
limit 26;
select  
  drivers_1.driverid, 
  max(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.driverid
limit 21;
select  
  races_1.raceid, 
  races_1.date, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.raceid, races_1.date
limit 14;
select  
  qualifying_1.qualifyid
from 
  drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join circuits as circuits_2
        inner join drivers as drivers_2
          inner join constructors as constructors_1
          on (drivers_2.driverid = constructors_1.constructorid )
        on (circuits_2.circuitid = drivers_2.driverid )
      inner join constructors as constructors_2
          inner join qualifying as qualifying_1
          on (constructors_2.constructorid = qualifying_1.qualifyid )
        inner join constructor_standings as constructor_standings_2
        on (constructors_2.constructorid = constructor_standings_2.constructorstandingsid )
      on (drivers_2.driverid = constructors_2.constructorid )
    on (drivers_1.driverid = drivers_2.driverid )
where constructors_1.nationality is not NULL
limit 26;
select  
  drivers_1.nationality, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  drivers_1.surname, 
  drivers_1.nationality, 
  results_1.milliseconds, 
  qualifying_1.date
from 
  qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.nationality <= drivers_1.code
limit 21;
select  
  qualifying_1.driverid, 
  count(*), 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid
limit 28;
select  
  qualifying_1.driverid, 
  constructor_standings_1.raceid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points >= constructor_standings_1.points
limit 17;
select  
  constructor_standings_2.position, 
  max(
    constructor_standings_2.raceid), 
  sum(
    constructor_standings_2.constructorid), 
  constructor_standings_1.raceid, 
  qualifying_1.raceid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
group by constructor_standings_2.position, constructor_standings_1.raceid, qualifying_1.raceid
limit 20;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 3;
select  
  qualifying_1.constructorid, 
  avg(
    qualifying_1.number), 
  max(
    drivers_1.nationality), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  qualifying_1.date, 
  drivers_1.code, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, drivers_1.driverref, drivers_1.driverref, qualifying_1.date, drivers_1.code, qualifying_1.number
limit 29;
select  
  qualifying_1.constructorid, 
  circuits_2.lat, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (qualifying_1.qualifyid = circuits_2.circuitid )
where qualifying_1.position < circuits_1.circuitid
group by qualifying_1.constructorid, circuits_2.lat, qualifying_1.number, qualifying_1.number, qualifying_1.constructorid
limit 6;
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 35;
select  
  standings_1.position, 
  constructors_1.constructorid, 
  standings_1.position, 
  max(
    drivers_1.surname), 
  constructors_1.nationality, 
  drivers_1.surname, 
  constructors_1.constructorid
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by standings_1.position, constructors_1.constructorid, standings_1.position, constructors_1.nationality, drivers_1.surname, constructors_1.constructorid
limit 23;
select  
  qualifying_2.raceid, 
  qualifying_2.driverid, 
  qualifying_2.position
from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.raceid is not NULL
limit 36;
select  
  circuits_1.lng, 
  min(
    circuits_1.location), 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.lng, circuits_1.alt, circuits_1.name, circuits_1.name
limit 28;
select  
  standings_1.wins, 
  results_1.date, 
  standings_1.driverid, 
  constructors_2.nationality, 
  max(
    constructors_1.nationality), 
  circuits_1.country, 
  min(
    standings_1.wins), 
  avg(
    results_1.milliseconds), 
  circuits_1.lat, 
  results_1.position
from 
  constructors as constructors_1
      inner join constructors as constructors_2
        inner join standings as standings_1
          inner join results as results_1
          on (standings_1.driverstandingsid = results_1.resultid )
        on (constructors_2.constructorid = results_1.resultid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where results_1.milliseconds > results_1.number
group by standings_1.wins, results_1.date, standings_1.driverid, constructors_2.nationality, circuits_1.country, circuits_1.lat, results_1.position
limit 35;
select  
  races_1.round, 
  max(
    races_1.raceid)
from 
  races as races_1
where races_1.time is not NULL
group by races_1.round
limit 29;
select  
  races_2.round, 
  races_1.time, 
  races_2.year, 
  min(
    races_2.date)
from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.name is not NULL
group by races_2.round, races_1.time, races_2.year
limit 7;
select  
  constructor_standings_1.wins, 
  constructors_1.nationality, 
  constructor_standings_1.raceid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructors_1.name, 
  constructor_standings_1.wins, 
  constructor_standings_1.date
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid >= constructor_standings_1.constructorstandingsid
limit 4;
select  
  circuits_1.circuitid, 
  sum(
    circuits_1.lat), 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid, circuits_1.circuitid, circuits_1.country, circuits_1.alt, circuits_1.lng, circuits_1.name, circuits_1.name
limit 4;
select  
  standings_1.driverstandingsid
from 
  drivers as drivers_1
    inner join circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (standings_1.driverstandingsid = constructors_2.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.nationality is not NULL
limit 25;
select  
  constructor_standings_1.constructorstandingsid, 
  min(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  constructor_standings_1.date, 
  standings_1.driverstandingsid, 
  constructor_standings_1.date
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.raceid <= standings_1.driverstandingsid
group by constructor_standings_1.constructorstandingsid, standings_1.raceid, standings_1.driverid, standings_1.driverstandingsid, constructor_standings_1.date, standings_1.driverstandingsid, constructor_standings_1.date
limit 21;
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name
limit 14;
select  
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.driverid > standings_1.position
limit 16;
select distinct 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.location, 
  sum(
    circuits_1.lng), 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.location, circuits_1.country, circuits_1.location, circuits_1.lng, circuits_1.lat, circuits_1.location, circuits_1.circuitid, circuits_1.location, circuits_1.alt, circuits_1.location, circuits_1.name, circuits_1.circuitid
limit 19;
select  
  results_1.statusid, 
  results_1.points, 
  results_1.raceid, 
  drivers_1.code, 
  drivers_1.code
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.date < drivers_1.dob
limit 39;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorref), 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  min(
    constructors_1.name), 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality > constructors_1.constructorref
group by constructors_1.nationality, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid
limit 38;
select  
  standings_1.position, 
  count(*), 
  standings_1.date, 
  standings_1.position, 
  standings_1.points, 
  standings_1.date
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.position, standings_1.date, standings_1.position, standings_1.points, standings_1.date
limit 36;
select  
  circuits_1.circuitid, 
  max(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.surname
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.lat <= circuits_1.alt
group by circuits_1.circuitid, drivers_1.driverref, drivers_1.surname, drivers_1.surname
limit 16;
select  
  results_1.grid, 
  results_1.number, 
  results_1.laps, 
  results_1.number, 
  results_1.date, 
  results_1.laps, 
  results_1.constructorid, 
  results_1.grid, 
  results_1.positionorder
from 
  results as results_1
where results_1.rank is not NULL
limit 38;
select  
  results_1.positionorder, 
  avg(
    results_2.constructorid), 
  results_2.rank
from 
  results as results_1
      inner join results as results_2
        inner join results as results_3
        on (results_2.resultid = results_3.resultid )
      on (results_1.resultid = results_2.resultid )
    inner join circuits as circuits_1
    on (results_2.resultid = circuits_1.circuitid )
where results_2.points <= results_2.rank
group by results_1.positionorder, results_2.rank
limit 29;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
limit 26;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.raceid), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 36;
select  
  circuits_1.alt, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 34;
select  
  constructors_1.name, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_1.raceid is not NULL
limit 8;
select  
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 14;
select  
  circuits_1.lng, 
  qualifying_1.position, 
  circuits_1.location, 
  standings_1.wins, 
  standings_1.date, 
  qualifying_1.driverid, 
  max(
    races_1.time), 
  circuits_1.name, 
  count(*), 
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where races_1.raceid is not NULL
group by circuits_1.lng, qualifying_1.position, circuits_1.location, standings_1.wins, standings_1.date, qualifying_1.driverid, circuits_1.name, standings_1.driverstandingsid, standings_1.raceid
limit 16;
select  
  constructor_results_1.constructorresultsid, 
  max(
    circuits_1.country), 
  constructor_results_1.constructorid
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.circuitref is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid
limit 13;
select  
  standings_1.date, 
  count(*)
from 
  standings as standings_1
where standings_1.points < standings_1.points
group by standings_1.date
limit 18;
select  
  count(*), 
  results_1.driverid, 
  results_1.constructorid, 
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.rank, 
  min(
    results_1.date)
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.driverid, results_1.constructorid, results_1.driverid, results_1.fastestlap, results_1.rank
limit 9;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 4;
select  
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  avg(
    circuits_1.circuitid), 
  circuits_1.alt, 
  sum(
    circuits_1.circuitid), 
  circuits_1.alt, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.location <= circuits_1.name
group by circuits_1.lng, circuits_1.circuitref, circuits_1.circuitid, circuits_1.lng, circuits_1.alt, circuits_1.alt, circuits_1.lng
limit 13;
select  
  count(
    drivers_1.forename)
from 
  drivers as drivers_1
where drivers_1.nationality < drivers_1.surname
limit 40;
select  
  circuits_1.country, 
  count(
    circuits_1.name), 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.circuitref, 
  count(
    circuits_1.circuitref), 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.country, circuits_1.location, circuits_1.name, circuits_1.circuitref, circuits_1.lat, circuits_1.lat, circuits_1.circuitref, circuits_1.name, circuits_1.country, circuits_1.name, circuits_1.location, circuits_1.country, circuits_1.country
limit 1;
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  standings_1.wins, 
  standings_1.date
from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
limit 5;
select  
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.position, constructor_standings_1.points
limit 41;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 39;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 30;
select  
  drivers_2.driverid, 
  constructors_1.constructorref, 
  max(
    constructor_standings_1.constructorid), 
  min(
    drivers_1.nationality), 
  constructors_1.nationality
from 
  drivers as drivers_1
    inner join drivers as drivers_2
      inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_1
        on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
      on (drivers_2.driverid = constructor_standings_1.constructorstandingsid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructors_1.constructorid is not NULL
group by drivers_2.driverid, constructors_1.constructorref, constructors_1.nationality
limit 23;
select  
  circuits_1.location
from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where standings_1.driverid is not NULL
limit 6;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.position
limit 9;
select  
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.driverid, 
  avg(
    standings_1.driverstandingsid), 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverstandingsid, standings_1.date, standings_1.driverstandingsid, standings_1.driverid, standings_1.driverid, standings_1.driverstandingsid, standings_1.driverid
limit 24;
select  
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.date, constructor_standings_1.date, constructor_standings_1.wins
limit 28;
select  
  constructors_2.constructorid
from 
  standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (standings_1.driverstandingsid = constructors_2.constructorid )
where standings_1.points = standings_1.points
limit 25;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date < constructor_results_1.date
limit 8;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.constructorid), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  count(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.raceid, constructor_standings_1.raceid, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_1.raceid
limit 25;
select  
  qualifying_1.qualifyid, 
  min(
    qualifying_1.number), 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
group by qualifying_1.qualifyid
limit 25;
select  
  drivers_1.nationality, 
  drivers_1.nationality, 
  min(
    drivers_1.nationality), 
  min(
    constructor_results_2.date), 
  drivers_1.driverid
from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
        inner join drivers as drivers_1
        on (constructor_results_1.constructorresultsid = drivers_1.driverid )
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join constructor_results as constructor_results_2
    on (drivers_1.driverid = constructor_results_2.constructorresultsid )
where drivers_1.nationality > drivers_1.driverref
group by drivers_1.nationality, drivers_1.nationality, drivers_1.driverid
limit 32;
select  
  min(
    drivers_1.driverid), 
  circuits_1.country, 
  drivers_1.surname, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.lat
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by circuits_1.country, drivers_1.surname, circuits_1.circuitid, circuits_1.circuitref, circuits_1.alt, circuits_1.lat
limit 29;
select  
  circuits_1.circuitref, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 32;
select  
  races_1.date, 
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
limit 14;
select  
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.number, 
  avg(
    results_1.rank), 
  count(
    results_1.positionorder), 
  results_1.milliseconds
from 
  results as results_1
where results_1.grid < results_1.driverid
group by results_1.constructorid, results_1.constructorid, results_1.constructorid, results_1.number, results_1.milliseconds
limit 23;
select  
  constructor_results_1.raceid, 
  races_1.date
from 
  circuits as circuits_1
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
limit 13;
select  
  constructor_results_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.position
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 29;
select  
  circuits_1.circuitref, 
  circuits_1.lng, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  circuits_1.circuitid, 
  sum(
    standings_1.wins), 
  standings_1.date, 
  circuits_1.lat, 
  races_1.name
from 
  races as races_1
      inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      on (races_1.raceid = results_1.resultid )
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.round is not NULL
group by circuits_1.circuitref, circuits_1.lng, standings_1.driverid, standings_1.driverstandingsid, circuits_1.circuitid, standings_1.date, circuits_1.lat, races_1.name
limit 28;
select  
  races_1.circuitid
from 
  races as races_1
where races_1.circuitid is not NULL
limit 32;
select  
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid
limit 5;
select  
  max(
    standings_1.date), 
  standings_1.driverid, 
  max(
    standings_1.date), 
  standings_1.points
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverid, standings_1.points
limit 6;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorid
limit 38;
select  
  avg(
    results_2.statusid), 
  max(
    drivers_1.dob), 
  results_1.positionorder, 
  drivers_1.driverid, 
  results_1.position, 
  drivers_1.dob
from 
  results as results_1
    inner join results as results_2
        inner join drivers as drivers_1
        on (results_2.resultid = drivers_1.driverid )
      inner join races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = drivers_1.driverid )
where drivers_1.dob is not NULL
group by results_1.positionorder, drivers_1.driverid, results_1.position, drivers_1.dob
limit 28;
select  
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  races_1.name
from 
  standings as standings_1
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
    inner join races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    on (results_1.resultid = races_1.raceid )
where constructor_standings_1.date >= standings_1.date
limit 5;
select  
  circuits_1.name, 
  constructors_1.name, 
  circuits_1.name, 
  circuits_1.lng, 
  constructors_1.constructorref, 
  circuits_1.location, 
  constructors_1.name, 
  sum(
    circuits_1.circuitid), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  constructors_1.constructorid, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.circuitid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  circuits_1.circuitref, 
  circuits_1.alt
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitref is not NULL
group by circuits_1.name, constructors_1.name, circuits_1.name, circuits_1.lng, constructors_1.constructorref, circuits_1.location, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, circuits_1.alt, circuits_1.circuitref, constructors_1.constructorid, circuits_1.country, circuits_1.location, circuits_1.location, circuits_1.circuitid, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid, circuits_1.circuitref, circuits_1.alt
limit 31;
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 1;
select  
  constructors_1.constructorid, 
  qualifying_1.driverid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.name is not NULL
limit 23;
select  
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid, 
  count(*)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.points, standings_1.wins, standings_1.raceid
limit 10;
select  
  max(
    constructors_1.nationality), 
  constructors_1.name, 
  count(*), 
  constructors_1.constructorref, 
  constructors_2.constructorref
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
group by constructors_1.name, constructors_1.constructorref, constructors_2.constructorref
limit 6;
select  
  constructor_results_1.points, 
  constructors_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  drivers_1.code, 
  constructors_1.constructorref, 
  constructor_results_1.constructorid, 
  drivers_1.dob
from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where drivers_1.nationality >= drivers_1.surname
limit 23;
select  
  min(
    results_1.rank), 
  results_1.raceid, 
  min(
    results_1.number), 
  results_1.statusid, 
  results_1.fastestlap, 
  results_1.rank, 
  results_1.grid, 
  results_1.resultid, 
  results_1.raceid, 
  count(*), 
  results_1.constructorid
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.raceid, results_1.statusid, results_1.fastestlap, results_1.rank, results_1.grid, results_1.resultid, results_1.raceid, results_1.constructorid
limit 15;
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 19;
select  
  sum(
    results_1.raceid)
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where results_1.date < results_1.date
limit 1;
select  
  drivers_1.driverid, 
  drivers_2.driverref, 
  drivers_1.dob
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.forename is not NULL
limit 25;
select  
  results_1.grid, 
  results_1.date, 
  results_1.date
from 
  results as results_1
where results_1.milliseconds is not NULL
limit 41;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  qualifying_1.constructorid
from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
limit 17;
select  
  qualifying_1.number, 
  count(
    constructor_standings_1.raceid), 
  standings_2.position
from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
      inner join standings as standings_2
      on (qualifying_1.qualifyid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where qualifying_1.constructorid is not NULL
group by qualifying_1.number, standings_2.position
limit 38;
select  
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverid, 
  count(
    standings_1.driverid), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.raceid, 
  avg(
    standings_1.points), 
  standings_1.date, 
  min(
    standings_1.date), 
  min(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.points, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.points, 
  min(
    standings_1.points), 
  standings_1.date
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverstandingsid, standings_1.position, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_1.position, standings_1.date, standings_1.wins, standings_1.position, standings_1.wins, standings_1.driverid, standings_1.raceid, standings_1.date, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.points, standings_1.raceid, standings_1.points, standings_1.date
limit 33;
select  
  races_1.year, 
  circuits_1.name
from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.lat is not NULL
limit 29;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.constructorref
limit 10;
select  
  results_1.grid, 
  standings_1.wins, 
  standings_1.date
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.date > results_1.date
limit 15;
select  
  min(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  count(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorid
limit 8;
select  
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.code), 
  drivers_1.dob, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.forename < drivers_1.code
group by drivers_1.forename, drivers_1.dob, drivers_1.driverref
limit 42;
select  
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  drivers_1.driverref
from 
  constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorid is not NULL
limit 12;
select  
  max(
    results_2.date), 
  results_2.position, 
  constructor_results_1.raceid, 
  results_2.driverid, 
  qualifying_1.qualifyid, 
  constructor_results_1.constructorid
from 
  qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join constructor_results as constructor_results_1
      inner join results as results_2
      on (constructor_results_1.constructorresultsid = results_2.resultid )
    on (results_1.resultid = results_2.resultid )
where results_2.statusid is not NULL
group by results_2.position, constructor_results_1.raceid, results_2.driverid, qualifying_1.qualifyid, constructor_results_1.constructorid
limit 17;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins > constructor_standings_1.raceid
limit 29;
select  
  min(
    circuits_1.country), 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid
from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_standings_1.wins is not NULL
group by constructor_results_1.constructorid
limit 36;
select  
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 29;
select  
  results_1.raceid, 
  results_1.points, 
  results_1.resultid, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  results_1.resultid, 
  results_1.position, 
  results_1.rank, 
  circuits_1.name
from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitid is not NULL
limit 36;
select  
  results_1.rank, 
  results_1.number, 
  results_1.rank, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.rank, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.fastestlap, 
  count(
    results_1.statusid), 
  min(
    results_1.date), 
  results_1.rank
from 
  results as results_1
where results_1.points is not NULL
group by results_1.rank, results_1.number, results_1.rank, results_1.fastestlap, results_1.number, results_1.driverid, results_1.fastestlap, results_1.rank, results_1.positionorder, results_1.fastestlap, results_1.fastestlap, results_1.rank
limit 24;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 1;
select  
  drivers_1.nationality, 
  drivers_2.forename
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_1.driverid is not NULL
limit 29;
select  
  constructor_results_1.points, 
  constructor_results_2.points, 
  drivers_1.surname, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join drivers as drivers_1
    on (constructor_results_2.constructorresultsid = drivers_1.driverid )
where constructor_results_1.constructorresultsid is not NULL
limit 28;
select  
  qualifying_1.constructorid, 
  count(*), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  count(
    qualifying_1.qualifyid), 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.raceid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.date
limit 21;
select  
  min(
    races_1.year), 
  races_1.time, 
  races_1.date, 
  min(
    races_1.time), 
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  races_1.circuitid, 
  races_1.raceid, 
  count(*), 
  races_1.time, 
  races_1.round, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.name, 
  races_1.date, 
  races_1.year, 
  races_1.round
from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.time, races_1.date, races_1.circuitid, races_1.date, races_1.round, races_1.circuitid, races_1.raceid, races_1.time, races_1.round, races_1.circuitid, races_1.raceid, races_1.circuitid, races_1.name, races_1.date, races_1.year, races_1.round
limit 38;
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 2;
select  
  results_1.positionorder, 
  max(
    results_1.date), 
  results_1.number, 
  results_1.milliseconds
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.positionorder, results_1.number, results_1.milliseconds
limit 40;
select  
  standings_1.wins, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date = standings_1.date
limit 16;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 32;
select  
  avg(
    constructor_standings_1.raceid), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid
limit 41;
select  
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 5;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 22;
select  
  races_1.name, 
  races_1.year
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.year is not NULL
limit 26;
select  
  min(
    races_1.name), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  races_1.round, 
  races_1.date, 
  races_1.time, 
  races_1.name
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.points, constructor_standings_1.wins, races_1.round, races_1.date, races_1.time, races_1.name
limit 22;
select  
  races_2.date
from 
  standings as standings_1
    inner join qualifying as qualifying_1
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      inner join races as races_2
      on (qualifying_1.qualifyid = races_2.raceid )
    on (standings_1.driverstandingsid = races_2.raceid )
where standings_1.points > standings_1.points
limit 3;
select  
  standings_1.points, 
  standings_1.wins, 
  constructor_results_1.points, 
  drivers_1.code, 
  results_1.date, 
  constructors_1.constructorid, 
  drivers_1.driverref, 
  drivers_2.driverref, 
  standings_1.raceid, 
  constructors_1.constructorid
from 
  constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
      inner join drivers as drivers_2
        inner join constructors as constructors_1
          inner join results as results_1
          on (constructors_1.constructorid = results_1.resultid )
        on (drivers_2.driverid = results_1.resultid )
      on (drivers_1.driverid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = drivers_2.driverid )
where constructors_1.nationality is not NULL
limit 26;
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref = constructors_1.name
limit 33;
select  
  results_1.points, 
  results_1.resultid, 
  sum(
    results_1.resultid), 
  results_1.statusid
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.points, results_1.resultid, results_1.statusid
limit 23;
select  
  races_2.year, 
  races_3.time, 
  constructor_standings_1.raceid, 
  qualifying_1.date, 
  races_2.date, 
  races_2.year, 
  results_1.raceid, 
  races_2.raceid, 
  qualifying_1.raceid
from 
  results as results_1
      inner join races as races_1
        inner join constructor_standings as constructor_standings_1
            inner join qualifying as qualifying_1
            on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
          inner join races as races_2
          on (constructor_standings_1.constructorstandingsid = races_2.raceid )
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join races as races_3
    on (races_2.raceid = races_3.raceid )
where qualifying_1.number is not NULL
limit 18;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 7;
select  
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  sum(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date
limit 21;
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  races_1.name, 
  races_2.time, 
  min(
    standings_1.wins), 
  races_1.name, 
  races_2.time, 
  standings_1.position, 
  max(
    standings_1.points), 
  races_2.time, 
  races_1.circuitid, 
  sum(
    qualifying_1.number), 
  standings_1.driverid, 
  standings_1.position
from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join races as races_2
      inner join standings as standings_1
      on (races_2.raceid = standings_1.driverstandingsid )
    on (races_1.raceid = standings_1.driverstandingsid )
where constructors_1.nationality is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, races_1.name, races_2.time, races_1.name, races_2.time, standings_1.position, races_2.time, races_1.circuitid, standings_1.driverid, standings_1.position
limit 41;
select  
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.milliseconds
from 
  results as results_1
where results_1.statusid = results_1.constructorid
limit 3;
select  
  circuits_1.alt, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 21;
select  
  qualifying_1.driverid, 
  qualifying_1.position, 
  count(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.driverid, qualifying_1.position
limit 3;
select  
  constructor_results_1.raceid, 
  standings_1.position, 
  standings_1.raceid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where results_1.positionorder is not NULL
limit 34;
select  
  standings_1.points, 
  standings_1.position, 
  standings_1.driverid, 
  avg(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.driverid, 
  max(
    standings_1.date), 
  min(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.raceid, 
  count(
    standings_1.position), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.points
from 
  standings as standings_1
where standings_1.points < standings_1.points
group by standings_1.points, standings_1.position, standings_1.driverid, standings_1.raceid, standings_1.driverid, standings_1.raceid, standings_1.wins, standings_1.raceid, standings_1.raceid, standings_1.date, standings_1.driverid, standings_1.date, standings_1.position, standings_1.wins, standings_1.driverid, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverstandingsid, standings_1.points, standings_1.wins, standings_1.raceid, standings_1.raceid, standings_1.points
limit 40;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 18;
select  
  results_1.number, 
  max(
    circuits_1.name), 
  results_1.milliseconds
from 
  standings as standings_1
    inner join results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where results_1.fastestlap is not NULL
group by results_1.number, results_1.milliseconds
limit 37;
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.position
limit 22;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  drivers_1.dob, 
  constructor_standings_1.position
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins >= constructor_standings_1.constructorstandingsid
limit 12;
select  
  races_1.circuitid, 
  races_1.round, 
  races_1.round, 
  races_1.name, 
  races_1.name, 
  races_1.date, 
  races_1.year
from 
  races as races_1
where races_1.circuitid >= races_1.year
limit 38;
select  
  constructors_1.constructorref, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.circuitref, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  circuits_1.location, 
  min(
    circuits_1.country), 
  constructors_1.name, 
  constructors_1.name
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorid > circuits_1.circuitid
group by constructors_1.constructorref, circuits_1.country, circuits_1.country, circuits_1.circuitref, constructors_1.constructorid, circuits_1.location, constructors_1.name, constructors_1.name
limit 15;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  standings_1.date
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.date > constructor_results_1.date
limit 21;
select  
  count(*)
from 
  races as races_1
where races_1.circuitid is not NULL
limit 3;
select  
  standings_1.wins, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.position
from 
  standings as standings_1
where standings_1.date is not NULL
limit 34;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 37;
select  
  races_1.circuitid
from 
  races as races_1
where races_1.raceid = races_1.round
limit 16;
select  
  results_1.grid, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.dob
from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.raceid <= drivers_1.driverid
group by results_1.grid, drivers_1.surname, drivers_1.driverref, drivers_1.driverref, drivers_1.dob, drivers_1.driverref, drivers_1.dob
limit 37;
select  
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  count(*), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.position, qualifying_1.number, qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid, qualifying_1.raceid
limit 16;
select  
  qualifying_2.constructorid, 
  qualifying_1.date, 
  qualifying_2.number, 
  qualifying_2.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_2
      on (constructors_1.constructorid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where constructors_1.constructorref > constructors_1.nationality
limit 39;
select  
  races_1.circuitid, 
  races_1.name, 
  min(
    races_1.time), 
  races_1.name, 
  races_1.circuitid, 
  races_1.name, 
  max(
    races_1.time), 
  races_1.round, 
  races_1.round, 
  count(*), 
  races_1.year, 
  races_1.circuitid, 
  races_1.year
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.name, races_1.name, races_1.circuitid, races_1.name, races_1.round, races_1.round, races_1.year, races_1.circuitid, races_1.year
limit 24;
select  
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.nationality
limit 14;
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  max(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.surname, drivers_1.driverid
limit 37;
select  
  avg(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.code, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
group by drivers_1.surname, drivers_1.code, drivers_1.dob, drivers_1.dob, drivers_1.forename, drivers_1.surname, drivers_1.driverref, drivers_1.forename, drivers_1.forename, drivers_1.code, drivers_1.code, drivers_1.driverid, drivers_1.driverid, drivers_1.dob, drivers_1.nationality, drivers_1.dob, drivers_1.forename, drivers_1.driverid, drivers_1.code
limit 29;
select  
  results_1.laps, 
  results_1.position, 
  results_1.laps, 
  results_1.grid, 
  results_1.grid, 
  results_1.number
from 
  results as results_1
where results_1.laps is not NULL
limit 33;
select  
  constructor_results_2.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_2.points, 
  constructor_results_1.points, 
  constructor_results_2.constructorresultsid, 
  constructor_results_2.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorid is not NULL
limit 16;
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 6;
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  sum(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.forename, drivers_1.driverref
limit 4;
select  
  circuits_1.location, 
  constructor_standings_1.position, 
  sum(
    circuits_1.alt), 
  constructor_standings_1.constructorid
from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date >= standings_1.date
group by circuits_1.location, constructor_standings_1.position, constructor_standings_1.constructorid
limit 18;
select  
  max(
    qualifying_1.date)
from 
  races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    inner join constructors as constructors_1
      inner join drivers as drivers_1
          inner join qualifying as qualifying_1
          on (drivers_1.driverid = qualifying_1.qualifyid )
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (races_1.raceid = qualifying_1.qualifyid )
where qualifying_2.constructorid is not NULL
limit 39;
select  
  min(
    circuits_1.circuitref), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.location
limit 34;
select  
  results_1.position, 
  min(
    results_1.date), 
  results_1.driverid, 
  results_1.number, 
  count(
    results_1.raceid), 
  results_1.statusid, 
  results_1.position, 
  min(
    results_1.date), 
  results_1.positionorder
from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.position, results_1.driverid, results_1.number, results_1.statusid, results_1.position, results_1.positionorder
limit 5;
select  
  max(
    races_1.name), 
  min(
    races_1.name), 
  races_1.raceid, 
  races_1.date, 
  min(
    races_1.date)
from 
  races as races_1
where races_1.time is not NULL
group by races_1.raceid, races_1.date
limit 34;
select  
  results_1.statusid
from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.raceid is not NULL
limit 42;
select  
  results_1.grid, 
  results_1.raceid, 
  results_1.statusid, 
  results_1.milliseconds, 
  results_1.position, 
  max(
    results_1.position), 
  results_1.milliseconds, 
  count(
    results_1.constructorid), 
  avg(
    results_1.points), 
  avg(
    results_1.driverid)
from 
  results as results_1
where results_1.fastestlap is not NULL
group by results_1.grid, results_1.raceid, results_1.statusid, results_1.milliseconds, results_1.position, results_1.milliseconds
limit 32;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 5;
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 24;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 40;
select  
  results_1.grid, 
  results_1.position, 
  results_1.constructorid, 
  results_1.positionorder, 
  min(
    results_1.date), 
  results_1.grid, 
  results_1.constructorid
from 
  results as results_1
where results_1.number >= results_1.milliseconds
group by results_1.grid, results_1.position, results_1.constructorid, results_1.positionorder, results_1.grid, results_1.constructorid
limit 14;
select  
  qualifying_1.number, 
  qualifying_1.constructorid, 
  standings_1.driverstandingsid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.rank is not NULL
limit 41;
select  
  results_1.statusid
from 
  results as results_1
where results_1.grid = results_1.positionorder
limit 20;
select  
  circuits_1.circuitref, 
  count(*), 
  sum(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.lng, 
  max(
    circuits_1.lat), 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.lng, circuits_1.country, circuits_1.name
limit 18;
select  
  drivers_2.driverid, 
  races_1.name, 
  races_1.name, 
  races_1.date, 
  drivers_2.dob, 
  drivers_1.nationality, 
  drivers_1.code
from 
  races as races_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = results_1.resultid )
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
where races_1.circuitid = races_1.raceid
limit 1;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  count(*), 
  max(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.constructorid
limit 10;
select  
  constructor_results_1.date, 
  constructor_standings_1.points, 
  min(
    constructor_results_1.date), 
  avg(
    constructor_results_1.constructorresultsid)
from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.date <= constructor_standings_1.date
group by constructor_results_1.date, constructor_standings_1.points
limit 6;
select distinct 
  min(
    results_1.positionorder), 
  results_1.date, 
  results_1.statusid, 
  results_1.rank, 
  results_1.positionorder, 
  results_1.raceid, 
  results_1.driverid, 
  sum(
    results_1.position), 
  results_1.laps, 
  results_1.number
from 
  results as results_1
where results_1.driverid > results_1.grid
group by results_1.date, results_1.statusid, results_1.rank, results_1.positionorder, results_1.raceid, results_1.driverid, results_1.laps, results_1.number
limit 13;
select  
  max(
    races_1.time)
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where qualifying_1.driverid is not NULL
limit 12;
select  
  races_1.date, 
  races_1.raceid, 
  races_1.time, 
  races_1.date, 
  races_1.circuitid
from 
  constructors as constructors_1
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where races_1.round is not NULL
limit 12;
select  
  constructors_1.constructorid, 
  results_1.milliseconds, 
  races_1.time
from 
  races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 41;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 38;
select  
  constructors_1.constructorid, 
  min(
    constructors_1.nationality), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  standings_1.wins, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  standings_1.raceid, 
  standings_1.raceid, 
  constructors_1.name, 
  constructors_1.nationality, 
  standings_1.position
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.wins is not NULL
group by constructors_1.constructorid, constructors_1.nationality, constructors_1.constructorid, standings_1.wins, constructors_1.nationality, constructors_1.constructorref, standings_1.raceid, standings_1.raceid, constructors_1.name, constructors_1.nationality, standings_1.position
limit 37;
select  
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.code, 
  max(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.forename, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_1.driverref, drivers_1.code, drivers_1.surname, drivers_1.forename
limit 8;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  min(
    drivers_1.nationality), 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  drivers_1.driverid, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.driverref, drivers_1.dob, drivers_1.forename, drivers_1.code, drivers_1.code, drivers_1.surname, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.driverid, drivers_1.driverid
limit 26;
select  
  results_1.points, 
  constructors_1.constructorref, 
  constructor_results_1.constructorid, 
  circuits_1.location, 
  min(
    constructor_results_1.date), 
  constructors_1.nationality, 
  constructor_results_1.date, 
  min(
    results_1.fastestlap), 
  constructors_1.constructorref, 
  constructors_1.name, 
  circuits_1.circuitid, 
  constructors_1.constructorref
from 
  results as results_1
    inner join constructor_results as constructor_results_1
        inner join constructors as constructors_1
          inner join constructor_results as constructor_results_2
          on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_2.date > results_1.date
group by results_1.points, constructors_1.constructorref, constructor_results_1.constructorid, circuits_1.location, constructors_1.nationality, constructor_results_1.date, constructors_1.constructorref, constructors_1.name, circuits_1.circuitid, constructors_1.constructorref
limit 39;
select  
  min(
    results_1.date), 
  results_1.position, 
  constructor_results_1.constructorid, 
  results_1.position
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by results_1.position, constructor_results_1.constructorid, results_1.position
limit 26;
select  
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.surname, 
  count(*)
from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
group by drivers_1.nationality, drivers_1.code, drivers_1.nationality, drivers_1.dob, drivers_1.surname
limit 32;
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  sum(
    qualifying_1.number), 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid, qualifying_1.position
limit 18;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 39;
select  
  standings_1.points, 
  races_1.raceid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    on (races_1.raceid = qualifying_1.qualifyid )
where standings_1.wins >= constructor_results_1.raceid
limit 15;
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 13;
select  
  circuits_1.location, 
  max(
    circuits_1.circuitid), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.location, circuits_1.location
limit 30;
select  
  drivers_1.nationality, 
  results_1.driverid, 
  drivers_1.nationality
from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where drivers_1.driverref is not NULL
limit 21;
select  
  constructor_standings_1.constructorid, 
  constructor_results_1.points, 
  qualifying_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  qualifying_1.qualifyid, 
  constructor_standings_1.wins, 
  qualifying_1.driverid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  qualifying_1.number, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.points), 
  min(
    constructor_results_1.date), 
  constructor_standings_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.wins, 
  constructor_results_1.constructorresultsid
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_1.number is not NULL
group by constructor_standings_1.constructorid, constructor_results_1.points, qualifying_1.constructorid, constructor_standings_1.constructorstandingsid, qualifying_1.qualifyid, constructor_standings_1.wins, qualifying_1.driverid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_results_1.raceid, constructor_results_1.points, qualifying_1.number, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_standings_1.points, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_standings_1.wins, constructor_results_1.constructorresultsid
limit 16;
select  
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.points
from 
  standings as standings_1
where standings_1.date < standings_1.date
limit 30;
select  
  results_1.rank
from 
  results as results_1
where results_1.resultid is not NULL
limit 18;
select  
  circuits_1.lng, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 7;
select  
  circuits_1.location, 
  min(
    circuits_1.name), 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.location, 
  sum(
    circuits_1.lat), 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.location, circuits_1.circuitref, circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_1.lng, circuits_1.location, circuits_1.location, circuits_1.alt, circuits_1.country, circuits_1.lng, circuits_1.circuitid, circuits_1.country
limit 11;
select  
  max(
    standings_2.date), 
  avg(
    races_1.raceid)
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join races as races_1
      inner join standings as standings_2
      on (races_1.raceid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.raceid <= races_1.circuitid
limit 18;
select  
  races_1.circuitid, 
  races_1.raceid, 
  races_1.date, 
  races_1.raceid, 
  races_1.date, 
  races_1.year
from 
  races as races_1
where races_1.raceid is not NULL
limit 38;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 39;
select  
  count(*), 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  count(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.driverid)
from 
  qualifying as qualifying_1
where qualifying_1.constructorid < qualifying_1.qualifyid
group by qualifying_1.raceid, qualifying_1.raceid, qualifying_1.constructorid, qualifying_1.position, qualifying_1.driverid, qualifying_1.driverid
limit 39;
select  
  drivers_1.nationality, 
  qualifying_1.driverid, 
  drivers_2.surname
from 
  qualifying as qualifying_1
          inner join drivers as drivers_1
          on (qualifying_1.qualifyid = drivers_1.driverid )
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      inner join drivers as drivers_3
      on (drivers_1.driverid = drivers_3.driverid )
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_3.surname is not NULL
limit 12;
select  
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 34;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.alt = circuits_1.lng
limit 9;
select  
  races_1.date, 
  races_1.year, 
  races_1.date, 
  races_1.name, 
  races_1.raceid, 
  races_1.name
from 
  races as races_1
where races_1.name > races_1.time
limit 40;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 29;
select  
  races_1.year, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.surname
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.round > races_1.circuitid
limit 39;
select  
  min(
    constructor_standings_1.points), 
  max(
    races_1.date), 
  max(
    constructor_standings_1.points), 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.time < races_1.name
group by qualifying_1.number
limit 30;
select  
  results_1.grid
from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.statusid is not NULL
limit 8;
select  
  races_1.time
from 
  races as races_1
where races_1.date is not NULL
limit 20;
select distinct 
  results_1.rank, 
  results_1.statusid, 
  races_1.year, 
  count(
    results_1.points), 
  results_1.driverid, 
  results_1.date, 
  min(
    races_1.date), 
  results_1.driverid, 
  races_1.date, 
  races_1.name, 
  races_1.circuitid, 
  races_1.name, 
  results_1.fastestlap, 
  races_1.year, 
  races_1.circuitid, 
  results_1.fastestlap, 
  results_1.constructorid
from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.year is not NULL
group by results_1.rank, results_1.statusid, races_1.year, results_1.driverid, results_1.date, results_1.driverid, races_1.date, races_1.name, races_1.circuitid, races_1.name, results_1.fastestlap, races_1.year, races_1.circuitid, results_1.fastestlap, results_1.constructorid
limit 35;
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_2.lat
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.alt = circuits_1.lat
limit 25;
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 4;
select  
  min(
    races_1.raceid)
from 
  races as races_1
where races_1.raceid = races_1.year
limit 30;
select  
  drivers_1.code
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.code is not NULL
limit 35;
select  
  min(
    constructor_standings_1.date), 
  sum(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
limit 10;
select  
  results_1.driverid, 
  results_1.statusid, 
  results_1.position, 
  results_1.rank, 
  results_1.number, 
  min(
    results_1.date), 
  avg(
    results_1.position), 
  results_1.position, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.points, 
  results_1.milliseconds
from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.driverid, results_1.statusid, results_1.position, results_1.rank, results_1.number, results_1.position, results_1.positionorder, results_1.fastestlap, results_1.points, results_1.milliseconds
limit 42;
select  
  qualifying_1.qualifyid, 
  standings_1.position, 
  min(
    constructors_1.name), 
  qualifying_1.driverid
from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.driverstandingsid is not NULL
group by qualifying_1.qualifyid, standings_1.position, qualifying_1.driverid
limit 11;
select  
  constructor_standings_1.wins, 
  races_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_2.constructorid, 
  avg(
    circuits_1.lng), 
  standings_1.driverstandingsid, 
  races_2.circuitid, 
  sum(
    races_1.year), 
  constructor_results_1.date, 
  constructor_results_1.date, 
  races_1.date, 
  races_2.circuitid, 
  constructor_results_1.date, 
  races_2.year, 
  races_2.raceid, 
  constructor_results_2.constructorid, 
  max(
    races_2.name)
from 
  races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      inner join constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
        inner join constructor_results as constructor_results_1
          inner join constructor_results as constructor_results_2
          on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
        on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join races as races_2
    on (constructor_results_2.constructorresultsid = races_2.raceid )
where constructor_standings_1.constructorid = standings_1.wins
group by constructor_standings_1.wins, races_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_2.constructorid, standings_1.driverstandingsid, races_2.circuitid, constructor_results_1.date, constructor_results_1.date, races_1.date, races_2.circuitid, constructor_results_1.date, races_2.year, races_2.raceid, constructor_results_2.constructorid
limit 4;
select  
  min(
    constructors_1.name), 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  count(
    constructors_1.nationality), 
  constructor_results_1.date, 
  constructors_1.name, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructors_1.constructorid <= constructor_results_1.raceid
group by constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.date, constructors_1.name, constructor_results_1.points
limit 42;
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.time = races_1.name
limit 10;
select distinct 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 42;
select  
  circuits_1.circuitid, 
  qualifying_1.driverid, 
  min(
    results_1.date)
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    on (results_1.resultid = circuits_1.circuitid )
where results_1.date <= qualifying_1.date
group by circuits_1.circuitid, qualifying_1.driverid
limit 22;
select  
  circuits_1.lat, 
  circuits_1.alt, 
  min(
    circuits_1.alt), 
  min(
    circuits_1.circuitref), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.lat >= circuits_1.alt
group by circuits_1.lat, circuits_1.alt, circuits_1.alt
limit 21;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_3.raceid
from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join constructor_results as constructor_results_3
    on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
where constructor_results_2.points is not NULL
limit 32;
select  
  circuits_1.country, 
  max(
    constructor_standings_1.position)
from 
  circuits as circuits_1
    inner join circuits as circuits_2
      inner join constructor_standings as constructor_standings_1
      on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.location is not NULL
group by circuits_1.country
limit 23;
select  
  drivers_1.nationality, 
  constructor_results_1.points, 
  drivers_1.dob
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.date >= drivers_1.dob
limit 6;
select  
  races_1.circuitid, 
  races_1.time, 
  max(
    races_1.date), 
  races_1.date, 
  races_1.circuitid, 
  races_1.date
from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.time, races_1.date, races_1.circuitid, races_1.date
limit 9;
select  
  races_1.round, 
  avg(
    circuits_1.alt), 
  circuits_1.circuitid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  circuits_1.alt, 
  races_1.round, 
  qualifying_1.date
from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where races_1.year is not NULL
group by races_1.round, circuits_1.circuitid, qualifying_1.qualifyid, qualifying_1.qualifyid, circuits_1.alt, races_1.round, qualifying_1.date
limit 19;
select  
  count(
    drivers_1.forename), 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
group by drivers_1.dob, drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.driverref
limit 3;
select  
  races_1.time, 
  races_1.round, 
  min(
    races_1.date), 
  races_1.year, 
  races_1.circuitid, 
  min(
    races_1.date), 
  races_1.name, 
  races_1.year, 
  races_1.name, 
  races_1.name
from 
  races as races_1
where races_1.year is not NULL
group by races_1.time, races_1.round, races_1.year, races_1.circuitid, races_1.name, races_1.year, races_1.name, races_1.name
limit 34;
select  
  constructors_1.name, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 23;
select  
  qualifying_1.constructorid, 
  max(
    qualifying_1.raceid), 
  max(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
group by qualifying_1.constructorid
limit 8;
select  
  races_1.year, 
  sum(
    circuits_1.alt), 
  races_1.round, 
  circuits_1.name, 
  circuits_1.lat, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  circuits_1.name
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.raceid is not NULL
group by races_1.year, races_1.round, circuits_1.name, circuits_1.lat, constructors_1.constructorid, constructors_1.constructorid, circuits_1.name
limit 42;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  qualifying_1.raceid, 
  min(
    constructors_1.name), 
  results_1.position, 
  qualifying_1.constructorid, 
  results_1.constructorid, 
  min(
    qualifying_1.raceid)
from 
  constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.date is not NULL
group by constructors_1.name, constructors_1.constructorref, qualifying_1.raceid, results_1.position, qualifying_1.constructorid, results_1.constructorid
limit 8;
select  
  count(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.circuitref >= circuits_1.country
limit 25;
select  
  races_1.time, 
  races_1.circuitid, 
  min(
    races_1.circuitid), 
  races_1.time, 
  races_1.circuitid, 
  min(
    races_1.date), 
  races_1.round, 
  races_1.raceid, 
  races_1.circuitid, 
  max(
    races_1.time), 
  count(
    races_1.year)
from 
  races as races_1
where races_1.date = races_1.date
group by races_1.time, races_1.circuitid, races_1.time, races_1.circuitid, races_1.round, races_1.raceid, races_1.circuitid
limit 2;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  sum(
    constructor_results_1.raceid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid = constructor_results_1.constructorresultsid
group by constructor_results_1.points, constructor_results_1.points
limit 33;
select  
  qualifying_1.qualifyid, 
  results_2.driverid, 
  races_1.name, 
  drivers_1.code, 
  races_1.name
from 
  races as races_1
    inner join results as results_1
      inner join results as results_2
          inner join drivers as drivers_1
          on (results_2.resultid = drivers_1.driverid )
        inner join qualifying as qualifying_1
        on (drivers_1.driverid = qualifying_1.qualifyid )
      on (results_1.resultid = qualifying_1.qualifyid )
    on (races_1.raceid = results_2.resultid )
where races_1.circuitid >= results_1.resultid
limit 27;
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref < circuits_1.location
limit 21;
select  
  min(
    constructor_results_1.points), 
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid
limit 12;
select  
  standings_1.date
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.grid is not NULL
limit 4;
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.location > circuits_1.country
limit 37;
select  
  standings_1.position, 
  standings_1.driverid, 
  standings_1.wins
from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 35;
select  
  min(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 7;
select  
  results_1.date, 
  min(
    results_1.driverid), 
  results_1.statusid, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.raceid, 
  results_1.resultid, 
  min(
    results_1.date), 
  results_1.resultid, 
  results_1.statusid, 
  results_1.laps, 
  results_1.date, 
  sum(
    results_1.points), 
  results_1.position, 
  min(
    results_1.fastestlap), 
  results_1.position, 
  results_1.positionorder, 
  results_1.position, 
  results_1.positionorder, 
  results_1.laps, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.laps, 
  results_1.laps, 
  results_1.fastestlap, 
  results_1.number, 
  results_1.date, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.driverid, 
  results_1.date
from 
  results as results_1
where results_1.laps = results_1.constructorid
group by results_1.date, results_1.statusid, results_1.fastestlap, results_1.milliseconds, results_1.raceid, results_1.resultid, results_1.resultid, results_1.statusid, results_1.laps, results_1.date, results_1.position, results_1.position, results_1.positionorder, results_1.position, results_1.positionorder, results_1.laps, results_1.fastestlap, results_1.milliseconds, results_1.laps, results_1.laps, results_1.fastestlap, results_1.number, results_1.date, results_1.milliseconds, results_1.milliseconds, results_1.driverid, results_1.date
limit 36;
select  
  avg(
    qualifying_1.driverid), 
  min(
    drivers_1.nationality), 
  drivers_1.code, 
  min(
    drivers_1.driverref), 
  drivers_1.nationality, 
  drivers_1.dob, 
  qualifying_1.date
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
group by drivers_1.code, drivers_1.nationality, drivers_1.dob, qualifying_1.date
limit 37;
select  
  drivers_1.forename, 
  max(
    drivers_1.forename)
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.forename
limit 5;
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.driverid = constructor_standings_1.position
group by standings_1.date, standings_1.raceid, standings_1.driverid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 16;
select  
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 32;
select  
  min(
    circuits_1.circuitref)
from 
  races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      inner join constructor_standings as constructor_standings_1
        inner join races as races_2
        on (constructor_standings_1.constructorstandingsid = races_2.raceid )
      on (races_1.raceid = races_2.raceid )
    inner join constructor_standings as constructor_standings_2
    on (races_2.raceid = constructor_standings_2.constructorstandingsid )
where circuits_1.circuitref <= races_1.name
limit 33;
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 35;
select  
  min(
    races_1.time)
from 
  races as races_1
where races_1.date = races_1.date
limit 15;
select  
  drivers_1.dob, 
  races_1.year
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.round is not NULL
limit 24;
select  
  constructor_standings_1.position
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.driverstandingsid is not NULL
limit 5;
select  
  races_1.date, 
  races_1.name, 
  races_1.date, 
  races_1.raceid, 
  races_1.round, 
  max(
    races_1.time), 
  min(
    races_1.raceid), 
  races_1.circuitid, 
  races_1.date, 
  races_1.name
from 
  races as races_1
where races_1.year is not NULL
group by races_1.date, races_1.name, races_1.date, races_1.raceid, races_1.round, races_1.circuitid, races_1.date, races_1.name
limit 15;
select  
  races_1.time, 
  races_1.time
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.year > qualifying_1.qualifyid
limit 36;
select  
  results_1.driverid, 
  results_1.fastestlap, 
  min(
    results_1.points), 
  results_1.raceid, 
  results_1.constructorid, 
  results_1.statusid, 
  results_1.grid, 
  results_1.grid
from 
  results as results_1
where results_1.grid < results_1.resultid
group by results_1.driverid, results_1.fastestlap, results_1.raceid, results_1.constructorid, results_1.statusid, results_1.grid, results_1.grid
limit 34;
select  
  constructors_1.nationality, 
  constructors_1.name
from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 36;
select  
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.name, 
  max(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.country, 
  count(*), 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.country, 
  min(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.lat, circuits_1.circuitref, circuits_1.location, circuits_1.circuitid, circuits_1.name, circuits_1.name, circuits_1.circuitref, circuits_1.circuitid, circuits_1.country, circuits_1.location, circuits_1.location, circuits_1.country, circuits_1.lat, circuits_1.location
limit 6;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 23;
select  
  count(*), 
  results_1.rank, 
  results_1.rank, 
  max(
    results_1.date), 
  results_1.rank
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.rank, results_1.rank, results_1.rank
limit 42;
select  
  min(
    standings_1.points)
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_2
    on (standings_1.driverstandingsid = qualifying_2.qualifyid )
where qualifying_1.driverid is not NULL
limit 22;
select  
  drivers_1.driverid
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.alt < circuits_1.lng
limit 33;
select  
  races_1.raceid, 
  races_1.round, 
  min(
    races_1.date), 
  races_1.date, 
  min(
    races_1.time)
from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.raceid, races_1.round, races_1.date
limit 41;
select  
  drivers_1.nationality, 
  drivers_2.driverid, 
  drivers_1.code, 
  drivers_1.dob, 
  max(
    drivers_2.driverref), 
  drivers_2.nationality, 
  drivers_1.driverref, 
  drivers_2.forename, 
  drivers_1.driverid, 
  drivers_2.nationality
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.driverref is not NULL
group by drivers_1.nationality, drivers_2.driverid, drivers_1.code, drivers_1.dob, drivers_2.nationality, drivers_1.driverref, drivers_2.forename, drivers_1.driverid, drivers_2.nationality
limit 36;
select  
  races_1.raceid, 
  results_1.rank, 
  results_1.milliseconds, 
  max(
    results_1.date), 
  results_1.statusid, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  races_1.time, 
  results_1.milliseconds, 
  constructor_results_1.constructorid, 
  results_1.resultid
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
      inner join constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      on (races_1.raceid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_results_1.date < results_1.date
group by races_1.raceid, results_1.rank, results_1.milliseconds, results_1.statusid, constructor_standings_1.wins, constructor_standings_1.wins, races_1.time, results_1.milliseconds, constructor_results_1.constructorid, results_1.resultid
limit 31;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  count(
    constructor_results_1.constructorresultsid)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid
limit 21;
select  
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverref, 
  min(
    drivers_1.surname)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.surname, drivers_1.code, drivers_1.surname, drivers_1.forename, drivers_1.driverref
limit 23;
select  
  min(
    constructor_standings_1.points), 
  races_1.round, 
  races_1.round, 
  sum(
    constructor_standings_1.points), 
  min(
    races_1.name), 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  races_1.round
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_1.name = races_1.time
group by races_1.round, races_1.round, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.constructorid, constructor_standings_1.wins, races_1.round
limit 40;
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 25;
select  
  circuits_1.location, 
  standings_1.driverid, 
  max(
    qualifying_1.date), 
  sum(
    standings_2.points), 
  constructor_results_1.constructorresultsid, 
  constructors_1.name
from 
  constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
          inner join qualifying as qualifying_2
            inner join standings as standings_1
            on (qualifying_2.qualifyid = standings_1.driverstandingsid )
          on (qualifying_1.qualifyid = standings_1.driverstandingsid )
        inner join constructor_results as constructor_results_1
        on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where standings_2.date is not NULL
group by circuits_1.location, standings_1.driverid, constructor_results_1.constructorresultsid, constructors_1.name
limit 32;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  avg(
    drivers_1.driverid), 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.surname, drivers_1.dob, drivers_1.dob
limit 11;
select  
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 22;
select  
  min(
    drivers_1.surname), 
  drivers_1.driverid, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverid, drivers_1.forename
limit 15;
select  
  races_1.name, 
  races_1.name, 
  races_1.name, 
  min(
    races_1.raceid), 
  races_1.year, 
  races_1.year
from 
  races as races_1
where races_1.name < races_1.time
group by races_1.name, races_1.name, races_1.name, races_1.year, races_1.year
limit 3;
select  
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.circuitid, 
  max(
    circuits_1.country), 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid, circuits_1.location, circuits_1.country, circuits_1.lat, circuits_1.country, circuits_1.circuitid, circuits_1.circuitid
limit 7;
select  
  results_2.raceid
from 
  results as results_1
    inner join results as results_2
      inner join constructor_standings as constructor_standings_1
      on (results_2.resultid = constructor_standings_1.constructorstandingsid )
    on (results_1.resultid = results_2.resultid )
where results_2.constructorid is not NULL
limit 27;
select  
  qualifying_1.number, 
  drivers_2.nationality
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_2
      on (qualifying_1.qualifyid = drivers_2.driverid )
    on (drivers_1.driverid = drivers_2.driverid )
where qualifying_1.driverid >= qualifying_1.raceid
limit 2;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 21;
select  
  circuits_1.country, 
  qualifying_1.position, 
  min(
    circuits_1.name), 
  results_1.raceid, 
  results_1.milliseconds
from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where results_1.milliseconds > results_1.points
group by circuits_1.country, qualifying_1.position, results_1.raceid, results_1.milliseconds
limit 34;
select  
  results_1.position
from 
  results as results_1
where results_1.resultid is not NULL
limit 33;
select  
  qualifying_1.driverid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.constructorid is not NULL
limit 16;
select  
  max(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref
limit 9;
select  
  constructors_1.nationality, 
  constructor_standings_1.wins, 
  sum(
    results_1.position), 
  qualifying_1.driverid, 
  drivers_1.driverid, 
  results_1.number, 
  qualifying_1.constructorid, 
  count(
    results_1.positionorder)
from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    on (constructors_1.constructorid = results_1.resultid )
where drivers_1.forename is not NULL
group by constructors_1.nationality, constructor_standings_1.wins, qualifying_1.driverid, drivers_1.driverid, results_1.number, qualifying_1.constructorid
limit 24;
select  
  results_1.fastestlap, 
  results_1.driverid, 
  results_1.laps, 
  results_1.number, 
  results_1.date, 
  results_1.driverid, 
  results_1.raceid
from 
  results as results_1
where results_1.positionorder = results_1.resultid
limit 12;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.constructorid
limit 15;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 35;
select  
  max(
    circuits_1.circuitid), 
  max(
    circuits_1.circuitid), 
  circuits_1.lat, 
  circuits_1.location, 
  avg(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.lat, circuits_1.location
limit 12;
select  
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 39;
select  
  drivers_1.driverid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  drivers_1.forename, 
  drivers_1.forename, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.date < drivers_1.dob
limit 18;
select  
  circuits_1.circuitid, 
  races_1.name, 
  races_1.raceid
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.date = races_1.date
limit 9;
select  
  avg(
    results_1.driverid), 
  results_1.date, 
  results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    results_1.number), 
  min(
    results_1.date), 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.milliseconds <= constructor_results_1.points
group by results_1.date, results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, results_1.points, constructor_results_1.points, constructor_results_1.date, constructor_results_1.date
limit 11;
select  
  circuits_1.alt, 
  circuits_2.name
from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.circuitid >= circuits_2.circuitid
limit 18;
select  
  standings_1.date
from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.circuitid is not NULL
limit 23;
select  
  count(*), 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.points
limit 26;
select  
  max(
    qualifying_1.date), 
  count(*), 
  qualifying_1.number, 
  constructors_1.nationality, 
  qualifying_1.raceid, 
  qualifying_1.raceid
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.name is not NULL
group by qualifying_1.number, constructors_1.nationality, qualifying_1.raceid, qualifying_1.raceid
limit 41;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  sum(
    qualifying_1.position), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.driverid, qualifying_1.raceid
limit 40;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 38;
select  
  qualifying_1.raceid
from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.constructorid is not NULL
limit 19;
select  
  standings_1.points, 
  standings_1.position, 
  constructor_standings_1.constructorid, 
  min(
    standings_1.points), 
  standings_1.points, 
  standings_1.position, 
  constructor_standings_1.date, 
  count(*), 
  constructor_standings_1.constructorstandingsid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.date is not NULL
group by standings_1.points, standings_1.position, constructor_standings_1.constructorid, standings_1.points, standings_1.position, constructor_standings_1.date, constructor_standings_1.constructorstandingsid
limit 1;
select  
  races_1.round, 
  drivers_2.surname, 
  max(
    standings_1.wins)
from 
  drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join standings as standings_1
        inner join drivers as drivers_2
        on (standings_1.driverstandingsid = drivers_2.driverid )
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.position <= qualifying_1.driverid
group by races_1.round, drivers_2.surname
limit 20;
select  
  qualifying_1.position, 
  sum(
    constructor_results_1.points), 
  qualifying_1.constructorid, 
  constructor_results_1.points, 
  qualifying_1.raceid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.number, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by qualifying_1.position, qualifying_1.constructorid, constructor_results_1.points, qualifying_1.raceid, constructor_results_1.constructorid, qualifying_1.driverid, constructor_results_1.constructorid, constructor_results_1.raceid, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.date, qualifying_1.date, qualifying_1.number, constructor_results_1.constructorid, constructor_results_1.raceid, qualifying_1.number
limit 12;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  min(
    drivers_1.driverid)
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverref, drivers_1.dob
limit 39;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 24;
select  
  standings_1.raceid, 
  avg(
    standings_1.driverid), 
  standings_1.wins, 
  standings_1.wins, 
  count(
    standings_1.raceid), 
  standings_1.wins, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.raceid, standings_1.wins, standings_1.wins, standings_1.wins, standings_1.driverid
limit 41;
select  
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.constructorid
limit 35;
select  
  drivers_1.code, 
  drivers_1.driverid
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_1.dob >= drivers_2.dob
limit 40;
select  
  min(
    qualifying_1.driverid), 
  qualifying_1.position, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.position, qualifying_1.position
limit 4;
select  
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 26;
select  
  max(
    circuits_1.location), 
  circuits_1.name, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.name, circuits_1.name
limit 35;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 16;
select  
  races_1.raceid, 
  races_1.time, 
  constructors_1.constructorid, 
  races_1.date, 
  min(
    races_1.date), 
  standings_1.raceid, 
  standings_1.points, 
  races_1.circuitid
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.name < constructors_1.nationality
group by races_1.raceid, races_1.time, constructors_1.constructorid, races_1.date, standings_1.raceid, standings_1.points, races_1.circuitid
limit 3;
select  
  results_1.rank, 
  results_1.number, 
  results_1.constructorid, 
  results_1.rank, 
  results_1.position, 
  results_1.date, 
  max(
    results_1.date), 
  results_1.positionorder
from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.rank, results_1.number, results_1.constructorid, results_1.rank, results_1.position, results_1.date, results_1.positionorder
limit 8;
select  
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 1;
select  
  drivers_1.code, 
  circuits_1.country
from 
  circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.alt is not NULL
limit 14;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 3;
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 8;
select  
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 41;
select  
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 13;
select  
  standings_1.wins, 
  count(
    drivers_1.dob), 
  standings_1.driverid, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename, 
  standings_1.wins, 
  standings_1.wins, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.surname, 
  standings_1.wins, 
  avg(
    standings_1.points), 
  standings_1.position, 
  min(
    drivers_1.forename), 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  drivers_1.dob, 
  standings_1.driverstandingsid, 
  avg(
    standings_1.points), 
  drivers_1.forename, 
  drivers_1.forename, 
  standings_1.points, 
  standings_1.driverid, 
  drivers_1.code, 
  min(
    drivers_1.surname), 
  standings_1.driverstandingsid, 
  drivers_1.dob, 
  standings_1.raceid, 
  avg(
    standings_1.points), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  standings_1.wins, 
  drivers_1.dob, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.points, 
  drivers_1.code, 
  count(
    standings_1.wins), 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.dob, 
  standings_1.date, 
  min(
    drivers_1.dob)
from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.driverref is not NULL
group by standings_1.wins, standings_1.driverid, drivers_1.nationality, drivers_1.dob, drivers_1.forename, standings_1.wins, standings_1.wins, drivers_1.forename, drivers_1.nationality, drivers_1.surname, standings_1.wins, standings_1.position, standings_1.date, standings_1.driverstandingsid, standings_1.driverstandingsid, drivers_1.dob, standings_1.driverstandingsid, drivers_1.forename, drivers_1.forename, standings_1.points, standings_1.driverid, drivers_1.code, standings_1.driverstandingsid, drivers_1.dob, standings_1.raceid, drivers_1.nationality, drivers_1.driverid, standings_1.wins, drivers_1.dob, standings_1.raceid, standings_1.driverid, standings_1.position, standings_1.points, standings_1.points, drivers_1.code, drivers_1.driverid, drivers_1.surname, drivers_1.dob, standings_1.date
limit 16;
select  
  qualifying_1.date
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
          inner join qualifying as qualifying_1
          on (constructors_1.constructorid = qualifying_1.qualifyid )
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.date is not NULL
limit 22;
select  
  count(
    standings_1.raceid)
from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where qualifying_1.qualifyid is not NULL
limit 30;
select  
  races_2.circuitid, 
  min(
    races_2.time), 
  races_1.year, 
  min(
    results_1.date), 
  qualifying_1.driverid
from 
  results as results_1
        inner join races as races_1
          inner join standings as standings_1
          on (races_1.raceid = standings_1.driverstandingsid )
        on (results_1.resultid = races_1.raceid )
      inner join races as races_2
          inner join races as races_3
          on (races_2.raceid = races_3.raceid )
        inner join circuits as circuits_1
        on (races_2.raceid = circuits_1.circuitid )
      on (races_1.raceid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.qualifyid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (races_2.raceid = drivers_1.driverid )
where races_3.date >= constructor_results_1.date
group by races_2.circuitid, races_1.year, qualifying_1.driverid
limit 40;
select  
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.country <= circuits_1.name
limit 11;
select  
  results_1.constructorid, 
  results_1.raceid, 
  results_1.position, 
  results_1.laps, 
  results_1.rank, 
  results_1.grid, 
  results_1.fastestlap, 
  count(*), 
  results_1.constructorid, 
  results_1.driverid, 
  results_1.position, 
  max(
    results_1.milliseconds), 
  results_1.grid, 
  results_1.resultid, 
  avg(
    results_1.points)
from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.constructorid, results_1.raceid, results_1.position, results_1.laps, results_1.rank, results_1.grid, results_1.fastestlap, results_1.constructorid, results_1.driverid, results_1.position, results_1.grid, results_1.resultid
limit 40;
select  
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_results_1.points), 
  max(
    constructor_results_1.points), 
  count(*), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid >= constructor_results_1.constructorresultsid
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.raceid
limit 40;
select  
  constructors_1.constructorref, 
  avg(
    constructor_results_1.raceid), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructor_results_1.points, 
  constructors_1.constructorid
from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_2
    on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.nationality, constructor_results_1.points, constructors_1.constructorid
limit 31;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  count(
    constructor_results_1.constructorid), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid
limit 40;
select  
  count(*), 
  qualifying_1.constructorid, 
  min(
    qualifying_1.driverid), 
  qualifying_1.qualifyid, 
  constructors_1.constructorref, 
  qualifying_1.position, 
  max(
    constructors_1.name), 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructor_results_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, constructors_1.constructorref, qualifying_1.position, constructors_1.constructorid, constructors_1.nationality
limit 14;
select  
  qualifying_2.position, 
  standings_1.driverid, 
  min(
    standings_1.points), 
  qualifying_2.driverid, 
  constructor_results_1.constructorid, 
  qualifying_1.raceid
from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where qualifying_1.qualifyid > constructor_results_1.constructorid
group by qualifying_2.position, standings_1.driverid, qualifying_2.driverid, constructor_results_1.constructorid, qualifying_1.raceid
limit 42;
select  
  constructors_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.raceid is not NULL
limit 35;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 24;
select  
  avg(
    standings_1.points), 
  avg(
    standings_1.points), 
  standings_1.date, 
  standings_1.position, 
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.position
limit 13;
select distinct 
  constructor_results_1.constructorid, 
  drivers_1.driverid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  drivers_1.surname
from 
  drivers as drivers_1
      inner join qualifying as qualifying_1
      on (drivers_1.driverid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where qualifying_1.constructorid is not NULL
limit 5;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  races_1.date, 
  races_1.round, 
  min(
    constructor_results_1.constructorid)
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where races_1.name is not NULL
group by constructor_results_1.date, constructor_results_1.constructorid, races_1.date, races_1.round
limit 41;
select  
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 16;
select  
  races_1.date, 
  races_1.year, 
  races_1.raceid
from 
  races as races_1
where races_1.date is not NULL
limit 13;
select  
  qualifying_1.driverid, 
  qualifying_2.raceid, 
  qualifying_2.number, 
  results_1.laps, 
  qualifying_2.qualifyid, 
  qualifying_2.constructorid, 
  qualifying_2.driverid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_2
        inner join results as results_1
        on (qualifying_2.qualifyid = results_1.resultid )
      on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 36;
select  
  avg(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 8;
select  
  races_1.time, 
  constructor_standings_2.position
from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (races_1.raceid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 16;
select  
  count(*)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 19;
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.raceid, 
  races_1.year
from 
  races as races_1
where races_1.time is not NULL
limit 13;
select  
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 6;
select  
  standings_1.position, 
  standings_1.points, 
  standings_1.points
from 
  standings as standings_1
where standings_1.points is not NULL
limit 26;
select  
  drivers_1.driverref, 
  standings_2.raceid, 
  standings_1.position, 
  min(
    standings_1.wins), 
  drivers_1.driverid, 
  standings_2.driverstandingsid
from 
  standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where standings_2.driverid is not NULL
group by drivers_1.driverref, standings_2.raceid, standings_1.position, drivers_1.driverid, standings_2.driverstandingsid
limit 18;
select  
  standings_1.position, 
  min(
    standings_1.date)
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.position
limit 8;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  min(
    races_1.year), 
  races_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.round is not NULL
group by constructor_results_1.points, constructor_results_1.constructorresultsid, races_1.raceid, constructor_results_1.constructorid, constructor_results_1.date
limit 3;
select  
  max(
    qualifying_2.date), 
  circuits_2.location
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join qualifying as qualifying_2
      on (circuits_2.circuitid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_2.location is not NULL
group by circuits_2.location
limit 29;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid
from 
  standings as standings_1
where standings_1.date > standings_1.date
limit 5;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 4;
select  
  results_1.date, 
  constructors_1.constructorid
from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.constructorid is not NULL
limit 38;
select  
  drivers_1.dob, 
  drivers_1.dob, 
  min(
    drivers_1.driverref), 
  constructor_results_1.constructorid
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.dob, constructor_results_1.constructorid
limit 13;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points <= constructor_standings_1.points
limit 35;
select  
  sum(
    results_1.position), 
  results_1.date, 
  results_1.position
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.date, results_1.position
limit 36;
select  
  drivers_1.forename, 
  max(
    drivers_2.dob), 
  drivers_2.dob, 
  max(
    drivers_2.driverref), 
  drivers_2.nationality
from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    inner join drivers as drivers_2
      inner join constructor_standings as constructor_standings_1
      on (drivers_2.driverid = constructor_standings_1.constructorstandingsid )
    on (drivers_1.driverid = drivers_2.driverid )
where constructor_standings_1.points is not NULL
group by drivers_1.forename, drivers_2.dob, drivers_2.nationality
limit 31;
select  
  circuits_1.circuitid
from 
  circuits as circuits_1
    inner join circuits as circuits_2
      inner join constructor_standings as constructor_standings_1
      on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date = constructor_standings_1.date
limit 15;
select  
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
limit 30;
select  
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
limit 37;
select  
  standings_1.wins, 
  standings_1.date, 
  max(
    standings_1.driverstandingsid), 
  min(
    standings_1.wins)
from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.wins, standings_1.date
limit 35;
select  
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  qualifying_1.date, 
  count(
    qualifying_1.date), 
  sum(
    constructor_results_1.points), 
  qualifying_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.date, constructor_results_1.constructorid, constructor_results_1.constructorid, qualifying_1.date, qualifying_1.raceid, constructor_results_1.points, constructor_results_1.raceid, qualifying_1.number
limit 13;
select  
  circuits_1.circuitid, 
  drivers_1.forename, 
  min(
    circuits_1.alt), 
  max(
    circuits_1.alt), 
  constructor_standings_1.wins, 
  constructors_1.constructorid
from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
      inner join circuits as circuits_1
        inner join drivers as drivers_1
        on (circuits_1.circuitid = drivers_1.driverid )
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.date > drivers_1.dob
group by circuits_1.circuitid, drivers_1.forename, constructor_standings_1.wins, constructors_1.constructorid
limit 12;
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 20;
select  
  constructors_2.nationality, 
  constructors_2.constructorid, 
  constructors_2.nationality, 
  constructors_1.constructorid, 
  constructors_2.constructorid, 
  constructors_2.nationality, 
  constructors_2.nationality, 
  min(
    constructors_2.constructorref), 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.nationality is not NULL
group by constructors_2.nationality, constructors_2.constructorid, constructors_2.nationality, constructors_1.constructorid, constructors_2.constructorid, constructors_2.nationality, constructors_2.nationality, constructors_1.nationality
limit 4;
select  
  drivers_1.driverref, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 2;
select  
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverstandingsid, standings_1.date, standings_1.raceid, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverid, standings_1.position, standings_1.driverstandingsid
limit 37;
select  
  standings_1.raceid, 
  standings_1.date, 
  standings_1.date, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.points is not NULL
limit 17;
select  
  constructors_1.constructorid, 
  min(
    constructors_1.constructorref), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  min(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 38;
select  
  constructors_1.constructorid, 
  races_1.circuitid, 
  constructors_1.nationality, 
  races_1.date, 
  races_1.year, 
  races_1.raceid, 
  max(
    races_1.date), 
  races_1.name, 
  constructors_1.constructorref, 
  races_1.round, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  races_1.year, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref, 
  races_1.time, 
  min(
    races_1.date), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.date, 
  constructors_1.name, 
  min(
    races_1.raceid), 
  constructors_1.name, 
  races_1.date, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  races_1.name
from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.nationality = races_1.name
group by constructors_1.constructorid, races_1.circuitid, constructors_1.nationality, races_1.date, races_1.year, races_1.raceid, races_1.name, constructors_1.constructorref, races_1.round, constructors_1.name, constructors_1.name, constructors_1.constructorid, races_1.year, constructors_1.name, constructors_1.constructorref, races_1.time, constructors_1.nationality, constructors_1.constructorref, constructors_1.name, constructors_1.constructorref, races_1.name, races_1.date, constructors_1.name, constructors_1.name, races_1.date, constructors_1.nationality, constructors_1.nationality, races_1.name
limit 25;
select  
  results_1.driverid, 
  constructor_results_1.constructorresultsid, 
  results_1.resultid, 
  results_1.fastestlap, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  results_1.raceid, 
  results_1.points, 
  results_1.resultid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  results_1.fastestlap
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
limit 34;
select  
  results_1.positionorder, 
  results_1.driverid, 
  results_1.date
from 
  results as results_1
where results_1.constructorid is not NULL
limit 42;
select  
  constructors_1.constructorid, 
  standings_1.position, 
  circuits_1.name, 
  results_1.resultid, 
  circuits_1.country, 
  circuits_1.lat, 
  standings_1.points, 
  constructors_1.nationality, 
  circuits_1.circuitid, 
  min(
    races_1.name)
from 
  results as results_1
    inner join circuits as circuits_1
        inner join races as races_1
          inner join standings as standings_1
          on (races_1.raceid = standings_1.driverstandingsid )
        on (circuits_1.circuitid = races_1.raceid )
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    on (results_1.resultid = circuits_1.circuitid )
where standings_1.wins is not NULL
group by constructors_1.constructorid, standings_1.position, circuits_1.name, results_1.resultid, circuits_1.country, circuits_1.lat, standings_1.points, constructors_1.nationality, circuits_1.circuitid
limit 14;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  count(
    qualifying_1.driverid), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.position), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.position, qualifying_1.position, qualifying_1.driverid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid, qualifying_1.driverid
limit 17;
select  
  constructors_1.constructorref, 
  constructors_1.name
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.date is not NULL
limit 12;
select  
  constructor_results_1.constructorid, 
  races_1.raceid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 5;
select  
  sum(
    results_1.resultid), 
  results_1.date
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.date
limit 16;
select  
  qualifying_2.qualifyid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  constructor_results_1.constructorid, 
  races_1.circuitid, 
  races_1.raceid, 
  circuits_1.lng, 
  races_2.time, 
  constructors_1.nationality, 
  qualifying_1.number, 
  races_2.time, 
  constructor_results_1.points, 
  qualifying_2.constructorid, 
  qualifying_2.date
from 
  races as races_1
        inner join qualifying as qualifying_1
          inner join races as races_2
          on (qualifying_1.qualifyid = races_2.raceid )
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
        inner join circuits as circuits_1
          inner join constructor_results as constructor_results_1
          on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
        on (constructors_1.constructorid = circuits_1.circuitid )
      on (races_2.raceid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_2
    on (races_2.raceid = qualifying_2.qualifyid )
where circuits_1.country >= races_2.time
group by qualifying_2.qualifyid, constructor_results_1.raceid, constructor_results_1.raceid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.raceid, constructor_results_1.constructorid, races_1.circuitid, races_1.raceid, circuits_1.lng, races_2.time, constructors_1.nationality, qualifying_1.number, races_2.time, constructor_results_1.points, qualifying_2.constructorid, qualifying_2.date
limit 13;
select  
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  min(
    standings_1.points), 
  standings_1.points, 
  max(
    standings_1.driverstandingsid), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.points, 
  max(
    standings_1.wins), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.date, standings_1.raceid, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.driverstandingsid, standings_1.wins, standings_1.points, standings_1.driverid
limit 32;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 40;
select  
  standings_1.date
from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where results_1.date is not NULL
limit 16;
select  
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  races_1.circuitid, 
  races_1.time
from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.date is not NULL
limit 42;
select  
  qualifying_1.raceid, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.position <= qualifying_1.raceid
limit 39;
select  
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
where standings_1.driverid < standings_1.driverstandingsid
limit 41;
select  
  results_1.number, 
  constructor_results_2.points, 
  constructor_results_1.raceid, 
  constructor_results_2.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  qualifying_1.qualifyid
from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
          inner join circuits as circuits_1
          on (qualifying_1.qualifyid = circuits_1.circuitid )
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
      inner join results as results_1
      on (constructor_results_2.constructorresultsid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
limit 36;
select  
  qualifying_1.number, 
  qualifying_1.number, 
  circuits_1.lat, 
  circuits_1.name
from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.lat < circuits_1.alt
limit 4;
select  
  qualifying_1.date, 
  drivers_1.driverid, 
  drivers_1.dob, 
  constructor_standings_1.wins, 
  drivers_1.code, 
  drivers_1.forename, 
  qualifying_1.position, 
  drivers_1.code, 
  constructor_standings_1.date
from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
limit 11;
select  
  races_1.date, 
  races_1.time, 
  races_1.round
from 
  races as races_1
where races_1.circuitid < races_1.round
limit 5;
select  
  qualifying_1.position, 
  circuits_1.country, 
  circuits_3.location, 
  circuits_4.circuitid
from 
  results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
        inner join circuits as circuits_2
            inner join circuits as circuits_3
            on (circuits_2.circuitid = circuits_3.circuitid )
          inner join drivers as drivers_1
          on (circuits_2.circuitid = drivers_1.driverid )
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join circuits as circuits_4
      on (circuits_3.circuitid = circuits_4.circuitid )
    on (qualifying_1.qualifyid = circuits_2.circuitid )
where results_1.laps > results_1.positionorder
limit 1;
select  
  races_1.raceid, 
  races_1.time
from 
  races as races_1
where races_1.name is not NULL
limit 7;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 12;
select  
  standings_1.wins, 
  max(
    standings_1.points), 
  races_1.time
from 
  constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
          inner join standings as standings_1
          on (constructor_standings_2.constructorstandingsid = standings_1.driverstandingsid )
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join races as races_1
      on (constructor_standings_2.constructorstandingsid = races_1.raceid )
    inner join qualifying as qualifying_1
    on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.date = races_1.date
group by standings_1.wins, races_1.time
limit 21;
select  
  races_2.time, 
  races_2.raceid, 
  races_1.circuitid, 
  qualifying_1.date
from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join races as races_2
      on (qualifying_1.qualifyid = races_2.raceid )
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.name < races_2.time
limit 34;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 20;
select  
  avg(
    results_1.positionorder), 
  min(
    results_1.milliseconds), 
  results_1.milliseconds
from 
  results as results_1
where results_1.grid is not NULL
group by results_1.milliseconds
limit 13;
select  
  races_1.raceid, 
  count(*), 
  races_1.raceid, 
  races_1.raceid
from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.raceid, races_1.raceid, races_1.raceid
limit 40;
select  
  constructor_results_3.constructorid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
      inner join constructor_results as constructor_results_3
      on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
    on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 41;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorref), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorref), 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.constructorid
limit 8;
select  
  races_1.year, 
  races_1.raceid, 
  races_1.date, 
  count(*), 
  races_1.time
from 
  races as races_1
where races_1.year is not NULL
group by races_1.year, races_1.raceid, races_1.date, races_1.time
limit 1;
select  
  circuits_1.lng, 
  circuits_1.circuitid, 
  avg(
    constructor_results_1.raceid), 
  circuits_1.name, 
  min(
    circuits_1.name), 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  circuits_1.name, 
  circuits_1.lng, 
  avg(
    circuits_1.alt), 
  circuits_1.country
from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by circuits_1.lng, circuits_1.circuitid, circuits_1.name, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.date, circuits_1.name, circuits_1.lng, circuits_1.country
limit 1;
select  
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
limit 10;
select  
  drivers_1.code, 
  drivers_1.dob, 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  count(*), 
  drivers_1.driverid, 
  count(
    drivers_1.forename), 
  drivers_1.dob, 
  max(
    drivers_1.nationality), 
  drivers_1.surname, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.surname, drivers_1.driverid, drivers_1.dob, drivers_1.surname
limit 36;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  count(
    constructor_results_1.date), 
  sum(
    constructor_results_1.points), 
  constructor_results_1.points, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid > constructor_results_1.constructorid
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.constructorid, constructor_results_1.points
limit 28;
select  
  standings_1.date, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.raceid, 
  sum(
    standings_1.points), 
  standings_1.driverid, 
  min(
    standings_1.raceid), 
  standings_1.date, 
  max(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.points, 
  min(
    standings_1.points), 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.points, standings_1.raceid, standings_1.wins, standings_1.raceid, standings_1.driverid, standings_1.date, standings_1.raceid, standings_1.raceid, standings_1.position, standings_1.points, standings_1.driverid
limit 9;
select  
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.surname, 
  max(
    drivers_1.surname), 
  drivers_1.forename, 
  max(
    drivers_1.driverref), 
  drivers_1.driverid, 
  drivers_1.driverref, 
  count(*), 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.forename, drivers_1.forename, drivers_1.surname, drivers_1.forename, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, drivers_1.surname, drivers_1.surname, drivers_1.code, drivers_1.nationality
limit 13;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  max(
    drivers_1.surname), 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.nationality, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  drivers_1.dob
from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, drivers_1.nationality, constructor_standings_1.date, constructor_standings_1.constructorid, drivers_1.dob
limit 13;
select  
  constructor_standings_1.constructorstandingsid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 13;
select  
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 28;
select  
  races_1.time, 
  constructors_1.name
from 
  constructor_results as constructor_results_1
        inner join constructors as constructors_1
        on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join races as races_1
        inner join drivers as drivers_2
        on (races_1.raceid = drivers_2.driverid )
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    on (constructors_1.constructorid = races_1.raceid )
where drivers_1.driverid is not NULL
limit 15;
select  
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorref <= constructors_1.name
limit 13;
select  
  drivers_1.driverref, 
  drivers_1.driverref
from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.round <= races_1.circuitid
limit 5;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid
limit 41;
select  
  qualifying_2.driverid, 
  constructor_results_1.date, 
  qualifying_1.qualifyid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  circuits_1.name, 
  qualifying_1.qualifyid
from 
  circuits as circuits_1
      inner join drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
        inner join constructor_results as constructor_results_2
        on (qualifying_2.qualifyid = constructor_results_2.constructorresultsid )
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
where qualifying_1.date >= constructor_results_1.date
limit 32;
select  
  results_1.fastestlap, 
  results_1.positionorder, 
  results_1.points
from 
  results as results_1
where results_1.driverid > results_1.raceid
limit 29;
select  
  standings_1.points, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.wins, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.date >= standings_1.date
group by standings_1.points, standings_1.date, standings_1.driverstandingsid, standings_1.driverid, standings_1.points, standings_1.date, standings_1.driverid, standings_1.wins, standings_1.points, standings_1.points, standings_1.driverstandingsid, standings_1.wins, standings_1.raceid, standings_1.wins, standings_1.wins, standings_1.wins, standings_1.driverstandingsid
limit 20;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 7;
select  
  races_1.name, 
  results_1.number, 
  races_1.round, 
  results_1.constructorid, 
  races_2.date, 
  races_2.round, 
  races_2.circuitid, 
  races_1.round, 
  max(
    races_2.date), 
  results_1.grid
from 
  results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.raceid > races_1.raceid
group by races_1.name, results_1.number, races_1.round, results_1.constructorid, races_2.date, races_2.round, races_2.circuitid, races_1.round, results_1.grid
limit 22;
select  
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 17;
select  
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality = drivers_1.driverref
limit 21;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    constructors_1.nationality), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorid, constructors_1.name, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.name, constructors_1.constructorid
limit 24;
select  
  min(
    results_1.position), 
  results_1.grid, 
  results_1.points, 
  results_1.resultid, 
  results_1.position, 
  results_1.position, 
  results_1.points
from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.grid, results_1.points, results_1.resultid, results_1.position, results_1.position, results_1.points
limit 6;
select  
  circuits_1.circuitref, 
  avg(
    circuits_1.lat), 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.circuitref, circuits_1.location
limit 6;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 28;
select  
  qualifying_2.number
from 
  circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join qualifying as qualifying_1
      on (circuits_2.circuitid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
      inner join drivers as drivers_1
      on (qualifying_2.qualifyid = drivers_1.driverid )
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.driverid is not NULL
limit 31;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.points, 
  min(
    constructor_results_1.date), 
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.points, constructor_results_1.date
limit 26;
select  
  standings_1.driverid, 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by standings_1.driverid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 7;
select  
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 24;
select  
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  avg(
    constructor_results_1.constructorid), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points > constructor_results_1.points
group by constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorresultsid
limit 15;
select  
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.date, 
  results_1.number, 
  results_1.milliseconds, 
  min(
    results_1.points), 
  results_1.date, 
  results_1.position
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.fastestlap, results_1.resultid, results_1.date, results_1.number, results_1.milliseconds, results_1.date, results_1.position
limit 37;
select  
  constructors_2.nationality, 
  constructors_2.name, 
  constructors_1.constructorid, 
  min(
    constructors_1.name)
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join drivers as drivers_1
      on (constructors_2.constructorid = drivers_1.driverid )
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.surname is not NULL
group by constructors_2.nationality, constructors_2.name, constructors_1.constructorid
limit 28;
select  
  constructor_results_1.constructorid, 
  results_1.resultid, 
  circuits_2.location
from 
  results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    inner join circuits as circuits_2
        inner join constructor_results as constructor_results_1
        on (circuits_2.circuitid = constructor_results_1.constructorresultsid )
      inner join results as results_2
          inner join drivers as drivers_1
          on (results_2.resultid = drivers_1.driverid )
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.rank is not NULL
limit 32;
select  
  constructors_1.constructorid, 
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 32;
select  
  standings_1.date, 
  min(
    standings_1.raceid), 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.position <= standings_1.driverid
group by standings_1.date, standings_1.driverstandingsid
limit 20;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 3;
select distinct 
  standings_1.driverstandingsid, 
  standings_1.driverid
from 
  standings as standings_1
where standings_1.date is not NULL
limit 11;
select  
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 35;
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  min(
    qualifying_1.driverid), 
  qualifying_1.date, 
  qualifying_1.number
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.date, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid, qualifying_1.date, qualifying_1.date, qualifying_1.driverid, qualifying_1.constructorid, qualifying_1.number, qualifying_1.date, qualifying_1.number
limit 28;
select  
  races_1.raceid
from 
  races as races_1
where races_1.raceid = races_1.round
limit 33;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.position
limit 7;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 33;
select  
  max(
    results_1.positionorder), 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.raceid is not NULL
group by constructor_results_1.constructorid
limit 30;
select  
  results_1.resultid
from 
  results as results_1
where results_1.laps < results_1.driverid
limit 19;
select  
  avg(
    constructors_1.constructorid)
from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
limit 19;
select  
  races_1.raceid, 
  races_1.circuitid, 
  avg(
    races_1.round)
from 
  races as races_1
where races_1.name is not NULL
group by races_1.raceid, races_1.circuitid
limit 16;
select  
  drivers_1.driverid, 
  drivers_1.forename, 
  sum(
    drivers_1.driverid), 
  min(
    drivers_1.forename), 
  drivers_1.driverid, 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.driverid, drivers_1.forename, drivers_1.driverid, drivers_1.forename, drivers_1.code
limit 36;
select  
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  max(
    circuits_1.circuitid), 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lng, 
  min(
    circuits_1.name)
from 
  circuits as circuits_1
where circuits_1.lng = circuits_1.lat
group by circuits_1.country, circuits_1.circuitref, circuits_1.lat, circuits_1.location, circuits_1.alt, circuits_1.lng
limit 12;
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 30;
select  
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  count(*), 
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.driverid
limit 35;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  drivers_1.surname
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.nationality, drivers_1.forename, drivers_1.surname
limit 36;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 13;
select  
  results_1.grid, 
  results_1.grid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date)
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points > results_1.fastestlap
group by results_1.grid, results_1.grid, constructor_standings_1.date, constructor_standings_1.constructorid
limit 15;
select  
  max(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorref
limit 37;
select  
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 2;
select  
  standings_1.date, 
  max(
    results_1.statusid), 
  races_1.year, 
  standings_1.driverid, 
  races_1.raceid, 
  results_1.points
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.round < results_1.raceid
group by standings_1.date, races_1.year, standings_1.driverid, races_1.raceid, results_1.points
limit 26;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_standings_1.wins, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points), 
  constructor_standings_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.raceid, 
  constructor_results_1.raceid, 
  sum(
    constructor_standings_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_standings_1.wins, 
  constructor_results_1.points, 
  max(
    constructor_standings_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_standings_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.raceid), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_standings_1.wins, constructor_results_1.constructorresultsid, constructor_standings_1.points, constructor_results_1.constructorresultsid, constructor_standings_1.raceid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_results_1.raceid, constructor_results_1.points, constructor_standings_1.wins, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.constructorid, constructor_standings_1.date, constructor_results_1.raceid, constructor_results_1.date, constructor_standings_1.constructorstandingsid, constructor_results_1.points, constructor_results_1.date, constructor_results_1.constructorresultsid, constructor_standings_1.wins, constructor_standings_1.date
limit 35;
select  
  drivers_1.nationality, 
  max(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.forename, 
  count(
    drivers_1.code), 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.dob
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.nationality, drivers_1.driverref, drivers_1.forename, drivers_1.forename, drivers_1.forename, drivers_1.surname, drivers_1.forename, drivers_1.driverref, drivers_1.driverid, drivers_1.code, drivers_1.surname, drivers_1.forename, drivers_1.nationality, drivers_1.code, drivers_1.code, drivers_1.nationality, drivers_1.nationality, drivers_1.dob, drivers_1.surname, drivers_1.dob, drivers_1.dob
limit 13;
select  
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.code)
from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
group by drivers_1.driverid, drivers_1.nationality, drivers_1.nationality, drivers_1.driverref, drivers_1.dob, drivers_1.forename, drivers_1.nationality, drivers_1.surname, drivers_1.nationality, drivers_1.nationality, drivers_1.forename
limit 11;
select  
  standings_1.date, 
  standings_1.date, 
  circuits_1.circuitref, 
  max(
    circuits_1.name), 
  circuits_1.circuitref, 
  standings_1.points, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.location, 
  standings_1.driverid, 
  results_1.points, 
  standings_1.position, 
  results_1.laps
from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where results_1.date <= standings_1.date
group by standings_1.date, standings_1.date, circuits_1.circuitref, circuits_1.circuitref, standings_1.points, circuits_1.circuitid, circuits_1.alt, circuits_1.location, standings_1.driverid, results_1.points, standings_1.position, results_1.laps
limit 16;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  min(
    drivers_1.nationality), 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.driverref, 
  sum(
    drivers_1.driverid), 
  drivers_1.surname, 
  min(
    drivers_1.forename), 
  min(
    drivers_1.dob), 
  drivers_1.nationality, 
  min(
    drivers_1.forename), 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
group by drivers_1.code, drivers_1.nationality, drivers_1.code, drivers_1.nationality, drivers_1.driverref, drivers_1.driverref, drivers_1.dob, drivers_1.code, drivers_1.code, drivers_1.driverref, drivers_1.surname, drivers_1.nationality, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.nationality, drivers_1.code
limit 20;
select  
  results_1.driverid
from 
  results as results_1
where results_1.laps is not NULL
limit 9;
select  
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.lng, 
  min(
    circuits_1.country), 
  circuits_1.country, 
  circuits_1.location, 
  avg(
    circuits_1.lng), 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.name, 
  count(
    circuits_1.circuitid), 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.lng, circuits_1.lat, circuits_1.lng, circuits_1.country, circuits_1.location, circuits_1.circuitref, circuits_1.circuitref, circuits_1.location, circuits_1.circuitid, circuits_1.lng, circuits_1.circuitid, circuits_1.circuitid, circuits_1.circuitid, circuits_1.name, circuits_1.alt, circuits_1.lat, circuits_1.circuitref, circuits_1.circuitref
limit 13;
select  
  standings_1.driverid, 
  standings_1.points, 
  min(
    standings_1.date), 
  standings_1.date, 
  standings_1.raceid, 
  max(
    standings_1.date)
from 
  standings as standings_1
where standings_1.date < standings_1.date
group by standings_1.driverid, standings_1.points, standings_1.date, standings_1.raceid
limit 25;
select  
  constructor_results_1.raceid, 
  constructors_1.name, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructors_1.nationality, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructors_1.nationality, 
  constructor_results_1.raceid
from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
limit 42;
select  
  sum(
    qualifying_1.driverid), 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid <= qualifying_1.constructorid
group by qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.driverid, qualifying_1.qualifyid
limit 15;
select  
  results_1.rank, 
  constructor_standings_2.position
from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_2
      inner join results as results_1
      on (constructor_standings_2.constructorstandingsid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.position is not NULL
limit 32;
select  
  standings_1.driverid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.points, 
  count(
    standings_1.raceid), 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverid, standings_1.points, standings_1.position, standings_1.points, standings_1.driverid, standings_1.date, standings_1.wins, standings_1.driverid, standings_1.points, standings_1.date, standings_1.raceid, standings_1.raceid, standings_1.date
limit 3;
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date)
from 
  qualifying as qualifying_1
where qualifying_1.position > qualifying_1.number
group by qualifying_1.number, qualifying_1.driverid, qualifying_1.driverid, qualifying_1.position, qualifying_1.constructorid
limit 18;
select  
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 22;
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.name, 
  races_1.year, 
  races_1.date, 
  races_1.name, 
  races_1.name, 
  races_1.date, 
  races_1.name, 
  races_1.year, 
  races_1.round, 
  races_1.circuitid, 
  races_1.circuitid
from 
  races as races_1
where races_1.raceid is not NULL
limit 15;
select  
  constructor_standings_1.position, 
  min(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.position
limit 27;
select  
  qualifying_1.number, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 7;
select  
  qualifying_1.qualifyid
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.date is not NULL
limit 19;
select  
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 4;
select  
  max(
    drivers_1.nationality), 
  max(
    results_1.date), 
  qualifying_1.date, 
  drivers_1.nationality, 
  qualifying_1.raceid, 
  results_1.grid
from 
  drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (drivers_1.driverid = qualifying_2.qualifyid )
where qualifying_2.constructorid is not NULL
group by qualifying_1.date, drivers_1.nationality, qualifying_1.raceid, results_1.grid
limit 35;
select  
  races_1.round, 
  races_1.year, 
  races_1.year, 
  races_1.date, 
  races_1.date, 
  races_1.circuitid, 
  races_1.round, 
  races_1.raceid, 
  races_1.year, 
  min(
    races_1.date), 
  races_1.date
from 
  races as races_1
where races_1.name is not NULL
group by races_1.round, races_1.year, races_1.year, races_1.date, races_1.date, races_1.circuitid, races_1.round, races_1.raceid, races_1.year, races_1.date
limit 12;
select  
  results_1.rank
from 
  results as results_1
where results_1.position is not NULL
limit 41;
select  
  max(
    drivers_1.forename), 
  drivers_1.driverref, 
  races_1.date, 
  drivers_1.surname, 
  races_1.date, 
  races_1.time, 
  races_1.circuitid, 
  min(
    drivers_1.driverref)
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.time is not NULL
group by drivers_1.driverref, races_1.date, drivers_1.surname, races_1.date, races_1.time, races_1.circuitid
limit 16;
select  
  constructor_standings_1.raceid
from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.date <= constructor_standings_1.date
limit 36;
select  
  circuits_1.lng, 
  drivers_1.code, 
  circuits_1.circuitid, 
  drivers_1.dob, 
  drivers_1.forename, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitref
from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.dob < drivers_1.dob
limit 4;
select  
  sum(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.surname, drivers_1.surname, drivers_1.forename, drivers_1.driverref
limit 37;
select  
  drivers_1.dob, 
  constructor_results_1.constructorid, 
  drivers_1.driverref, 
  max(
    drivers_1.code)
from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.nationality is not NULL
group by drivers_1.dob, constructor_results_1.constructorid, drivers_1.driverref
limit 7;
select  
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  results_1.positionorder, 
  drivers_1.surname, 
  standings_1.date
from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.points is not NULL
limit 2;
select  
  drivers_1.surname
from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.date >= drivers_1.dob
limit 10;
select  
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
limit 29;
select  
  min(
    drivers_2.dob)
from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.driverid > drivers_1.driverid
limit 27;
select  
  races_1.round, 
  races_1.date, 
  min(
    races_1.date), 
  max(
    races_1.name), 
  races_1.round, 
  races_1.date, 
  races_1.name, 
  races_1.round, 
  max(
    races_1.round), 
  races_1.time, 
  races_1.date, 
  races_1.date
from 
  races as races_1
where races_1.date <= races_1.date
group by races_1.round, races_1.date, races_1.round, races_1.date, races_1.name, races_1.round, races_1.time, races_1.date, races_1.date
limit 37;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.date, constructor_results_1.date, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid
limit 22;
select  
  min(
    qualifying_1.date), 
  drivers_1.code, 
  drivers_1.code, 
  qualifying_1.constructorid, 
  races_1.circuitid, 
  drivers_1.surname, 
  drivers_1.forename, 
  qualifying_1.constructorid, 
  qualifying_1.driverid
from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
group by drivers_1.code, drivers_1.code, qualifying_1.constructorid, races_1.circuitid, drivers_1.surname, drivers_1.forename, qualifying_1.constructorid, qualifying_1.driverid
limit 8;
select  
  constructor_standings_1.constructorid
from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.position is not NULL
limit 7;
select  
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.forename, drivers_1.driverid, drivers_1.nationality, drivers_1.driverid, drivers_1.driverid, drivers_1.driverid, drivers_1.surname, drivers_1.driverref
limit 18;
select  
  races_1.round
from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.circuitid is not NULL
limit 29;
select  
  standings_1.date, 
  qualifying_2.date, 
  avg(
    standings_1.points), 
  qualifying_1.number, 
  standings_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_2.raceid, 
  standings_1.driverstandingsid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  standings_1.position, 
  max(
    standings_1.points), 
  qualifying_2.qualifyid, 
  qualifying_2.date, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  standings_1.wins
from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_2
    on (standings_1.driverstandingsid = qualifying_2.qualifyid )
where qualifying_2.number is not NULL
group by standings_1.date, qualifying_2.date, qualifying_1.number, standings_1.driverid, qualifying_1.constructorid, qualifying_2.raceid, standings_1.driverstandingsid, qualifying_1.constructorid, qualifying_1.constructorid, standings_1.position, qualifying_2.qualifyid, qualifying_2.date, qualifying_1.qualifyid, qualifying_1.raceid, standings_1.wins
limit 12;
select distinct 
  results_2.resultid
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.date is not NULL
limit 25;
select  
  constructor_standings_1.constructorid, 
  results_1.driverid, 
  circuits_1.name, 
  avg(
    circuits_1.lng), 
  results_1.rank, 
  constructor_standings_1.position, 
  min(
    results_1.points), 
  min(
    constructor_standings_1.constructorid), 
  circuits_1.circuitref, 
  results_1.driverid, 
  results_1.resultid, 
  circuits_1.location, 
  avg(
    circuits_1.alt), 
  constructor_standings_1.date, 
  results_1.rank, 
  circuits_1.name, 
  circuits_1.location, 
  constructor_standings_1.points, 
  results_1.position
from 
  results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, results_1.driverid, circuits_1.name, results_1.rank, constructor_standings_1.position, circuits_1.circuitref, results_1.driverid, results_1.resultid, circuits_1.location, constructor_standings_1.date, results_1.rank, circuits_1.name, circuits_1.location, constructor_standings_1.points, results_1.position
limit 3;
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
limit 37;
select  
  results_1.resultid, 
  results_1.raceid, 
  results_1.resultid, 
  results_1.positionorder, 
  results_1.rank, 
  results_1.points
from 
  results as results_1
where results_1.laps is not NULL
limit 40;
select  
  results_1.statusid
from 
  results as results_1
where results_1.raceid = results_1.grid
limit 22;
select  
  max(
    constructors_1.constructorref), 
  constructors_1.constructorref, 
  max(
    standings_1.driverstandingsid), 
  standings_1.points, 
  standings_1.driverstandingsid, 
  constructors_1.constructorid, 
  standings_1.driverid
from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, standings_1.points, standings_1.driverstandingsid, constructors_1.constructorid, standings_1.driverid
limit 26;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.number), 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  avg(
    qualifying_1.number), 
  qualifying_1.number, 
  qualifying_1.qualifyid
from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.position, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.qualifyid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.position, qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.number, qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid
limit 8;
select  
  max(
    drivers_1.driverref), 
  drivers_1.dob, 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_1.surname, drivers_1.code, drivers_1.nationality, drivers_1.forename, drivers_1.forename, drivers_1.driverref, drivers_1.nationality
limit 24;
select  
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 14;
select  
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 37;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 22;
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  min(
    qualifying_1.date), 
  qualifying_1.raceid
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.date, qualifying_1.constructorid, qualifying_1.number, qualifying_1.raceid
limit 38;
select  
  constructor_results_1.points, 
  standings_1.points
from 
  drivers as drivers_1
        inner join constructor_results as constructor_results_1
          inner join standings as standings_1
          on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_2
      inner join qualifying as qualifying_2
      on (constructor_results_2.constructorresultsid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
where qualifying_2.date is not NULL
limit 27;
select  
  standings_1.driverstandingsid, 
  standings_1.points, 
  min(
    standings_1.points), 
  standings_1.position, 
  max(
    standings_1.position), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.date, standings_1.driverstandingsid, standings_1.driverid, standings_1.raceid, standings_1.driverstandingsid, standings_1.wins, standings_1.raceid, standings_1.driverstandingsid
limit 15;
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.position, 
  min(
    qualifying_1.qualifyid)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.raceid, qualifying_1.position
limit 38;
select  
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid
from 
  standings as standings_1
where standings_1.wins is not NULL
limit 8;
select  
  max(
    races_1.name), 
  races_1.time, 
  races_2.name, 
  races_1.circuitid, 
  max(
    qualifying_2.position), 
  qualifying_2.constructorid, 
  races_2.year, 
  qualifying_1.driverid, 
  max(
    races_2.date), 
  min(
    races_2.circuitid), 
  qualifying_2.raceid
from 
  qualifying as qualifying_1
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.date = races_2.date
group by races_1.time, races_2.name, races_1.circuitid, qualifying_2.constructorid, races_2.year, qualifying_1.driverid, qualifying_2.raceid
limit 23;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 33;
select  
  min(
    circuits_1.name), 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  min(
    circuits_1.circuitid), 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.alt, circuits_1.alt
limit 21;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 36;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  count(*), 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid > constructor_standings_1.wins
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.position
limit 33;
select  
  circuits_1.country, 
  max(
    circuits_1.name), 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.location < circuits_1.country
group by circuits_1.country, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorresultsid
limit 32;
select  
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.code, 
  max(
    drivers_1.driverid), 
  avg(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.code, 
  count(
    drivers_1.code), 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.surname, 
  count(*), 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverid, drivers_1.surname, drivers_1.code, drivers_1.nationality, drivers_1.code, drivers_1.code, drivers_1.forename, drivers_1.forename, drivers_1.surname, drivers_1.nationality
limit 34;
select  
  races_1.circuitid, 
  races_1.raceid, 
  min(
    races_1.raceid), 
  races_1.round, 
  races_1.circuitid, 
  min(
    races_1.name), 
  races_1.time, 
  races_1.name
from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.raceid, races_1.round, races_1.circuitid, races_1.time, races_1.name
limit 32;
select  
  circuits_1.circuitref, 
  standings_3.date, 
  min(
    standings_3.points), 
  standings_1.date
from 
  standings as standings_1
    inner join standings as standings_2
      inner join constructor_results as constructor_results_1
          inner join standings as standings_3
          on (constructor_results_1.constructorresultsid = standings_3.driverstandingsid )
        inner join circuits as circuits_1
        on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
      on (standings_2.driverstandingsid = standings_3.driverstandingsid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_3.position is not NULL
group by circuits_1.circuitref, standings_3.date, standings_1.date
limit 18;
select  
  races_1.date
from 
  races as races_1
where races_1.circuitid is not NULL
limit 29;
select  
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 18;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.nationality is not NULL
limit 21;
select  
  results_1.constructorid, 
  results_1.milliseconds, 
  results_1.position, 
  results_1.grid, 
  min(
    results_1.date), 
  results_1.laps
from 
  results as results_1
where results_1.number < results_1.milliseconds
group by results_1.constructorid, results_1.milliseconds, results_1.position, results_1.grid, results_1.laps
limit 35;
select  
  standings_1.driverstandingsid, 
  standings_1.date
from 
  standings as standings_1
where standings_1.date < standings_1.date
limit 36;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  max(
    constructor_results_1.constructorresultsid), 
  max(
    constructor_results_1.points), 
  constructor_results_1.points, 
  min(
    constructor_results_1.points), 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.points, constructor_results_1.points, constructor_results_1.raceid, constructor_results_1.date, constructor_results_1.raceid, constructor_results_1.points, constructor_results_1.constructorid, constructor_results_1.raceid, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorresultsid
limit 27;
select  
  results_1.milliseconds, 
  results_1.number, 
  results_1.number, 
  results_1.positionorder, 
  results_1.driverid, 
  min(
    results_1.number), 
  results_1.raceid, 
  results_1.raceid, 
  results_1.statusid, 
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.driverid, 
  results_1.laps, 
  max(
    results_1.date)
from 
  results as results_1
where results_1.laps is not NULL
group by results_1.milliseconds, results_1.number, results_1.number, results_1.positionorder, results_1.driverid, results_1.raceid, results_1.raceid, results_1.statusid, results_1.fastestlap, results_1.resultid, results_1.driverid, results_1.laps
limit 19;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.points
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 37;
select  
  min(
    drivers_1.dob), 
  min(
    drivers_1.driverref), 
  drivers_1.code, 
  min(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.surname, drivers_1.forename, drivers_1.surname, drivers_1.nationality, drivers_1.forename
limit 14;
select  
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.wins, constructor_standings_1.constructorid
limit 37;
select  
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.name, 
  max(
    circuits_1.circuitref), 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.alt
from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.name, circuits_1.location, circuits_1.circuitref, circuits_1.name, circuits_1.circuitref, circuits_1.circuitid, circuits_1.alt, circuits_1.alt
limit 33;
select  
  constructor_standings_1.date, 
  races_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  races_1.circuitid, 
  min(
    races_1.name), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  races_1.name, 
  races_1.year
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.date, races_1.raceid, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.constructorid, races_1.circuitid, constructor_standings_1.constructorid, constructor_standings_1.raceid, races_1.name, races_1.year
limit 32;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.raceid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.wins, constructor_standings_1.points
limit 38;
select  
  results_1.raceid, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverid, 
  max(
    drivers_1.surname), 
  results_1.resultid, 
  min(
    results_1.rank), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  drivers_1.forename, 
  results_1.rank, 
  drivers_1.surname, 
  standings_1.position, 
  standings_1.driverstandingsid
from 
  drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where drivers_1.driverref is not NULL
group by results_1.raceid, drivers_1.surname, drivers_1.forename, drivers_1.driverid, results_1.resultid, constructor_results_1.constructorid, constructor_results_1.points, drivers_1.forename, results_1.rank, drivers_1.surname, standings_1.position, standings_1.driverstandingsid
limit 28;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid
limit 22;
select  
  results_1.date, 
  results_1.fastestlap, 
  results_1.grid, 
  results_1.points, 
  results_1.grid, 
  results_1.fastestlap, 
  min(
    results_1.constructorid), 
  results_1.fastestlap, 
  avg(
    results_1.statusid), 
  results_1.constructorid, 
  results_1.milliseconds, 
  results_1.statusid, 
  results_1.number, 
  results_1.rank, 
  results_1.resultid, 
  avg(
    results_1.position), 
  min(
    results_1.grid), 
  avg(
    results_1.raceid), 
  results_1.laps, 
  results_1.grid, 
  results_1.resultid, 
  min(
    results_1.date), 
  results_1.milliseconds, 
  results_1.points, 
  results_1.resultid
from 
  results as results_1
where results_1.rank is not NULL
group by results_1.date, results_1.fastestlap, results_1.grid, results_1.points, results_1.grid, results_1.fastestlap, results_1.fastestlap, results_1.constructorid, results_1.milliseconds, results_1.statusid, results_1.number, results_1.rank, results_1.resultid, results_1.laps, results_1.grid, results_1.resultid, results_1.milliseconds, results_1.points, results_1.resultid
limit 14;
select  
  constructor_results_1.constructorresultsid, 
  count(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 4;
select  
  max(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  count(
    constructor_standings_1.date)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.position
limit 24;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 34;
select  
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.country, 
  sum(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lng, 
  count(
    circuits_1.location), 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitid, 
  min(
    circuits_1.country), 
  max(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.country, 
  count(*)
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.lng, circuits_1.circuitref, circuits_1.alt, circuits_1.lat, circuits_1.location, circuits_1.name, circuits_1.name, circuits_1.lat, circuits_1.country, circuits_1.name, circuits_1.lat, circuits_1.circuitref, circuits_1.circuitid, circuits_1.location, circuits_1.alt, circuits_1.lng, circuits_1.country, circuits_1.name, circuits_1.country, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country
limit 5;
select  
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 8;
select  
  constructors_1.name, 
  results_1.rank, 
  constructors_1.constructorref, 
  sum(
    results_1.raceid), 
  constructors_1.constructorref, 
  results_1.position, 
  results_1.fastestlap, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where results_1.positionorder > results_1.constructorid
group by constructors_1.name, results_1.rank, constructors_1.constructorref, constructors_1.constructorref, results_1.position, results_1.fastestlap, constructor_results_1.raceid, constructor_results_1.raceid
limit 20;
select  
  sum(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.code
from 
  drivers as drivers_1
where drivers_1.nationality >= drivers_1.forename
group by drivers_1.surname, drivers_1.code, drivers_1.code
limit 17;
select  
  results_1.points, 
  max(
    results_1.constructorid), 
  results_1.grid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid
from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.laps = standings_1.driverstandingsid
group by results_1.points, results_1.grid, standings_1.driverstandingsid, standings_1.driverstandingsid
limit 32;
select  
  results_2.driverid, 
  min(
    races_1.time), 
  results_2.points, 
  results_2.constructorid, 
  min(
    standings_1.date), 
  races_1.name
from 
  standings as standings_1
        inner join constructors as constructors_1
          inner join races as races_1
          on (constructors_1.constructorid = races_1.raceid )
        on (standings_1.driverstandingsid = races_1.raceid )
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where races_1.time is not NULL
group by results_2.driverid, results_2.points, results_2.constructorid, races_1.name
limit 34;
select  
  constructor_standings_1.raceid, 
  circuits_1.circuitref, 
  min(
    circuits_2.alt), 
  results_1.date, 
  constructor_standings_1.points, 
  circuits_1.name, 
  constructors_1.name
from 
  circuits as circuits_1
    inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
          inner join qualifying as qualifying_1
          on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      inner join results as results_1
        inner join constructors as constructors_1
          inner join circuits as circuits_2
          on (constructors_1.constructorid = circuits_2.circuitid )
        on (results_1.resultid = constructors_1.constructorid )
      on (standings_1.driverstandingsid = results_1.resultid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructors_1.nationality is not NULL
group by constructor_standings_1.raceid, circuits_1.circuitref, results_1.date, constructor_standings_1.points, circuits_1.name, constructors_1.name
limit 16;
select  
  circuits_1.circuitid, 
  drivers_2.surname, 
  min(
    races_1.date)
from 
  drivers as drivers_1
    inner join drivers as drivers_2
      inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      on (drivers_2.driverid = races_1.raceid )
    on (drivers_1.driverid = drivers_2.driverid )
where circuits_1.alt is not NULL
group by circuits_1.circuitid, drivers_2.surname
limit 39;
select  
  constructors_2.nationality, 
  max(
    constructors_1.constructorref)
from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join constructors as constructors_3
      on (constructors_2.constructorid = constructors_3.constructorid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_3.nationality is not NULL
group by constructors_2.nationality
limit 34;
select  
  constructors_2.constructorid, 
  constructors_1.nationality, 
  constructors_3.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  max(
    constructors_3.constructorid), 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_2.constructorid, 
  constructors_3.constructorref, 
  max(
    constructors_2.name), 
  constructors_3.nationality, 
  constructors_1.nationality, 
  constructors_2.constructorid, 
  constructors_2.name, 
  constructors_1.nationality, 
  constructors_2.nationality, 
  constructors_1.name, 
  constructors_2.constructorid, 
  constructors_3.constructorref, 
  constructors_2.constructorid
from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructors as constructors_3
    on (constructors_1.constructorid = constructors_3.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_2.constructorid, constructors_1.nationality, constructors_3.constructorref, constructors_1.constructorref, constructors_1.constructorref, constructors_1.constructorid, constructors_1.nationality, constructors_2.constructorid, constructors_3.constructorref, constructors_3.nationality, constructors_1.nationality, constructors_2.constructorid, constructors_2.name, constructors_1.nationality, constructors_2.nationality, constructors_1.name, constructors_2.constructorid, constructors_3.constructorref, constructors_2.constructorid
limit 31;
select  
  races_1.time, 
  races_1.time, 
  max(
    races_1.date), 
  min(
    races_1.date), 
  max(
    races_1.date), 
  races_1.raceid
from 
  races as races_1
where races_1.time is not NULL
group by races_1.time, races_1.time, races_1.raceid
limit 13;
select  
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.name >= circuits_1.location
limit 32;
select  
  results_1.date, 
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.grid, 
  results_1.laps
from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.lng is not NULL
limit 23;
select  
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.country
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 30;
select  
  races_1.circuitid, 
  races_1.circuitid, 
  standings_1.date, 
  races_1.name, 
  races_1.round, 
  races_1.time, 
  standings_1.raceid, 
  races_1.time, 
  standings_1.raceid, 
  races_1.year
from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where races_1.name < races_1.time
limit 15;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
limit 4;
select  
  circuits_1.lng
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 8;
select  
  qualifying_1.raceid, 
  standings_1.position, 
  circuits_1.name, 
  results_1.raceid, 
  standings_1.points, 
  qualifying_1.qualifyid, 
  standings_1.position, 
  qualifying_1.date, 
  standings_1.points, 
  races_1.year, 
  max(
    circuits_1.circuitref), 
  races_1.time, 
  qualifying_1.constructorid, 
  standings_1.points, 
  qualifying_1.raceid, 
  results_1.positionorder, 
  results_1.date, 
  results_1.points
from 
  races as races_1
    inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      inner join qualifying as qualifying_1
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    on (races_1.raceid = results_1.resultid )
where races_1.year is not NULL
group by qualifying_1.raceid, standings_1.position, circuits_1.name, results_1.raceid, standings_1.points, qualifying_1.qualifyid, standings_1.position, qualifying_1.date, standings_1.points, races_1.year, races_1.time, qualifying_1.constructorid, standings_1.points, qualifying_1.raceid, results_1.positionorder, results_1.date, results_1.points
limit 41;
select  
  races_2.date, 
  avg(
    standings_1.position), 
  drivers_1.nationality, 
  min(
    drivers_1.dob)
from 
  races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join races as races_2
          inner join drivers as drivers_1
          on (races_2.raceid = drivers_1.driverid )
        inner join standings as standings_1
        on (races_2.raceid = standings_1.driverstandingsid )
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join qualifying as qualifying_2
    on (races_2.raceid = qualifying_2.qualifyid )
where drivers_1.forename is not NULL
group by races_2.date, drivers_1.nationality
limit 36;
select  
  races_1.time, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join constructor_results as constructor_results_2
      on (races_1.raceid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.name is not NULL
limit 37;
select  
  qualifying_1.driverid
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 21;
select  
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    constructors_1.name), 
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.constructorref, constructors_1.nationality, constructors_1.nationality, constructors_1.constructorref
limit 36;
select  
  races_1.date, 
  races_1.circuitid, 
  races_1.raceid, 
  constructor_standings_1.points
from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points < constructor_standings_1.points
limit 42;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverref, 
  max(
    drivers_1.forename), 
  drivers_1.nationality, 
  min(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.driverid, drivers_1.dob, drivers_1.driverref, drivers_1.code, drivers_1.forename, drivers_1.code, drivers_1.driverref, drivers_1.dob, drivers_1.driverref, drivers_1.nationality
limit 14;
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.constructorstandingsid)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
group by constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.wins
limit 32;
select  
  races_1.time
from 
  races as races_1
where races_1.circuitid is not NULL
limit 42;
select  
  max(
    constructor_standings_1.points)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
limit 23;
select  
  standings_1.date, 
  standings_1.driverstandingsid, 
  results_1.position, 
  circuits_1.lat, 
  standings_1.position, 
  count(*)
from 
  races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    on (races_1.raceid = results_1.resultid )
where races_1.circuitid is not NULL
group by standings_1.date, standings_1.driverstandingsid, results_1.position, circuits_1.lat, standings_1.position
limit 42;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality <= constructors_1.name
limit 14;
select  
  results_1.fastestlap, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.number, 
  results_1.grid, 
  results_1.rank, 
  results_1.raceid, 
  max(
    results_1.grid), 
  results_1.constructorid, 
  results_1.resultid, 
  avg(
    results_1.points), 
  results_1.constructorid, 
  results_1.grid, 
  results_1.fastestlap, 
  results_1.constructorid, 
  avg(
    results_1.number), 
  results_1.raceid, 
  results_1.positionorder, 
  results_1.milliseconds, 
  results_1.points, 
  results_1.positionorder, 
  results_1.date, 
  max(
    results_1.date)
from 
  results as results_1
where results_1.date > results_1.date
group by results_1.fastestlap, results_1.fastestlap, results_1.milliseconds, results_1.number, results_1.grid, results_1.rank, results_1.raceid, results_1.constructorid, results_1.resultid, results_1.constructorid, results_1.grid, results_1.fastestlap, results_1.constructorid, results_1.raceid, results_1.positionorder, results_1.milliseconds, results_1.points, results_1.positionorder, results_1.date
limit 1;
select  
  constructor_results_1.constructorid
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 34;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins
limit 36;
select  
  standings_1.driverid
from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorid = standings_1.position
limit 24;
select  
  max(
    circuits_1.lat), 
  drivers_1.dob, 
  circuits_1.location, 
  circuits_1.name, 
  drivers_1.dob, 
  drivers_1.forename
from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.forename is not NULL
group by drivers_1.dob, circuits_1.location, circuits_1.name, drivers_1.dob, drivers_1.forename
limit 30;
select  
  drivers_1.driverid, 
  max(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.driverid
from 
  drivers as drivers_1
where drivers_1.forename >= drivers_1.surname
group by drivers_1.driverid, drivers_1.dob, drivers_1.driverid
limit 32;
select  
  sum(
    constructor_standings_1.points)
from 
  races as races_1
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = drivers_1.driverid )
where constructor_standings_1.points = constructor_standings_1.points
limit 9;
select  
  min(
    constructors_1.name), 
  count(*), 
  constructors_1.nationality, 
  count(*), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality, constructors_1.constructorid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.constructorid
limit 11;
select  
  constructor_results_1.constructorresultsid
from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (races_1.raceid = results_1.resultid )
where races_1.name is not NULL
limit 21;
select  
  drivers_1.driverref
from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.time is not NULL
limit 2;
select  
  drivers_1.surname, 
  qualifying_1.raceid
from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.driverref is not NULL
limit 25;
select distinct 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.constructorid), 
  constructor_results_1.date, 
  constructor_results_1.points
from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 18;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 13;
select  
  results_1.driverid, 
  constructor_results_2.date, 
  races_1.circuitid, 
  max(
    results_1.fastestlap), 
  max(
    results_1.position), 
  races_1.time, 
  max(
    constructor_results_2.raceid), 
  max(
    drivers_1.forename), 
  constructor_standings_1.points, 
  constructor_results_1.date
from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
          inner join races as races_1
          on (constructor_standings_1.constructorstandingsid = races_1.raceid )
        inner join constructor_results as constructor_results_2
          inner join drivers as drivers_1
          on (constructor_results_2.constructorresultsid = drivers_1.driverid )
        on (races_1.raceid = drivers_1.driverid )
      on (results_1.resultid = races_1.raceid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where drivers_1.forename is not NULL
group by results_1.driverid, constructor_results_2.date, races_1.circuitid, races_1.time, constructor_standings_1.points, constructor_results_1.date
limit 41;
select  
  circuits_1.lat
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 19;
select  
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  count(
    drivers_1.surname), 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.driverid, 
  min(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.nationality, drivers_1.driverref, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.driverid, drivers_1.nationality, drivers_1.nationality, drivers_1.forename, drivers_1.dob, drivers_1.dob, drivers_1.driverref, drivers_1.driverref, drivers_1.forename, drivers_1.driverid, drivers_1.forename, drivers_1.driverid, drivers_1.nationality, drivers_1.dob, drivers_1.driverid, drivers_1.driverid, drivers_1.forename, drivers_1.nationality
limit 26;
select  
  circuits_1.lat, 
  circuits_1.name
from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 6;
select  
  standings_2.driverstandingsid, 
  max(
    circuits_1.location), 
  sum(
    circuits_1.alt), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  standings_1.driverstandingsid, 
  constructor_standings_1.position, 
  circuits_1.lng, 
  standings_1.date, 
  qualifying_1.date
from 
  qualifying as qualifying_1
        inner join standings as standings_1
          inner join constructor_standings as constructor_standings_1
          on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join circuits as circuits_1
      inner join standings as standings_2
      on (circuits_1.circuitid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where qualifying_1.number is not NULL
group by standings_2.driverstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, standings_1.driverstandingsid, constructor_standings_1.position, circuits_1.lng, standings_1.date, qualifying_1.date
limit 10;
select  
  races_1.name, 
  races_1.raceid, 
  races_1.year, 
  max(
    races_1.date), 
  circuits_1.country
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    on (constructors_1.constructorid = races_1.raceid )
where results_1.number is not NULL
group by races_1.name, races_1.raceid, races_1.year, circuits_1.country
limit 11;
select  
  constructors_1.name
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 32;
select  
  constructor_standings_1.date, 
  constructors_1.nationality, 
  results_1.milliseconds, 
  min(
    constructors_1.nationality), 
  sum(
    constructor_standings_1.points), 
  constructors_1.constructorref
from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join constructor_standings as constructor_standings_1
        inner join results as results_1
          inner join constructors as constructors_1
          on (results_1.resultid = constructors_1.constructorid )
        on (constructor_standings_1.constructorstandingsid = results_1.resultid )
      on (races_1.raceid = results_1.resultid )
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.constructorid is not NULL
group by constructor_standings_1.date, constructors_1.nationality, results_1.milliseconds, constructors_1.constructorref
limit 4;
select  
  races_1.date, 
  races_1.year, 
  min(
    races_1.name), 
  races_1.round, 
  min(
    races_1.time), 
  count(
    races_1.date), 
  races_1.year
from 
  races as races_1
where races_1.date > races_1.date
group by races_1.date, races_1.year, races_1.round, races_1.year
limit 16;
select  
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.dob, 
  max(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.driverref
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.driverref, drivers_1.forename, drivers_1.surname, drivers_1.surname, drivers_1.driverid, drivers_1.code, drivers_1.nationality, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, drivers_1.driverid, drivers_1.driverref
limit 5;
select  
  max(
    circuits_1.lat)
from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 3;
select  
  min(
    qualifying_1.date), 
  constructors_1.name, 
  circuits_1.name
from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.qualifyid is not NULL
group by constructors_1.name, circuits_1.name
limit 5;
select  
  qualifying_1.position, 
  qualifying_2.driverid, 
  qualifying_1.raceid, 
  standings_1.points, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  races_1.round, 
  qualifying_2.constructorid, 
  avg(
    qualifying_1.raceid), 
  qualifying_1.raceid, 
  qualifying_1.date, 
  races_1.round
from 
  standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_2.qualifyid <= constructor_results_1.constructorresultsid
group by qualifying_1.position, qualifying_2.driverid, qualifying_1.raceid, standings_1.points, qualifying_1.raceid, qualifying_1.number, races_1.round, qualifying_2.constructorid, qualifying_1.raceid, qualifying_1.date, races_1.round
limit 28;
select  
  circuits_1.name, 
  circuits_1.circuitid, 
  results_1.driverid, 
  results_1.positionorder
from 
  constructor_results as constructor_results_1
      inner join circuits as circuits_1
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.constructorid = circuits_1.circuitid
limit 39;
select  
  standings_1.raceid
from 
  standings as standings_1
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join standings as standings_2
    on (races_1.raceid = standings_2.driverstandingsid )
where qualifying_1.raceid is not NULL
limit 9;
select  
  results_1.raceid
from 
  results as results_1
where results_1.grid > results_1.resultid
limit 31;
select  
  constructor_standings_1.position
from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
        inner join constructors as constructors_2
        on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
      inner join standings as standings_1
      on (constructors_2.constructorid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid = constructor_standings_1.position
limit 12;
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  max(
    drivers_1.dob)
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.forename, drivers_1.driverref
limit 8;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  qualifying_1.qualifyid
from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.wins is not NULL
limit 8;
select  
  drivers_1.forename, 
  circuits_2.circuitref, 
  races_1.time, 
  circuits_2.name, 
  drivers_1.code, 
  max(
    races_1.date), 
  min(
    circuits_2.country), 
  races_1.raceid, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.country, 
  min(
    drivers_1.dob), 
  circuits_2.name
from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join drivers as drivers_1
      inner join circuits as circuits_2
      on (drivers_1.driverid = circuits_2.circuitid )
    on (races_1.raceid = circuits_2.circuitid )
where circuits_1.lat is not NULL
group by drivers_1.forename, circuits_2.circuitref, races_1.time, circuits_2.name, drivers_1.code, races_1.raceid, circuits_1.location, circuits_1.lng, circuits_1.country, circuits_2.name
limit 26;
select  
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.number >= qualifying_1.driverid
limit 11;
select  
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.circuitref
from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 13;
select  
  circuits_1.name, 
  circuits_1.circuitid
from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 34;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
limit 3;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 5;
select  
  races_1.year, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  races_1.time, 
  min(
    races_1.time), 
  qualifying_1.driverid, 
  races_1.date, 
  qualifying_1.number, 
  qualifying_1.position, 
  races_1.time, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  min(
    races_1.date), 
  races_1.raceid, 
  races_1.round, 
  qualifying_1.qualifyid, 
  races_1.time, 
  qualifying_1.qualifyid, 
  races_1.time, 
  qualifying_1.position, 
  races_1.circuitid, 
  qualifying_1.driverid, 
  races_1.raceid, 
  qualifying_1.qualifyid
from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where qualifying_1.position <= races_1.circuitid
group by races_1.year, qualifying_1.date, qualifying_1.raceid, qualifying_1.driverid, qualifying_1.qualifyid, races_1.time, qualifying_1.driverid, races_1.date, qualifying_1.number, qualifying_1.position, races_1.time, qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid, races_1.raceid, races_1.round, qualifying_1.qualifyid, races_1.time, qualifying_1.qualifyid, races_1.time, qualifying_1.position, races_1.circuitid, qualifying_1.driverid, races_1.raceid, qualifying_1.qualifyid
limit 1;
select  
  avg(
    results_1.points), 
  drivers_1.forename, 
  constructors_1.constructorid, 
  results_1.positionorder, 
  results_1.position, 
  constructors_1.name, 
  results_1.rank, 
  count(
    drivers_1.code), 
  constructors_1.nationality
from 
  constructors as constructors_1
        inner join results as results_1
        on (constructors_1.constructorid = results_1.resultid )
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where races_1.raceid > constructors_1.constructorid
group by drivers_1.forename, constructors_1.constructorid, results_1.positionorder, results_1.position, constructors_1.name, results_1.rank, constructors_1.nationality
limit 19;
select  
  max(
    results_1.position), 
  constructor_results_1.constructorresultsid, 
  results_1.fastestlap, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  avg(
    results_1.laps), 
  constructor_results_1.constructorid, 
  results_1.fastestlap, 
  constructor_results_1.constructorid, 
  results_1.number, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  results_1.date, 
  constructor_results_1.raceid, 
  results_1.laps, 
  max(
    constructor_results_1.date)
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, results_1.fastestlap, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.constructorid, results_1.fastestlap, constructor_results_1.constructorid, results_1.number, constructor_results_1.constructorresultsid, constructor_results_1.constructorresultsid, results_1.date, constructor_results_1.raceid, results_1.laps
limit 1;
select  
  standings_1.position, 
  standings_1.points
from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 26;
select  
  constructors_1.constructorref
from 
  constructors as constructors_1
where constructors_1.name < constructors_1.constructorref
limit 27;
select  
  qualifying_1.date
from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
limit 41;
select  
  results_1.laps, 
  constructors_1.constructorid, 
  results_2.laps
from 
  constructors as constructors_1
    inner join results as results_1
      inner join qualifying as qualifying_1
          inner join circuits as circuits_1
          on (qualifying_1.qualifyid = circuits_1.circuitid )
        inner join results as results_2
        on (qualifying_1.qualifyid = results_2.resultid )
      on (results_1.resultid = circuits_1.circuitid )
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.name is not NULL
limit 37;
select  
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.wins, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 35;
select  
  races_1.time, 
  races_1.time, 
  races_1.time, 
  sum(
    races_1.year), 
  max(
    races_1.name)
from 
  races as races_1
where races_1.date is not NULL
group by races_1.time, races_1.time, races_1.time
limit 24;
select  
  races_1.name, 
  constructor_standings_1.wins, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.raceid is not NULL
limit 15;
select  
  standings_1.raceid, 
  standings_1.points, 
  qualifying_1.constructorid, 
  qualifying_2.qualifyid, 
  circuits_1.alt, 
  qualifying_2.constructorid, 
  qualifying_1.raceid, 
  max(
    standings_1.date)
from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
        inner join circuits as circuits_1
        on (qualifying_2.qualifyid = circuits_1.circuitid )
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.country = circuits_1.circuitref
group by standings_1.raceid, standings_1.points, qualifying_1.constructorid, qualifying_2.qualifyid, circuits_1.alt, qualifying_2.constructorid, qualifying_1.raceid
limit 19;
select  
  constructor_standings_1.position, 
  results_1.fastestlap, 
  results_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.grid is not NULL
limit 37;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructor_results_1.points, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  results_1.points, 
  results_1.number, 
  constructors_1.constructorid, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.alt, 
  max(
    results_1.number), 
  results_1.positionorder, 
  sum(
    circuits_1.alt), 
  circuits_1.circuitref, 
  constructor_results_1.constructorid
from 
  circuits as circuits_1
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructor_results_1.constructorresultsid > circuits_1.circuitid
group by constructors_1.constructorref, constructors_1.name, constructor_results_1.points, constructors_1.constructorid, constructors_1.constructorref, results_1.points, results_1.number, constructors_1.constructorid, circuits_1.lng, circuits_1.location, circuits_1.lng, circuits_1.location, circuits_1.alt, results_1.positionorder, circuits_1.circuitref, constructor_results_1.constructorid
limit 2;
select  
  constructors_1.name, 
  constructors_1.constructorid
from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 2;
select  
  constructors_1.constructorid, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 24;
select  
  circuits_2.circuitid, 
  constructor_standings_1.position, 
  circuits_2.name, 
  constructor_standings_1.position
from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 30;
select  
  qualifying_1.date, 
  qualifying_1.position
from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 38;
select  
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.country, 
  constructors_1.nationality
from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where constructors_1.constructorref is not NULL
limit 3;
select  
  max(
    results_1.position), 
  results_1.constructorid, 
  standings_1.points
from 
  constructors as constructors_1
    inner join standings as standings_1
        inner join constructors as constructors_2
        on (standings_1.driverstandingsid = constructors_2.constructorid )
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
    on (constructors_1.constructorid = results_1.resultid )
where constructors_2.constructorid is not NULL
group by results_1.constructorid, standings_1.points
limit 10;
select  
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.location
from 
  circuits as circuits_1
where circuits_1.lng <= circuits_1.lat
limit 24;
select  
  max(
    constructor_results_1.date), 
  standings_1.date, 
  avg(
    standings_1.points), 
  races_1.time, 
  standings_1.raceid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  constructor_results_1.constructorid, 
  min(
    races_1.name), 
  qualifying_1.date, 
  min(
    races_1.date), 
  standings_1.wins, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  count(
    races_1.date), 
  constructor_results_1.date, 
  standings_1.position
from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.date is not NULL
group by standings_1.date, races_1.time, standings_1.raceid, qualifying_1.position, qualifying_1.raceid, constructor_results_1.constructorid, qualifying_1.date, standings_1.wins, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, standings_1.position
limit 11;
select  
  races_1.name, 
  races_1.year, 
  races_1.date
from 
  races as races_1
where races_1.date >= races_1.date
limit 27;
select  
  max(
    circuits_1.country), 
  races_1.circuitid
from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.lng is not NULL
group by races_1.circuitid
limit 10;
select  
  sum(
    races_2.raceid), 
  races_1.circuitid, 
  races_2.date, 
  min(
    constructor_results_1.points)
from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.year is not NULL
group by races_1.circuitid, races_2.date
limit 7;
select  
  min(
    constructor_results_2.date), 
  constructor_results_2.date, 
  sum(
    constructor_results_2.points), 
  constructor_results_1.points, 
  constructor_results_2.date, 
  constructor_results_1.constructorresultsid
from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorresultsid is not NULL
group by constructor_results_2.date, constructor_results_1.points, constructor_results_2.date, constructor_results_1.constructorresultsid
limit 1;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.qualifyid), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  avg(
    qualifying_1.number)
from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.constructorid, qualifying_1.driverid
limit 41;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  circuits_1.circuitid, 
  constructor_standings_1.constructorid, 
  constructor_results_1.points, 
  constructor_standings_1.raceid, 
  drivers_1.nationality, 
  constructors_1.nationality, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  circuits_1.lat, 
  constructors_1.constructorref
from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 14;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  count(*), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.nationality, constructors_1.constructorid, constructors_1.name, constructors_1.nationality, constructors_1.name, constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 41;
select  
  races_1.year, 
  races_1.circuitid, 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  races_1.time, 
  races_1.time, 
  races_1.round, 
  races_1.circuitid, 
  races_1.time, 
  races_1.date
from 
  races as races_1
where races_1.date = races_1.date
limit 20;
select  
  constructor_results_1.constructorresultsid, 
  results_1.rank, 
  constructor_results_1.date
from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.positionorder is not NULL
limit 2;
select  
  min(
    results_1.date), 
  results_1.number, 
  results_1.rank, 
  results_1.laps
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.laps >= results_1.resultid
group by results_1.number, results_1.rank, results_1.laps
limit 41;
select  
  min(
    constructors_2.constructorref), 
  constructors_2.constructorref
from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_2.constructorref
limit 16;
select  
  sum(
    results_1.number), 
  results_1.rank, 
  results_1.positionorder
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.date >= drivers_1.dob
group by results_1.rank, results_1.positionorder
limit 20;
select  
  min(
    results_1.driverid), 
  results_1.rank, 
  results_1.laps, 
  results_1.date
from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.dob < results_1.date
group by results_1.rank, results_1.laps, results_1.date
limit 6;
select  
  qualifying_1.raceid, 
  drivers_2.code, 
  circuits_1.circuitid, 
  constructors_1.name, 
  circuits_1.name
from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
          inner join circuits as circuits_1
            inner join drivers as drivers_1
            on (circuits_1.circuitid = drivers_1.driverid )
          on (qualifying_1.qualifyid = circuits_1.circuitid )
        inner join drivers as drivers_2
        on (qualifying_1.qualifyid = drivers_2.driverid )
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
    on (constructors_1.constructorid = qualifying_2.qualifyid )
where qualifying_1.position is not NULL
limit 28;
select  
  standings_1.raceid
from 
  constructor_results as constructor_results_1
      inner join races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where standings_1.raceid >= standings_1.position
limit 1;
select  
  constructor_standings_1.date
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 38;
select  
  qualifying_1.constructorid
from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 41;
select  
  results_1.statusid, 
  constructors_1.nationality, 
  avg(
    results_1.raceid), 
  constructors_1.constructorref, 
  constructors_1.nationality
from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.laps is not NULL
group by results_1.statusid, constructors_1.nationality, constructors_1.constructorref, constructors_1.nationality
limit 20;
select  
  results_2.grid, 
  results_1.statusid, 
  max(
    results_1.positionorder), 
  results_2.raceid, 
  results_1.statusid
from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.date = results_2.date
group by results_2.grid, results_1.statusid, results_2.raceid, results_1.statusid
limit 15;
select  
  circuits_1.lng, 
  max(
    circuits_1.circuitid), 
  races_1.circuitid
from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by circuits_1.lng, races_1.circuitid
limit 40;
select  
  drivers_1.nationality
from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 23;
select distinct 
  races_1.circuitid
from 
  races as races_1
where races_1.time is not NULL
limit 38;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  standings_1.points, 
  min(
    constructor_results_1.date)
from 
  constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_2
      inner join qualifying as qualifying_1
      on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
    on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
where constructor_results_1.raceid < qualifying_1.raceid
group by constructors_1.name, constructors_1.nationality, standings_1.points
limit 14;
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.alt, 
  max(
    circuits_1.name)
from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.alt, circuits_1.circuitid, circuits_1.circuitid, circuits_1.lng, circuits_1.circuitref, circuits_1.alt, circuits_1.name, circuits_1.lng, circuits_1.location, circuits_1.alt
limit 34;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  count(*)
from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.constructorid, constructor_standings_1.wins, constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_1.raceid
limit 22;
select  
  drivers_1.driverref, 
  drivers_1.code, 
  qualifying_1.driverid
from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where constructors_1.name is not NULL
limit 17;
select  
  circuits_1.country, 
  results_1.raceid, 
  constructor_results_1.constructorid, 
  max(
    results_1.fastestlap), 
  sum(
    results_1.grid)
from 
  circuits as circuits_1
    inner join results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.location > circuits_1.country
group by circuits_1.country, results_1.raceid, constructor_results_1.constructorid
limit 31;
select  
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  max(
    constructors_1.nationality)
from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.constructorid
limit 2;
