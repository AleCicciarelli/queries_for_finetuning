select  
  constructor_standings_2.date, 
  constructor_standings_1.points, 
  constructor_standings_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join constructor_standings as constructor_standings_2
    on (races_1.raceid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.date is not NULL
limit 28;
select  
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  min(
    standings_1.points), 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.points, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.date, 
  max(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.date, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 19;
select  
  constructors_1.name, 
  count(
    constructors_1.nationality)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name
limit 4;
select  
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
limit 6;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  drivers_1.nationality, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  drivers_1.forename, 
  constructor_results_1.constructorresultsid, 
  drivers_1.nationality, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  count(*), 
  avg(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.surname < drivers_1.nationality
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, drivers_1.forename, drivers_1.nationality
limit 34;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 40;
select  
  circuits_1.circuitref, 
  min(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.name, 
  min(
    circuits_1.lat), 
  avg(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 40;
select  
  qualifying_1.number, 
  standings_1.raceid, 
  drivers_1.driverid, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.qualifyid = drivers_1.driverid )
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where standings_1.wins is not NULL
limit 6;
select  
  qualifying_1.date, 
  circuits_1.name, 
  avg(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  results_1.laps, 
  results_1.milliseconds, 
  sum(
    circuits_1.lat), 
  circuits_1.lng, 
  results_1.number, 
  results_1.grid, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.qualifyid is not NULL
group by circuits_1.circuitid, circuits_1.lng, circuits_1.name, qualifying_1.date, results_1.grid, results_1.laps, results_1.milliseconds, results_1.number
limit 3;
select  
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
limit 12;
select  
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 10;
select  
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date is not NULL
limit 12;
select  
  standings_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  max(
    standings_1.points), 
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 35;
select  
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.alt, 
  min(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name = circuits_1.country
group by circuits_1.alt, circuits_1.country, circuits_1.location
limit 36;
select  
  results_1.driverid, 
  results_1.driverid, 
  results_1.date, 
  results_1.fastestlap, 
  results_1.grid, 
  results_1.statusid, 
  results_1.grid, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.number, 
  results_1.positionorder, 
  results_1.laps, 
  results_1.raceid, 
  sum(
    results_1.statusid), 
  max(
    results_1.date), 
  results_1.laps, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank is not NULL
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.milliseconds, results_1.number, results_1.positionorder, results_1.raceid, results_1.resultid, results_1.statusid
limit 19;
select  
  min(
    results_1.date), 
  max(
    results_1.date), 
  results_1.position, 
  circuits_1.alt, 
  results_1.driverid, 
  races_1.time, 
  circuits_1.location, 
  results_2.milliseconds, 
  circuits_1.alt, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
      inner join results as results_2
        inner join circuits as circuits_1
        on (results_2.resultid = circuits_1.circuitid )
      on (races_1.raceid = circuits_1.circuitid )
    on (results_1.resultid = circuits_1.circuitid )
where results_2.number > results_1.points
group by circuits_1.alt, circuits_1.circuitid, circuits_1.location, races_1.time, results_1.driverid, results_1.position, results_2.milliseconds
limit 4;
select  
  constructor_standings_1.position, 
  standings_1.wins, 
  max(
    constructor_results_1.date), 
  circuits_2.name, 
  circuits_2.lng, 
  circuits_1.alt, 
  constructor_standings_1.position, 
  races_1.time, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_2
      on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join races as races_1
          inner join qualifying as qualifying_1
          on (races_1.raceid = qualifying_1.qualifyid )
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
group by circuits_1.alt, circuits_2.lng, circuits_2.name, constructor_results_1.constructorresultsid, constructor_standings_1.position, races_1.time, standings_1.wins
limit 26;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  sum(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 22;
select  
  races_1.time, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.time < drivers_1.forename
limit 39;
select  
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitref is not NULL
limit 20;
select  
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.circuitref, 
  avg(
    circuits_1.alt), 
  avg(
    circuits_1.alt)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country
limit 19;
select  
  constructor_results_1.raceid, 
  standings_1.points, 
  standings_1.date, 
  standings_1.points, 
  constructor_results_1.points, 
  max(
    standings_2.date), 
  standings_2.wins, 
  standings_2.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_2
      on (constructor_results_1.constructorresultsid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.points is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, standings_1.date, standings_1.points, standings_2.driverstandingsid, standings_2.wins
limit 1;
select  
  standings_1.date, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 29;
select  
  min(
    results_2.date), 
  results_2.points, 
  constructors_1.constructorref, 
  standings_1.position, 
  standings_1.driverid, 
  results_1.grid, 
  results_2.position, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    inner join constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = standings_1.driverstandingsid )
where constructor_results_1.raceid > results_2.grid
group by constructors_1.constructorref, results_1.grid, results_2.points, results_2.position, standings_1.driverid, standings_1.position, standings_1.raceid
limit 25;
select  
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where circuits_1.alt is not NULL
limit 13;
select  
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
limit 39;
select  
  min(
    qualifying_1.number), 
  qualifying_1.driverid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.driverid, qualifying_1.position
limit 26;
select  
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join results as results_1
          inner join constructor_standings as constructor_standings_1
          on (results_1.resultid = constructor_standings_1.constructorstandingsid )
        inner join circuits as circuits_1
        on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
      on (constructors_2.constructorid = circuits_1.circuitid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructor_standings_1.constructorid is not NULL
limit 8;
select  
  constructor_standings_2.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.points), 
  min(
    constructor_standings_2.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_2.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_2.points), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.wins), 
  constructor_standings_2.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.points = constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_2.raceid, constructor_standings_2.wins
limit 20;
select  
  results_1.driverid, 
  min(
    results_1.date), 
  results_2.fastestlap, 
  races_1.round, 
  results_2.rank, 
  count(*), 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join results as results_2
      on (races_1.raceid = results_2.resultid )
    on (results_1.resultid = results_2.resultid )
where results_2.raceid >= qualifying_1.position
group by qualifying_1.raceid, races_1.round, results_1.driverid, results_2.fastestlap, results_2.rank
limit 31;
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 32;
select  
  constructor_standings_1.points, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 27;
select  
  min(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 36;
select  
  results_1.grid, 
  results_2.raceid, 
  results_1.position, 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.date > results_2.date
limit 22;
select  
  avg(
    standings_1.points), 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverstandingsid
limit 4;
select  
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 8;
select  
  races_1.year, 
  sum(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_results_1.constructorresultsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by races_1.year
limit 17;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 6;
select  
  circuits_1.lng, 
  max(
    races_1.year), 
  races_1.year, 
  races_1.year, 
  max(
    circuits_1.alt), 
  races_1.name, 
  count(
    circuits_1.alt), 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.name is not NULL
group by circuits_1.lng, races_1.circuitid, races_1.name, races_1.year
limit 22;
select  
  circuits_1.lat, 
  max(
    circuits_2.circuitid), 
  max(
    circuits_2.circuitid), 
  min(
    circuits_2.lng), 
  circuits_2.circuitid, 
  circuits_2.name, 
  sum(
    circuits_2.lat), 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_2.circuitid, 
  circuits_1.location, 
  circuits_1.country, 
  avg(
    circuits_2.circuitid), 
  circuits_1.circuitid, 
  circuits_2.lng, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_2.lat, 
  min(
    circuits_2.circuitid), 
  min(
    circuits_1.lat), 
  circuits_2.alt, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  min(
    circuits_2.circuitid), 
  circuits_2.circuitid, 
  sum(
    circuits_1.lng), 
  circuits_1.alt, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.circuitid >= circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_2.alt, circuits_2.circuitid, circuits_2.lat, circuits_2.lng, circuits_2.name
limit 30;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 9;
select  
  drivers_1.surname, 
  drivers_1.code, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date), 
  count(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_standings_1.raceid, drivers_1.code, drivers_1.surname
limit 10;
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 31;
select  
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where circuits_2.location is not NULL
limit 1;
select  
  results_1.number, 
  max(
    results_1.date), 
  standings_1.raceid, 
  standings_1.driverid, 
  results_1.milliseconds, 
  max(
    results_1.milliseconds)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by results_1.milliseconds, results_1.number, standings_1.driverid, standings_1.raceid
limit 11;
select  
  max(
    races_1.circuitid), 
  races_1.circuitid, 
  avg(
    races_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year <= races_1.circuitid
group by races_1.circuitid
limit 27;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.date <= races_1.date
limit 16;
select  
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 41;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  circuits_1.circuitref, 
  count(
    standings_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
group by circuits_1.circuitref, constructor_results_1.date
limit 2;
select  
  qualifying_1.driverid, 
  races_2.round, 
  max(
    races_2.date), 
  qualifying_1.position, 
  races_2.name, 
  races_2.round, 
  races_1.year, 
  races_1.circuitid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join races as races_2
      inner join qualifying as qualifying_1
      on (races_2.raceid = qualifying_1.qualifyid )
    on (races_1.raceid = races_2.raceid )
where races_1.year is not NULL
group by qualifying_1.driverid, qualifying_1.position, races_1.circuitid, races_1.year, races_2.name, races_2.round
limit 39;
select  
  sum(
    qualifying_1.position), 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 35;
select  
  qualifying_1.constructorid, 
  qualifying_1.position, 
  count(*), 
  min(
    qualifying_1.position), 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid
limit 30;
select  
  min(
    standings_1.points), 
  constructors_1.nationality, 
  races_1.round, 
  standings_1.points, 
  races_1.year, 
  races_1.circuitid, 
  standings_1.driverid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  races_1.circuitid, 
  min(
    standings_1.date), 
  races_1.date, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.wins is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, races_1.circuitid, races_1.date, races_1.round, races_1.year, standings_1.driverid, standings_1.points
limit 3;
select  
  sum(
    constructor_standings_1.points), 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
          inner join races as races_1
          on (qualifying_1.qualifyid = races_1.raceid )
        inner join standings as standings_1
        on (qualifying_1.qualifyid = standings_1.driverstandingsid )
      inner join races as races_2
      on (qualifying_1.qualifyid = races_2.raceid )
    inner join constructor_standings as constructor_standings_1
    on (races_2.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by qualifying_1.position
limit 7;
select  
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.position is not NULL
limit 12;
select  
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 27;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 4;
select  
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 2;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 16;
select  
  standings_1.date, 
  standings_1.driverid, 
  constructor_results_1.constructorresultsid, 
  standings_1.wins, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.position is not NULL
limit 34;
select  
  min(
    constructor_results_1.date), 
  results_1.grid, 
  results_1.grid, 
  min(
    results_1.milliseconds), 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.constructorid is not NULL
group by constructor_results_1.raceid, results_1.grid
limit 6;
select  
  races_1.name, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  races_1.name, 
  max(
    races_1.date), 
  constructor_results_1.constructorid, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, races_1.name, races_1.year
limit 37;
select  
  max(
    results_1.rank), 
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.position = constructor_results_1.constructorid
group by results_1.positionorder
limit 6;
select  
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 30;
select  
  sum(
    circuits_1.circuitid), 
  circuits_1.alt, 
  circuits_2.lng, 
  circuits_2.alt, 
  circuits_2.circuitid, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.circuitref, 
  avg(
    circuits_1.circuitid), 
  circuits_2.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.country is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.name, circuits_2.alt, circuits_2.circuitid, circuits_2.lng
limit 37;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 38;
select  
  constructor_standings_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      inner join constructor_standings as constructor_standings_2
      on (races_1.raceid = constructor_standings_2.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_2.date is not NULL
limit 17;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructors_1.constructorid is not NULL
limit 3;
select  
  circuits_1.country, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.date is not NULL
limit 7;
select  
  standings_1.driverstandingsid, 
  standings_1.date, 
  min(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
limit 25;
select  
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
limit 31;
select  
  races_1.name, 
  races_1.name, 
  races_1.round, 
  races_1.time, 
  races_1.raceid, 
  races_1.date, 
  races_1.circuitid, 
  races_1.round, 
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.time, 
  races_1.round, 
  races_1.year, 
  count(*), 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 13;
select  
  standings_2.wins, 
  standings_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.date is not NULL
limit 21;
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 23;
select  
  drivers_1.code, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 4;
select  
  count(*), 
  results_2.milliseconds, 
  results_2.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.raceid is not NULL
group by results_2.fastestlap, results_2.milliseconds
limit 18;
select  
  drivers_1.driverid, 
  drivers_3.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join circuits as circuits_1
      inner join drivers as drivers_3
      on (circuits_1.circuitid = drivers_3.driverid )
    on (drivers_1.driverid = drivers_3.driverid )
where drivers_3.driverref is not NULL
limit 8;
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 31;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  count(*), 
  max(
    constructor_standings_1.constructorid), 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 20;
select  
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  avg(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.name
limit 33;
select  
  constructor_standings_1.points, 
  max(
    constructor_results_1.date), 
  constructor_standings_2.constructorid, 
  sum(
    constructor_standings_2.points), 
  constructor_standings_3.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join constructor_standings as constructor_standings_1
          inner join constructor_standings as constructor_standings_2
          on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      on (races_1.raceid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_3
      on (constructor_results_1.constructorresultsid = constructor_standings_3.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_3.constructorstandingsid )
where constructors_1.name is not NULL
group by constructor_standings_1.points, constructor_standings_2.constructorid, constructor_standings_3.constructorstandingsid
limit 41;
select  
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 7;
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  max(
    standings_1.wins)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid = standings_1.driverstandingsid
group by standings_1.driverid, standings_1.driverstandingsid
limit 11;
select  
  standings_3.date, 
  standings_2.date, 
  standings_2.date, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join standings as standings_3
    on (standings_1.driverstandingsid = standings_3.driverstandingsid )
where standings_3.position is not NULL
limit 23;
select  
  constructor_standings_1.constructorstandingsid, 
  constructors_1.constructorref, 
  constructor_standings_1.date, 
  races_2.date, 
  races_2.raceid, 
  races_2.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join races as races_2
          inner join constructors as constructors_1
          on (races_2.raceid = constructors_1.constructorid )
        on (races_1.raceid = races_2.raceid )
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
        inner join constructor_results as constructor_results_1
        on (drivers_1.driverid = constructor_results_1.constructorresultsid )
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (races_2.raceid = drivers_1.driverid )
where races_1.time is not NULL
limit 15;
select  
  sum(
    constructor_standings_1.constructorid), 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid < constructor_standings_1.position
group by constructor_standings_1.position
limit 22;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 13;
select  
  circuits_1.lng, 
  min(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.name, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid < circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 10;
select  
  min(
    circuits_1.lng), 
  circuits_1.location, 
  circuits_1.circuitid, 
  min(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.country, 
  min(
    circuits_1.lng), 
  circuits_1.location, 
  avg(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.location
limit 10;
select  
  circuits_2.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      inner join standings as standings_1
        inner join qualifying as qualifying_1
          inner join circuits as circuits_1
          on (qualifying_1.qualifyid = circuits_1.circuitid )
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    inner join drivers as drivers_1
      inner join circuits as circuits_2
      on (drivers_1.driverid = circuits_2.circuitid )
    on (qualifying_1.qualifyid = circuits_2.circuitid )
where results_1.resultid is not NULL
limit 5;
select  
  drivers_1.forename, 
  drivers_1.forename, 
  standings_2.position, 
  standings_2.driverstandingsid, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join drivers as drivers_1
    on (standings_2.driverstandingsid = drivers_1.driverid )
where standings_1.wins is not NULL
limit 9;
select  
  standings_1.position, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 40;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid < constructor_standings_1.constructorstandingsid
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid
limit 25;
select  
  min(
    drivers_2.dob), 
  constructor_standings_1.wins, 
  constructor_standings_2.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
          inner join constructor_standings as constructor_standings_1
          on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
        inner join constructor_standings as constructor_standings_2
        on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
      inner join drivers as drivers_2
        inner join standings as standings_1
        on (drivers_2.driverid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where standings_1.wins is not NULL
group by constructor_standings_1.wins, constructor_standings_2.wins
limit 4;
select  
  min(
    races_1.raceid), 
  constructor_standings_1.points, 
  results_1.date, 
  constructor_standings_1.raceid, 
  results_2.fastestlap, 
  results_2.driverid, 
  max(
    results_1.points), 
  races_1.date, 
  results_2.rank, 
  min(
    results_1.position), 
  results_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    inner join results as results_1
          inner join constructor_standings as constructor_standings_1
          on (results_1.resultid = constructor_standings_1.constructorstandingsid )
        inner join results as results_2
        on (constructor_standings_1.constructorstandingsid = results_2.resultid )
      inner join constructors as constructors_1
      on (results_2.resultid = constructors_1.constructorid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where results_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructors_1.constructorid, constructors_1.name, races_1.date, results_1.constructorid, results_1.date, results_2.driverid, results_2.fastestlap, results_2.rank
limit 24;
select  
  standings_1.raceid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.raceid is not NULL
limit 21;
select  
  results_1.date, 
  drivers_1.driverref, 
  results_1.laps, 
  constructors_1.nationality, 
  min(
    results_1.fastestlap), 
  constructors_1.name, 
  results_1.raceid, 
  constructors_1.nationality, 
  drivers_1.driverref, 
  max(
    results_1.number), 
  min(
    drivers_1.dob), 
  results_1.constructorid, 
  constructors_1.nationality, 
  drivers_1.driverid, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by constructors_1.name, constructors_1.nationality, drivers_1.driverid, drivers_1.driverref, results_1.constructorid, results_1.date, results_1.laps, results_1.position, results_1.raceid
limit 23;
select  
  constructor_standings_1.constructorstandingsid, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.country is not NULL
limit 14;
select  
  results_1.statusid, 
  sum(
    results_1.milliseconds), 
  results_1.driverid, 
  results_1.fastestlap, 
  sum(
    results_1.milliseconds), 
  sum(
    results_1.positionorder), 
  results_1.statusid, 
  results_1.number, 
  results_1.milliseconds, 
  min(
    results_1.date), 
  results_1.resultid, 
  results_1.fastestlap, 
  results_1.driverid, 
  results_1.number, 
  results_1.positionorder, 
  results_1.number, 
  results_1.rank, 
  min(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid >= results_1.constructorid
group by results_1.driverid, results_1.fastestlap, results_1.milliseconds, results_1.number, results_1.positionorder, results_1.rank, results_1.resultid, results_1.statusid
limit 13;
select  
  races_1.time, 
  races_1.name, 
  races_1.time, 
  races_1.raceid, 
  races_1.year, 
  races_1.name, 
  races_1.date, 
  min(
    races_1.year), 
  races_1.time, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 19;
select  
  qualifying_1.number, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.date > qualifying_1.date
limit 31;
select  
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.code is not NULL
limit 25;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 37;
select  
  races_1.year, 
  count(*), 
  min(
    races_1.date), 
  max(
    races_1.date), 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.name, races_1.year
limit 11;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 16;
select  
  constructor_standings_1.constructorid, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.nationality is not NULL
group by constructor_standings_1.constructorid, drivers_1.surname, standings_1.position, standings_1.raceid, standings_1.wins
limit 27;
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
limit 26;
select  
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorid is not NULL
limit 33;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 26;
select  
  drivers_2.nationality, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.forename <= drivers_2.surname
group by drivers_2.nationality
limit 10;
select  
  races_1.circuitid, 
  races_1.round, 
  races_1.date, 
  races_1.round, 
  races_1.round, 
  races_1.date, 
  races_2.name, 
  races_1.date, 
  races_1.name, 
  races_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.circuitid is not NULL
limit 24;
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  avg(
    qualifying_1.position), 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 24;
select  
  min(
    circuits_1.lng), 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.lng, circuits_1.name
limit 22;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality > constructors_1.name
limit 11;
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 29;
select  
  results_1.positionorder, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
limit 15;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  max(
    races_1.date), 
  races_2.circuitid, 
  races_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (constructors_1.constructorid = races_1.raceid )
where races_1.date is not NULL
group by constructors_1.name, constructors_1.nationality, races_2.circuitid, races_2.date
limit 30;
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date > standings_1.date
limit 12;
select  
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
limit 15;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 42;
select  
  races_1.year, 
  max(
    races_1.date), 
  races_1.circuitid, 
  min(
    races_1.round), 
  races_1.raceid, 
  races_1.date, 
  races_1.circuitid, 
  min(
    races_1.date), 
  races_1.name, 
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.year
limit 38;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 28;
select  
  min(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
limit 10;
select  
  min(
    races_1.round), 
  races_1.raceid, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
group by races_1.raceid, races_1.year
limit 2;
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid > qualifying_1.raceid
limit 34;
select  
  drivers_1.driverref, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.year is not NULL
limit 25;
select  
  standings_1.date, 
  standings_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  constructor_standings_1.wins, 
  standings_1.date, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.date is not NULL
group by constructor_standings_1.wins, qualifying_1.driverid, qualifying_1.number, standings_1.date, standings_1.driverid
limit 27;
select  
  circuits_1.name, 
  qualifying_1.position, 
  circuits_2.lat, 
  circuits_2.name, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
      inner join circuits as circuits_2
      on (qualifying_1.qualifyid = circuits_2.circuitid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.name is not NULL
limit 13;
select  
  results_1.resultid, 
  results_1.statusid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.points is not NULL
limit 40;
select  
  results_1.positionorder, 
  results_1.rank, 
  results_1.fastestlap, 
  results_1.laps, 
  results_1.date, 
  results_1.resultid, 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.resultid is not NULL
limit 14;
select  
  constructor_results_1.date, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (constructors_1.constructorid = results_1.resultid )
where constructor_results_1.constructorid < constructors_1.constructorid
limit 21;
select  
  constructor_results_1.date, 
  results_1.date, 
  constructors_1.name, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructors_1.constructorref, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructors_1.name, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where results_1.grid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid, constructors_1.constructorref, constructors_1.name, results_1.date
limit 18;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position
limit 16;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.lng is not NULL
limit 6;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.wins, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.wins
limit 17;
select  
  circuits_1.circuitid, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.driverid is not NULL
limit 39;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 24;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructors_1.constructorid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 3;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  results_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  results_1.milliseconds, 
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins, results_1.constructorid, results_1.milliseconds
limit 2;
select  
  standings_1.wins, 
  standings_1.wins, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
limit 22;
select  
  min(
    qualifying_2.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where qualifying_1.qualifyid is not NULL
limit 31;
select  
  count(*), 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.location, 
  sum(
    circuits_1.alt), 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng < circuits_1.alt
group by circuits_1.circuitid, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 35;
select  
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  sum(
    circuits_1.lng)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng < circuits_1.alt
group by circuits_1.circuitref, circuits_1.lat, circuits_1.location
limit 1;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 32;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_2.constructorref, 
  constructors_2.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join drivers as drivers_1
        inner join constructors as constructors_2
        on (drivers_1.driverid = constructors_2.constructorid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.number <= results_1.rank
limit 9;
select  
  races_1.date, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 37;
select  
  results_1.points, 
  count(
    results_1.milliseconds), 
  results_1.laps, 
  avg(
    results_1.rank), 
  results_1.date, 
  min(
    results_1.rank)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.points is not NULL
group by results_1.date, results_1.laps, results_1.points
limit 16;
select  
  max(
    results_1.date), 
  results_1.position, 
  results_1.number, 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.grid = results_1.laps
group by results_1.grid, results_1.number, results_1.position
limit 38;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 16;
select  
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time < races_1.name
limit 23;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 26;
select  
  constructor_standings_1.position, 
  min(
    constructor_standings_1.constructorid), 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 4;
select  
  qualifying_2.number, 
  qualifying_2.number, 
  qualifying_1.number, 
  min(
    constructor_results_1.points), 
  qualifying_1.position, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join qualifying as qualifying_1
        on (drivers_1.driverid = qualifying_1.qualifyid )
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where constructor_results_1.points < constructor_results_1.points
group by drivers_1.nationality, qualifying_1.number, qualifying_1.position, qualifying_2.number
limit 34;
select  
  min(
    drivers_1.dob), 
  drivers_1.dob, 
  count(*), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.dob, 
  sum(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.nationality, 
  count(*), 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.nationality
limit 34;
select  
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 25;
select  
  drivers_1.forename, 
  min(
    qualifying_1.date), 
  circuits_1.location, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.driverid is not NULL
group by circuits_1.lng, circuits_1.location, drivers_1.forename
limit 27;
select  
  races_2.name, 
  sum(
    results_1.driverid), 
  qualifying_1.date, 
  results_1.grid, 
  races_1.circuitid, 
  qualifying_1.position, 
  races_1.raceid, 
  qualifying_1.qualifyid, 
  results_1.raceid, 
  races_1.year, 
  races_2.name, 
  races_1.year, 
  races_1.name, 
  sum(
    qualifying_2.qualifyid), 
  min(
    results_1.fastestlap)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join races as races_2
        inner join qualifying as qualifying_2
        on (races_2.raceid = qualifying_2.qualifyid )
      on (races_1.raceid = qualifying_2.qualifyid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_2.position is not NULL
group by qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid, races_1.circuitid, races_1.name, races_1.raceid, races_1.year, races_2.name, results_1.grid, results_1.raceid
limit 29;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
limit 24;
select  
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 16;
select  
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
limit 20;
select  
  races_1.year, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 21;
select  
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 4;
select  
  constructors_1.constructorid, 
  constructors_2.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.nationality < constructors_1.constructorref
limit 36;
select  
  constructors_1.name, 
  max(
    races_1.year), 
  races_1.raceid, 
  races_1.raceid, 
  min(
    races_1.date), 
  drivers_1.surname, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.dob <= races_1.date
group by constructors_1.name, drivers_1.driverid, drivers_1.surname, races_1.raceid
limit 17;
select  
  standings_1.raceid, 
  standings_1.date, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    inner join standings as standings_2
    on (races_1.raceid = standings_2.driverstandingsid )
where races_1.date >= standings_2.date
limit 27;
select  
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
limit 29;
select  
  max(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.position, 
  max(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.position, qualifying_1.raceid
limit 8;
select  
  circuits_1.name, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt = circuits_1.lat
limit 27;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid
limit 11;
select  
  standings_1.driverid, 
  standings_1.raceid, 
  sum(
    standings_1.points), 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.date, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where standings_1.date is not NULL
group by drivers_1.driverref, standings_1.date, standings_1.driverid, standings_1.raceid, standings_1.wins
limit 29;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
limit 14;
select  
  drivers_1.dob, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.surname is not NULL
group by drivers_1.dob
limit 42;
select  
  count(*), 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.nationality, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.date, 
  races_1.circuitid, 
  races_1.date, 
  races_1.date, 
  drivers_1.surname, 
  max(
    races_1.date), 
  races_1.year, 
  min(
    races_1.year), 
  drivers_1.driverref, 
  races_1.year, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname, qualifying_1.date, qualifying_1.position, races_1.circuitid, races_1.date, races_1.year
limit 10;
select  
  max(
    qualifying_1.position), 
  qualifying_1.number, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  max(
    qualifying_1.driverid), 
  qualifying_1.driverid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
limit 40;
select  
  count(*), 
  races_1.round, 
  max(
    races_1.date), 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.raceid, races_1.round
limit 42;
select  
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.date, 
  max(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date), 
  max(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position
limit 25;
select  
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 17;
select  
  max(
    results_1.date), 
  qualifying_1.driverid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  results_1.position, 
  constructor_results_1.raceid, 
  qualifying_1.position, 
  max(
    constructor_results_1.date), 
  results_1.milliseconds, 
  results_1.grid, 
  constructor_results_1.points, 
  min(
    results_1.rank), 
  qualifying_1.constructorid, 
  constructor_results_1.constructorid, 
  qualifying_1.qualifyid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, results_1.grid, results_1.milliseconds, results_1.position
limit 1;
select  
  results_1.laps, 
  min(
    results_1.date), 
  results_1.rank, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.grid is not NULL
group by results_1.laps, results_1.number, results_1.rank
limit 21;
select  
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  min(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.driverid, drivers_1.forename
limit 29;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
limit 30;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.position is not NULL
limit 9;
select  
  races_1.round, 
  races_1.date, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
limit 23;
select  
  standings_3.driverid, 
  standings_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
          inner join results as results_1
          on (standings_1.driverstandingsid = results_1.resultid )
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join standings as standings_3
      inner join constructors as constructors_1
      on (standings_3.driverstandingsid = constructors_1.constructorid )
    on (results_1.resultid = constructors_1.constructorid )
where results_1.constructorid is not NULL
limit 31;
select  
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 25;
select  
  min(
    constructor_results_1.points), 
  races_2.name, 
  races_2.circuitid, 
  sum(
    constructor_results_1.points), 
  constructors_1.name, 
  constructor_results_1.raceid, 
  max(
    races_1.date), 
  constructors_1.constructorref, 
  min(
    constructor_results_1.points), 
  sum(
    constructor_results_1.points), 
  races_1.round, 
  races_1.name, 
  constructors_1.constructorid, 
  constructor_results_1.points, 
  races_1.circuitid, 
  constructors_1.constructorid, 
  constructor_results_1.points, 
  races_2.circuitid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where constructors_1.name is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, races_1.circuitid, races_1.name, races_1.round, races_2.circuitid, races_2.name
limit 42;
select  
  standings_1.points, 
  min(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.points
limit 35;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 10;
select  
  constructor_results_2.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_results_1.date, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
          inner join qualifying as qualifying_1
          on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
        inner join constructors as constructors_1
          inner join races as races_1
          on (constructors_1.constructorid = races_1.raceid )
        on (constructor_results_2.constructorresultsid = races_1.raceid )
      inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.constructorid is not NULL
limit 5;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  max(
    standings_1.date), 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.wins, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.wins, 
  standings_1.date, 
  count(*), 
  standings_1.raceid, 
  standings_1.date, 
  count(
    standings_1.raceid), 
  standings_1.points, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 3;
select  
  count(
    circuits_1.location), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.lat, 
  sum(
    circuits_1.lat), 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  avg(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name < circuits_1.circuitref
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 27;
select  
  results_2.position, 
  results_1.statusid, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    inner join results as results_2
    on (circuits_1.circuitid = results_2.resultid )
where results_1.grid is not NULL
limit 40;
select  
  drivers_1.code, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.nationality > drivers_1.surname
limit 39;
select  
  qualifying_1.date, 
  constructor_standings_1.date, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  qualifying_1.driverid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.raceid, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid
limit 17;
select  
  standings_1.wins, 
  min(
    standings_1.points), 
  standings_1.points, 
  standings_1.driverstandingsid, 
  max(
    standings_1.points), 
  min(
    standings_1.date), 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date >= standings_1.date
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.wins
limit 35;
select  
  results_1.resultid, 
  results_1.number, 
  max(
    results_1.date), 
  results_1.grid, 
  min(
    results_1.rank), 
  results_1.laps, 
  results_1.resultid, 
  count(*), 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank = results_1.fastestlap
group by results_1.grid, results_1.laps, results_1.number, results_1.position, results_1.resultid
limit 31;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid
limit 16;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.date is not NULL
limit 7;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  results_1.number, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  constructor_results_1.date, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.constructorid is not NULL
limit 3;
select  
  circuits_2.country, 
  max(
    constructor_results_1.points), 
  circuits_2.country, 
  constructors_1.name, 
  circuits_2.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
      inner join circuits as circuits_2
      on (constructors_1.constructorid = circuits_2.circuitid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_1.wins > constructor_standings_1.constructorid
group by circuits_2.circuitref, circuits_2.country, constructors_1.name
limit 26;
select  
  races_1.circuitid, 
  races_1.time, 
  races_1.time, 
  sum(
    races_1.raceid), 
  races_1.year, 
  races_1.year, 
  races_1.date, 
  races_1.circuitid, 
  sum(
    races_1.year), 
  races_1.year, 
  races_1.name, 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  min(
    races_1.date), 
  races_1.name, 
  races_1.date, 
  races_1.year, 
  races_1.name, 
  races_1.round, 
  races_1.circuitid, 
  min(
    races_1.date), 
  races_1.time, 
  races_1.raceid, 
  races_1.time, 
  races_1.time, 
  races_1.time, 
  races_1.raceid, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 28;
select  
  avg(
    constructor_results_1.points), 
  sum(
    constructor_results_1.constructorid), 
  count(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 31;
select  
  min(
    circuits_2.circuitid), 
  circuits_1.location, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
        inner join constructor_results as constructor_results_2
        on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where circuits_2.circuitid is not NULL
group by circuits_1.location, constructor_results_1.points
limit 8;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 5;
select  
  results_1.statusid, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.surname is not NULL
limit 8;
select  
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  count(
    qualifying_1.constructorid), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 29;
select  
  races_1.date, 
  min(
    races_1.raceid), 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
group by races_1.date, races_1.time
limit 22;
select  
  circuits_1.alt, 
  max(
    circuits_1.circuitid), 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name = circuits_1.country
group by circuits_1.alt, circuits_1.location, circuits_1.name
limit 19;
select  
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins
limit 42;
select  
  results_1.laps, 
  drivers_3.surname, 
  drivers_1.code, 
  min(
    drivers_1.dob), 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join drivers as drivers_2
        inner join drivers as drivers_3
        on (drivers_2.driverid = drivers_3.driverid )
      inner join results as results_1
      on (drivers_2.driverid = results_1.resultid )
    on (drivers_1.driverid = drivers_2.driverid )
where results_1.constructorid = results_1.resultid
group by drivers_1.code, drivers_3.surname, results_1.laps
limit 20;
select  
  min(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 16;
select  
  sum(
    standings_2.driverid), 
  count(
    standings_2.points), 
  drivers_1.dob, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
      inner join standings as standings_2
      on (drivers_1.driverid = standings_2.driverstandingsid )
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by drivers_1.dob, standings_1.driverstandingsid
limit 36;
select  
  qualifying_1.number, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.date), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  qualifying_1.raceid, 
  max(
    constructor_standings_1.date), 
  qualifying_1.date, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  qualifying_1.date, 
  constructor_standings_1.wins, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.number is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 26;
select  
  qualifying_1.date, 
  standings_1.wins, 
  standings_1.raceid, 
  qualifying_1.qualifyid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    standings_1.points), 
  max(
    standings_1.date), 
  standings_1.points, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, qualifying_1.date, qualifying_1.qualifyid, standings_1.points, standings_1.raceid, standings_1.wins
limit 34;
select  
  races_1.date, 
  races_1.time, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
limit 23;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  min(
    standings_1.date), 
  max(
    standings_1.wins), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.points, 
  max(
    standings_1.driverid), 
  sum(
    standings_1.raceid), 
  count(*), 
  standings_1.raceid, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 19;
select  
  constructors_2.name, 
  constructors_1.name, 
  drivers_1.code, 
  constructors_2.nationality, 
  count(
    constructors_2.nationality), 
  constructors_2.constructorref, 
  drivers_1.driverref, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.nationality is not NULL
group by constructors_1.name, constructors_1.nationality, constructors_2.constructorref, constructors_2.name, constructors_2.nationality, drivers_1.code, drivers_1.driverref
limit 40;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 20;
select  
  circuits_2.country, 
  races_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_2.wins, 
  circuits_1.alt, 
  constructor_standings_2.constructorid, 
  circuits_1.circuitid, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    inner join circuits as circuits_2
      inner join constructor_standings as constructor_standings_2
      on (circuits_2.circuitid = constructor_standings_2.constructorstandingsid )
    on (races_1.raceid = circuits_2.circuitid )
where constructor_standings_2.date = constructor_standings_1.date
limit 28;
select  
  avg(
    constructor_standings_1.position), 
  constructor_standings_1.raceid, 
  constructors_1.name, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructors_1.name
limit 37;
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.driverid = circuits_1.circuitid
group by circuits_1.circuitref, circuits_1.country
limit 20;
select  
  sum(
    standings_1.wins), 
  standings_1.date, 
  standings_1.raceid, 
  sum(
    standings_1.wins), 
  standings_1.driverstandingsid, 
  min(
    standings_1.date), 
  standings_1.date, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid
limit 28;
select  
  drivers_1.code, 
  count(*), 
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code
limit 31;
select  
  count(
    results_1.positionorder), 
  results_1.position, 
  results_1.milliseconds, 
  count(*), 
  results_1.constructorid, 
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.rank, 
  results_1.number, 
  max(
    results_1.constructorid), 
  results_1.statusid, 
  results_1.statusid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.constructorid, results_1.milliseconds, results_1.number, results_1.position, results_1.rank, results_1.statusid
limit 32;
select  
  races_1.raceid, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
limit 4;
select  
  circuits_1.country, 
  circuits_1.name, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  circuits_1.location, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by circuits_1.country, circuits_1.location, circuits_1.name, constructor_results_1.points, constructor_results_1.raceid
limit 20;
select  
  drivers_1.surname, 
  max(
    drivers_1.dob), 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.surname
limit 35;
select  
  constructor_results_1.date, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructor_results_1.date > qualifying_1.date
limit 3;
select  
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.name, 
  races_1.round, 
  races_1.date, 
  races_1.date, 
  races_1.name, 
  races_1.circuitid, 
  races_1.circuitid, 
  count(*), 
  races_1.raceid, 
  races_1.name, 
  races_1.round, 
  races_1.time, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 13;
select  
  qualifying_1.qualifyid, 
  constructor_standings_1.points, 
  avg(
    constructor_results_2.points), 
  min(
    constructor_results_2.date), 
  constructor_standings_1.wins, 
  constructor_results_1.points, 
  qualifying_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
        inner join constructors as constructors_1
        on (qualifying_2.qualifyid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_2
      on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructor_results_1.points < constructor_results_2.points
group by constructor_results_1.points, constructor_standings_1.points, constructor_standings_1.wins, qualifying_1.qualifyid, qualifying_2.position
limit 26;
select  
  races_1.date, 
  races_1.date, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round >= races_1.raceid
limit 11;
select  
  results_1.grid, 
  results_1.number, 
  constructor_results_2.constructorid, 
  constructors_1.name, 
  constructor_results_2.constructorresultsid, 
  results_1.number, 
  constructor_results_2.constructorid, 
  constructor_results_1.constructorid, 
  standings_1.position, 
  results_1.resultid, 
  constructor_results_1.constructorid, 
  constructor_results_2.raceid, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (standings_1.driverstandingsid = results_1.resultid )
where constructors_1.constructorid is not NULL
limit 27;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 29;
select  
  circuits_1.lat, 
  results_1.position, 
  count(*), 
  qualifying_1.number, 
  races_1.name, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    on (races_1.raceid = circuits_1.circuitid )
where races_1.year is not NULL
group by circuits_1.circuitref, circuits_1.lat, circuits_1.lng, constructor_results_1.points, qualifying_1.number, races_1.name, results_1.position
limit 42;
select  
  constructors_1.name, 
  drivers_1.driverid, 
  avg(
    races_1.circuitid), 
  races_1.time, 
  drivers_1.nationality, 
  avg(
    races_1.year), 
  drivers_1.dob, 
  drivers_1.surname, 
  races_1.round, 
  drivers_1.forename, 
  races_1.date, 
  constructors_1.constructorid, 
  drivers_1.driverref, 
  races_1.raceid, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (constructors_1.constructorid = races_1.raceid )
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.name, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 12;
select  
  races_1.name, 
  races_1.round, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 33;
select  
  constructor_standings_1.date, 
  constructor_results_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.position < constructor_standings_2.position
limit 34;
select  
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name < circuits_1.circuitref
limit 14;
select  
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 30;
select  
  results_1.rank, 
  max(
    standings_1.date), 
  standings_1.position, 
  results_1.laps, 
  avg(
    results_1.number)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
group by results_1.laps, results_1.rank, standings_1.position
limit 29;
select  
  circuits_1.circuitid, 
  sum(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid
limit 8;
select  
  circuits_1.alt, 
  min(
    standings_1.raceid), 
  standings_1.raceid, 
  sum(
    circuits_1.lng)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.country is not NULL
group by circuits_1.alt, standings_1.raceid
limit 38;
select  
  results_1.date, 
  sum(
    results_1.milliseconds), 
  min(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by results_1.date
limit 16;
select  
  min(
    circuits_1.lat), 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country = circuits_1.name
group by circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 33;
select  
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 19;
select  
  constructor_results_1.constructorresultsid, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.nationality is not NULL
limit 17;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name <= constructors_1.nationality
limit 30;
select  
  results_1.grid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.date, 
  results_1.grid, 
  results_1.grid, 
  standings_1.points, 
  max(
    results_1.date), 
  results_1.grid, 
  standings_1.position, 
  max(
    results_1.position), 
  standings_1.points, 
  results_1.fastestlap, 
  min(
    standings_1.date), 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.points is not NULL
group by results_1.fastestlap, results_1.grid, results_1.rank, standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 39;
select  
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 20;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid >= constructor_standings_1.wins
limit 21;
select  
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  min(
    standings_1.points), 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points = standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position
limit 22;
select  
  standings_1.points, 
  standings_1.raceid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date <= standings_1.date
group by standings_1.points, standings_1.raceid
limit 15;
select  
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  sum(
    circuits_1.lng), 
  qualifying_1.position, 
  circuits_1.alt, 
  sum(
    races_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where races_1.circuitid is not NULL
group by circuits_1.alt, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid
limit 27;
select  
  constructor_results_1.constructorresultsid, 
  constructors_2.nationality, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (races_1.raceid = constructors_1.constructorid )
    inner join constructor_results as constructor_results_1
    on (constructors_2.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.name is not NULL
limit 15;
select  
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
limit 3;
select  
  races_1.date, 
  count(
    races_1.raceid), 
  races_1.name, 
  races_1.raceid, 
  races_1.round, 
  races_1.date, 
  races_1.date, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round
limit 33;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 42;
select  
  drivers_1.code, 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.dob, 
  max(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 18;
select  
  standings_1.wins, 
  count(
    standings_1.driverid), 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 18;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join circuits as circuits_1
        inner join constructors as constructors_1
        on (circuits_1.circuitid = constructors_1.constructorid )
      on (results_1.resultid = circuits_1.circuitid )
    inner join constructors as constructors_2
    on (circuits_1.circuitid = constructors_2.constructorid )
where results_1.resultid < results_1.positionorder
limit 24;
select  
  results_1.points, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
limit 8;
select  
  sum(
    constructor_standings_1.points), 
  circuits_1.country, 
  races_1.year, 
  races_1.round, 
  races_1.year, 
  races_1.time, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      on (circuits_1.circuitid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
group by circuits_1.country, races_1.circuitid, races_1.round, races_1.time, races_1.year
limit 35;
select  
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 15;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 36;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date = constructor_results_1.date
limit 36;
select  
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 41;
select  
  min(
    races_2.date), 
  races_2.name, 
  races_2.circuitid, 
  races_2.raceid, 
  max(
    races_1.date), 
  races_2.time, 
  races_2.circuitid, 
  races_1.year, 
  races_2.round, 
  races_1.round, 
  races_1.round, 
  races_2.time, 
  max(
    races_2.date), 
  races_2.raceid, 
  races_2.round, 
  races_1.raceid, 
  races_1.date, 
  max(
    races_1.date), 
  races_2.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.name is not NULL
group by races_1.date, races_1.raceid, races_1.round, races_1.year, races_2.circuitid, races_2.name, races_2.raceid, races_2.round, races_2.time
limit 33;
select  
  constructor_standings_1.points, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.wins
limit 17;
select  
  min(
    qualifying_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 10;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.points, constructor_results_1.raceid
limit 1;
select  
  max(
    results_1.positionorder), 
  results_1.raceid, 
  min(
    results_1.date), 
  results_1.driverid, 
  results_1.number, 
  min(
    results_1.date), 
  results_1.date, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.grid, 
  avg(
    results_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.date, results_1.driverid, results_1.grid, results_1.milliseconds, results_1.number, results_1.raceid
limit 8;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 12;
select  
  drivers_1.nationality, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 18;
select  
  constructors_1.constructorref, 
  count(
    constructors_1.constructorref), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 3;
select  
  results_1.points, 
  count(
    constructors_1.nationality), 
  constructor_results_1.constructorid, 
  constructor_standings_1.wins, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorref is not NULL
group by constructor_results_1.constructorid, constructor_standings_1.wins, constructors_1.name, results_1.points
limit 33;
select  
  qualifying_1.position, 
  qualifying_1.number, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 41;
select  
  avg(
    races_1.circuitid), 
  races_1.date, 
  count(
    races_1.date), 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name <= races_1.time
group by races_1.date, races_1.raceid
limit 30;
select  
  results_1.raceid, 
  races_1.year, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.points is not NULL
limit 32;
select  
  min(
    races_1.date), 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join races as races_1
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.driverid > races_1.round
group by constructors_1.nationality
limit 37;
select  
  max(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob >= drivers_1.dob
limit 15;
select  
  races_1.date, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 34;
select  
  results_1.position, 
  results_1.number, 
  results_1.driverid, 
  results_1.positionorder, 
  results_1.constructorid, 
  results_1.number, 
  count(*), 
  results_1.rank, 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.constructorid, results_1.driverid, results_1.number, results_1.position, results_1.positionorder, results_1.rank
limit 30;
select  
  count(*), 
  standings_1.position, 
  standings_1.position, 
  sum(
    standings_1.points), 
  standings_1.driverid, 
  min(
    standings_1.date), 
  standings_1.wins, 
  sum(
    standings_1.wins), 
  standings_1.raceid, 
  count(
    standings_1.driverstandingsid), 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date = standings_1.date
group by standings_1.driverid, standings_1.position, standings_1.raceid, standings_1.wins
limit 18;
select  
  standings_1.driverstandingsid, 
  constructors_1.constructorid, 
  sum(
    standings_1.points), 
  standings_1.raceid, 
  avg(
    standings_1.points), 
  count(
    standings_1.driverstandingsid), 
  constructors_1.constructorid, 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  constructors_1.constructorid, 
  avg(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.date >= standings_1.date
group by constructors_1.constructorid, standings_1.driverstandingsid, standings_1.raceid
limit 35;
select  
  results_1.rank, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number is not NULL
limit 20;
select  
  max(
    results_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.resultid is not NULL
limit 6;
select  
  drivers_1.code, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
          inner join drivers as drivers_1
          on (qualifying_2.qualifyid = drivers_1.driverid )
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where standings_1.points <= standings_1.points
limit 25;
select  
  constructor_standings_1.position, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 38;
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref <= drivers_1.nationality
limit 21;
select  
  races_1.year, 
  races_1.time, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name is not NULL
limit 36;
select  
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 23;
select  
  races_1.circuitid, 
  avg(
    races_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.name is not NULL
group by races_1.circuitid
limit 22;
select  
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.qualifyid = constructors_1.constructorid )
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where qualifying_1.date > standings_1.date
limit 38;
select  
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 40;
select  
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.dob, 
  count(
    drivers_1.driverref), 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 4;
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.dob, 
  count(*), 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.dob, 
  avg(
    drivers_1.driverid), 
  min(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob, 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 24;
select  
  circuits_1.lng, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  min(
    standings_1.driverstandingsid), 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.lng is not NULL
group by circuits_1.lng, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 2;
select  
  constructor_results_1.points, 
  count(
    constructor_results_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.points
limit 20;
select  
  qualifying_1.date, 
  results_2.date, 
  results_1.driverid, 
  constructors_2.nationality, 
  avg(
    results_1.number)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
          inner join results as results_1
          on (constructors_2.constructorid = results_1.resultid )
        inner join results as results_2
        on (constructors_2.constructorid = results_2.resultid )
      inner join qualifying as qualifying_1
      on (constructors_2.constructorid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_2.constructorref is not NULL
group by constructors_2.nationality, qualifying_1.date, results_1.driverid, results_2.date
limit 26;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.date < constructor_standings_1.date
limit 31;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 41;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.raceid), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 36;
select  
  drivers_1.code, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
limit 11;
select  
  results_1.positionorder, 
  results_1.driverid, 
  avg(
    results_1.number), 
  results_1.position, 
  results_1.number, 
  results_1.positionorder, 
  results_1.rank, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank is not NULL
group by results_1.driverid, results_1.number, results_1.position, results_1.positionorder, results_1.rank
limit 15;
select  
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 11;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 8;
select  
  results_1.laps, 
  max(
    results_1.resultid), 
  results_1.number, 
  results_1.raceid, 
  results_1.position, 
  results_1.grid, 
  avg(
    results_1.raceid), 
  results_1.rank, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.grid, results_1.laps, results_1.number, results_1.position, results_1.raceid, results_1.rank
limit 1;
select  
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 6;
select  
  results_1.position, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.positionorder, 
  results_1.statusid, 
  results_1.constructorid, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid is not NULL
limit 23;
select  
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 41;
select  
  standings_1.points, 
  min(
    standings_1.date), 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.wins, 
  max(
    standings_1.date), 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.points, standings_1.raceid, standings_1.wins
limit 6;
select  
  min(
    qualifying_1.number), 
  qualifying_1.qualifyid, 
  avg(
    qualifying_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.qualifyid
limit 10;
select  
  constructor_results_1.constructorid, 
  max(
    results_1.fastestlap), 
  constructor_standings_1.position, 
  constructor_results_1.date, 
  results_1.driverid, 
  sum(
    constructor_standings_1.constructorid), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_results_1.constructorid, 
  results_1.statusid, 
  results_1.resultid, 
  constructor_standings_2.constructorstandingsid, 
  results_1.milliseconds, 
  sum(
    results_1.milliseconds), 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join constructor_results as constructor_results_1
      on (constructor_standings_2.constructorstandingsid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_standings_2.constructorstandingsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_2.constructorstandingsid, results_1.driverid, results_1.milliseconds, results_1.resultid, results_1.statusid
limit 23;
select  
  standings_1.driverid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where constructors_1.nationality >= constructors_1.constructorref
limit 30;
select  
  qualifying_1.raceid, 
  constructors_1.constructorid, 
  qualifying_1.qualifyid, 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_2.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
        inner join constructors as constructors_1
        on (qualifying_1.qualifyid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
where qualifying_1.number is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.wins, constructors_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid
limit 4;
select  
  min(
    constructor_standings_1.points), 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.wins is not NULL
group by races_1.time
limit 24;
select  
  standings_1.driverid, 
  constructor_standings_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
          inner join constructor_standings as constructor_standings_1
          on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      inner join constructor_results as constructor_results_2
      on (constructor_standings_1.constructorstandingsid = constructor_results_2.constructorresultsid )
    on (standings_1.driverstandingsid = constructor_results_2.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 28;
select  
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 31;
select  
  drivers_1.nationality, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.code = drivers_1.surname
limit 42;
select  
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join circuits as circuits_2
        inner join drivers as drivers_2
        on (circuits_2.circuitid = drivers_2.driverid )
      on (constructor_standings_2.constructorstandingsid = circuits_2.circuitid )
    on (circuits_1.circuitid = circuits_2.circuitid )
where constructor_standings_1.raceid is not NULL
limit 23;
select  
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 12;
select  
  standings_1.position, 
  standings_1.driverid, 
  min(
    standings_2.date), 
  standings_2.raceid, 
  standings_2.wins, 
  standings_2.date, 
  avg(
    standings_1.points), 
  standings_2.date, 
  max(
    standings_2.points), 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_2.driverid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_2.driverstandingsid, 
  standings_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.points, standings_2.raceid, standings_2.wins
limit 6;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
limit 3;
select  
  standings_1.points, 
  standings_1.wins, 
  standings_1.points, 
  min(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.points, standings_1.wins
limit 39;
select  
  races_1.circuitid, 
  max(
    races_1.raceid), 
  races_1.date, 
  races_1.circuitid, 
  races_1.name, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name
limit 22;
select  
  results_1.position, 
  races_1.round, 
  races_1.year, 
  races_1.round, 
  races_1.name, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.name >= races_1.time
limit 13;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid < qualifying_1.qualifyid
limit 24;
select  
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 4;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.wins
limit 10;
select  
  results_1.laps, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.position is not NULL
limit 14;
select  
  constructor_standings_1.constructorstandingsid, 
  results_1.position, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.date >= standings_1.date
limit 17;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  count(*), 
  circuits_1.circuitid, 
  circuits_1.country, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.position > qualifying_1.driverid
group by circuits_1.circuitid, circuits_1.country, qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid
limit 1;
select  
  min(
    constructor_results_1.points), 
  max(
    races_1.date), 
  constructor_results_3.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
          inner join constructor_results as constructor_results_1
          on (races_1.raceid = constructor_results_1.constructorresultsid )
        inner join drivers as drivers_1
          inner join constructor_results as constructor_results_2
          on (drivers_1.driverid = constructor_results_2.constructorresultsid )
        on (races_1.raceid = constructor_results_2.constructorresultsid )
      inner join standings as standings_1
      on (constructor_results_2.constructorresultsid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_3
    on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
where constructor_results_2.date is not NULL
group by constructor_results_3.raceid
limit 17;
select  
  results_1.raceid, 
  results_1.constructorid, 
  avg(
    results_1.number), 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.constructorid, results_1.grid, results_1.raceid
limit 16;
select  
  sum(
    circuits_1.lng), 
  circuits_1.lat, 
  standings_1.driverid, 
  circuits_1.name, 
  standings_1.position, 
  circuits_1.name, 
  standings_1.date, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.name is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.name, standings_1.date, standings_1.driverid, standings_1.position
limit 7;
select  
  constructor_standings_1.date, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 5;
select  
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round < races_1.year
limit 10;
select  
  qualifying_1.raceid, 
  circuits_1.circuitid, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.position is not NULL
limit 42;
select  
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    on (results_1.resultid = circuits_1.circuitid )
where standings_1.raceid is not NULL
limit 12;
select  
  qualifying_1.position, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 23;
select  
  qualifying_1.number, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    on (results_1.resultid = circuits_1.circuitid )
where qualifying_1.qualifyid is not NULL
limit 4;
select  
  races_1.round, 
  count(
    races_1.date), 
  max(
    races_1.date), 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date < races_1.date
group by races_1.round, races_1.time
limit 23;
select  
  results_1.resultid, 
  circuits_1.alt, 
  standings_1.position, 
  results_1.positionorder, 
  results_2.statusid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join results as results_1
        inner join results as results_2
        on (results_1.resultid = results_2.resultid )
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.number < results_1.milliseconds
limit 37;
select  
  max(
    circuits_1.lng), 
  circuits_1.circuitref, 
  min(
    circuits_1.lng), 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.lng
limit 5;
select  
  qualifying_1.raceid, 
  count(*), 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  constructors_1.constructorref, 
  qualifying_1.number, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructors_1.name <= constructors_1.constructorref
group by constructors_1.constructorref, constructors_1.name, qualifying_1.constructorid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 21;
select  
  drivers_1.nationality, 
  drivers_1.code, 
  qualifying_2.driverid, 
  races_1.raceid, 
  qualifying_2.constructorid, 
  qualifying_2.constructorid, 
  results_1.resultid, 
  drivers_1.driverid, 
  results_1.statusid, 
  qualifying_1.qualifyid, 
  results_1.resultid, 
  drivers_1.driverid, 
  qualifying_1.number, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join results as results_1
          inner join qualifying as qualifying_2
          on (results_1.resultid = qualifying_2.qualifyid )
        inner join races as races_1
        on (qualifying_2.qualifyid = races_1.raceid )
      on (drivers_1.driverid = results_1.resultid )
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_2.number is not NULL
limit 33;
select  
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.circuitref, 
  avg(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 19;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 24;
select  
  min(
    races_1.date), 
  races_1.date, 
  races_1.raceid, 
  races_1.date, 
  races_1.time, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.time
limit 37;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 1;
select  
  qualifying_2.driverid, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join qualifying as qualifying_2
    on (circuits_1.circuitid = qualifying_2.qualifyid )
where qualifying_1.date <= qualifying_2.date
limit 41;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 17;
select  
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points, 
  drivers_1.surname, 
  drivers_1.driverref, 
  standings_1.raceid, 
  standings_1.driverid, 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where standings_1.driverid is not NULL
limit 34;
select  
  results_1.resultid, 
  results_1.driverid, 
  results_1.laps, 
  results_2.constructorid, 
  results_2.raceid, 
  results_1.positionorder, 
  results_2.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.rank is not NULL
limit 11;
select  
  results_1.position, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.grid is not NULL
limit 30;
select  
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid = drivers_1.driverid
limit 19;
select  
  races_1.raceid, 
  races_1.raceid, 
  races_1.date, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date >= races_1.date
limit 8;
select  
  min(
    drivers_1.driverid), 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.dob
limit 23;
select  
  results_1.grid, 
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.driverid, 
  results_1.rank, 
  results_1.resultid, 
  results_1.grid, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.constructorid is not NULL
limit 22;
select  
  drivers_1.driverid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  drivers_1.dob, 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.surname > drivers_1.driverref
group by constructor_results_1.date, drivers_1.dob, drivers_1.driverid
limit 42;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  count(*), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 18;
select  
  max(
    drivers_1.dob), 
  min(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.driverref is not NULL
limit 37;
select  
  min(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join standings as standings_1
        inner join constructor_standings as constructor_standings_1
        on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = standings_1.driverstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 15;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 35;
select  
  max(
    results_1.fastestlap), 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where results_1.position is not NULL
group by results_1.driverid
limit 14;
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  max(
    circuits_1.circuitid), 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, drivers_1.dob
limit 1;
select  
  results_1.number, 
  results_1.raceid, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 19;
select  
  standings_1.points, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  count(*), 
  count(*), 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date <= standings_1.date
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 12;
select  
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date = results_1.date
limit 11;
select  
  qualifying_1.driverid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 21;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 18;
select  
  races_1.name, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.points < constructor_results_1.points
group by constructor_results_1.date, races_1.name
limit 4;
select  
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  avg(
    qualifying_1.position), 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid
limit 25;
select  
  drivers_1.surname, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where drivers_1.forename >= constructors_1.name
limit 2;
select  
  races_1.name, 
  min(
    races_1.round), 
  races_1.circuitid, 
  races_1.date, 
  races_1.name, 
  max(
    races_1.raceid), 
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name
limit 22;
select  
  circuits_1.lat, 
  constructor_standings_1.raceid, 
  constructor_results_1.constructorid, 
  circuits_1.name, 
  constructor_results_1.raceid, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_standings_1.position is not NULL
limit 12;
select  
  min(
    standings_1.points), 
  max(
    results_1.date), 
  results_1.position, 
  results_1.laps, 
  results_1.grid, 
  max(
    standings_1.points), 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.driverid is not NULL
group by results_1.grid, results_1.laps, results_1.position, standings_1.date
limit 31;
select  
  races_1.time, 
  sum(
    races_1.circuitid), 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid >= races_1.raceid
group by races_1.date, races_1.time
limit 33;
select  
  qualifying_1.qualifyid, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  qualifying_1.position, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.circuitid = qualifying_1.position
limit 14;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.location, 
  sum(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.location
limit 40;
select  
  circuits_1.location, 
  circuits_2.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join circuits as circuits_2
      on (standings_1.driverstandingsid = circuits_2.circuitid )
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where circuits_1.alt is not NULL
limit 1;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  min(
    drivers_1.driverid), 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  drivers_1.surname, 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 23;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.driverstandingsid is not NULL
limit 30;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
limit 10;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 31;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructor_standings_1.points <= constructor_standings_1.points
limit 1;
select  
  constructor_results_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.raceid), 
  drivers_1.driverid, 
  constructor_standings_1.date, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_results_1.date, constructor_results_1.raceid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, drivers_1.driverid
limit 13;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 5;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  races_1.year, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 11;
select  
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 22;
select  
  standings_1.points, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
      inner join constructors as constructors_1
      on (standings_1.driverstandingsid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 8;
select  
  drivers_1.code, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 18;
select  
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  results_1.number, 
  results_1.date, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.date, 
  qualifying_1.date, 
  avg(
    results_1.number), 
  results_1.grid, 
  max(
    qualifying_1.date), 
  results_1.resultid, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_1.position > results_1.constructorid
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, results_1.date, results_1.grid, results_1.milliseconds, results_1.number, results_1.resultid
limit 3;
select  
  count(
    constructors_1.constructorref), 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref
limit 15;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 28;
select  
  results_1.points, 
  results_1.date, 
  results_1.statusid, 
  min(
    results_1.milliseconds)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.position is not NULL
group by results_1.date, results_1.points, results_1.statusid
limit 14;
select  
  constructors_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 21;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.lat >= circuits_1.alt
limit 15;
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.date, 
  avg(
    qualifying_1.number), 
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.position, 
  max(
    qualifying_1.raceid), 
  min(
    qualifying_1.date), 
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 42;
select  
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 6;
select  
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name <= races_1.time
limit 13;
select  
  qualifying_1.position, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_2.constructorid, 
  qualifying_1.position, 
  constructor_results_2.constructorid, 
  qualifying_1.driverid, 
  max(
    constructor_results_2.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
      inner join qualifying as qualifying_1
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where qualifying_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_2.constructorid, qualifying_1.driverid, qualifying_1.position
limit 4;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  count(*), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 39;
select  
  standings_1.raceid, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
          inner join standings as standings_1
          on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join constructor_results as constructor_results_1
    on (circuits_2.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 34;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 16;
select  
  results_1.grid, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date <= results_1.date
limit 3;
select  
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 14;
select  
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid
limit 18;
select  
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
limit 22;
select  
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points > standings_1.points
limit 41;
select  
  count(
    qualifying_1.driverid), 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.date, 
  count(*), 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  max(
    qualifying_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position
limit 32;
select  
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.year > constructor_results_1.constructorid
limit 28;
select  
  races_1.circuitid, 
  max(
    races_1.year), 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid
limit 7;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  sum(
    constructor_results_1.constructorid), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 19;
select  
  results_1.points, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.position is not NULL
limit 9;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
limit 12;
select  
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  sum(
    circuits_1.circuitid), 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 28;
select  
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  count(*), 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code > drivers_1.forename
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 39;
select  
  min(
    standings_1.date), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 15;
select  
  constructors_1.constructorid, 
  max(
    results_1.driverid), 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.date is not NULL
group by constructors_1.constructorid, results_1.rank
limit 27;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 24;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  count(*), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  count(*), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 17;
select  
  max(
    results_1.date), 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
group by standings_1.raceid
limit 8;
select  
  standings_1.wins, 
  races_1.round, 
  standings_1.position, 
  races_1.circuitid, 
  races_1.name, 
  avg(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.points <= standings_1.points
group by races_1.circuitid, races_1.name, races_1.round, standings_1.position, standings_1.wins
limit 18;
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_1.name > races_1.time
limit 42;
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.qualifyid), 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 34;
select  
  races_1.name, 
  min(
    races_1.date), 
  races_1.time, 
  max(
    races_1.year), 
  races_1.name, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.name, races_1.time
limit 20;
select  
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid), 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.nationality
limit 23;
select  
  count(*), 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  max(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 35;
select  
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 8;
select  
  standings_1.date, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  min(
    standings_1.date), 
  standings_1.wins, 
  standings_1.points, 
  standings_1.position, 
  min(
    standings_1.points), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 2;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date), 
  avg(
    constructor_standings_1.constructorstandingsid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 6;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  count(*), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.points), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 9;
select  
  constructor_results_1.points, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join standings as standings_1
      inner join races as races_1
        inner join circuits as circuits_1
          inner join constructor_results as constructor_results_1
          on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
        on (races_1.raceid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.constructorid is not NULL
limit 8;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 37;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.lat is not NULL
limit 15;
select  
  min(
    circuits_1.alt), 
  count(*), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where races_1.circuitid is not NULL
group by constructors_1.nationality, races_1.time
limit 13;
select  
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
limit 40;
select  
  circuits_1.alt, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  circuits_1.lng, 
  constructor_results_1.points, 
  results_1.number, 
  results_1.points, 
  results_1.grid, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    inner join results as results_1
      inner join circuits as circuits_1
      on (results_1.resultid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = results_1.resultid )
where constructor_results_1.date is not NULL
limit 17;
select  
  min(
    qualifying_1.number)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.constructorid is not NULL
limit 34;
select  
  qualifying_1.number, 
  qualifying_1.position, 
  count(*), 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 28;
select  
  results_1.constructorid, 
  results_1.position, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
limit 7;
select  
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.lat, 
  min(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  sum(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat
limit 14;
select  
  min(
    results_1.number), 
  min(
    constructor_results_1.date), 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join results as results_1
      on (standings_1.driverstandingsid = results_1.resultid )
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
group by standings_1.date
limit 9;
select  
  constructor_results_1.date, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 40;
select  
  races_1.circuitid, 
  standings_1.position, 
  min(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.driverid is not NULL
group by races_1.circuitid, standings_1.position
limit 40;
select  
  circuits_1.lat, 
  drivers_1.code, 
  qualifying_1.position, 
  constructors_1.name, 
  constructors_1.nationality, 
  results_1.milliseconds, 
  circuits_1.circuitid, 
  qualifying_1.position, 
  results_1.constructorid, 
  results_1.number, 
  circuits_1.lng, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
        inner join constructors as constructors_1
          inner join drivers as drivers_1
          on (constructors_1.constructorid = drivers_1.driverid )
        on (circuits_1.circuitid = drivers_1.driverid )
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where drivers_1.driverref is not NULL
limit 39;
select  
  max(
    qualifying_1.date), 
  count(*), 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.driverid is not NULL
limit 42;
select  
  circuits_1.lng, 
  constructors_1.constructorref, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.lng, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  circuits_1.circuitref, 
  avg(
    circuits_1.alt), 
  circuits_1.circuitref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  circuits_1.circuitid, 
  constructors_1.name, 
  sum(
    circuits_1.lat), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  max(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where constructors_1.name >= constructors_1.nationality
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.location, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 11;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 3;
select  
  qualifying_2.constructorid, 
  drivers_1.driverref, 
  drivers_1.code, 
  qualifying_2.position, 
  max(
    constructor_results_1.points), 
  qualifying_2.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_2
      inner join drivers as drivers_1
      on (qualifying_2.qualifyid = drivers_1.driverid )
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.date < drivers_1.dob
group by drivers_1.code, drivers_1.driverref, qualifying_2.constructorid, qualifying_2.driverid, qualifying_2.position
limit 31;
select  
  results_1.rank, 
  results_1.fastestlap, 
  results_1.date, 
  results_1.milliseconds, 
  results_1.points, 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.points >= results_1.milliseconds
limit 17;
select  
  sum(
    results_1.driverid), 
  drivers_2.nationality, 
  avg(
    results_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join drivers as drivers_2
          inner join qualifying as qualifying_1
          on (drivers_2.driverid = qualifying_1.qualifyid )
        inner join constructor_standings as constructor_standings_1
        on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
      on (drivers_1.driverid = drivers_2.driverid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.statusid >= qualifying_1.number
group by drivers_2.nationality
limit 22;
select  
  avg(
    qualifying_1.driverid), 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  count(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 27;
select  
  races_1.time, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  races_1.circuitid, 
  races_1.date, 
  constructors_1.nationality, 
  max(
    races_1.date), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.time is not NULL
group by constructors_1.constructorid, constructors_1.nationality, races_1.circuitid, races_1.date, races_1.time, races_1.year
limit 29;
select  
  min(
    circuits_1.lat), 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  min(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.lat, circuits_1.name
limit 22;
select  
  qualifying_1.raceid, 
  qualifying_1.number, 
  min(
    qualifying_1.qualifyid), 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.number), 
  qualifying_1.position, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 27;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 9;
select  
  count(*), 
  circuits_1.country, 
  max(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country
limit 25;
select  
  circuits_1.lat, 
  count(
    circuits_1.country), 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  standings_2.driverid, 
  drivers_1.driverid, 
  min(
    standings_2.date), 
  circuits_1.lat, 
  standings_1.driverid, 
  standings_1.points, 
  circuits_1.country, 
  standings_2.driverid, 
  standings_2.driverid, 
  standings_1.points, 
  standings_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join drivers as drivers_1
      on (standings_2.driverstandingsid = drivers_1.driverid )
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.country > circuits_1.circuitref
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, drivers_1.driverid, standings_1.driverid, standings_1.points, standings_2.driverid, standings_2.position
limit 40;
select  
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.date, constructor_results_1.raceid
limit 24;
select  
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid
limit 28;
select  
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 19;
select  
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position < qualifying_1.constructorid
limit 8;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 5;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality >= constructors_1.constructorref
limit 37;
select  
  circuits_1.alt, 
  circuits_1.circuitid, 
  max(
    circuits_1.lng), 
  avg(
    circuits_1.lng), 
  avg(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.circuitid, 
  count(*), 
  circuits_1.lat, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat <= circuits_1.lng
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat
limit 38;
select  
  drivers_1.surname, 
  drivers_1.code, 
  drivers_2.nationality, 
  max(
    drivers_2.dob), 
  drivers_2.surname, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_2.code, 
  drivers_1.surname, 
  drivers_2.code, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.dob is not NULL
group by drivers_1.code, drivers_1.nationality, drivers_1.surname, drivers_2.code, drivers_2.nationality, drivers_2.surname
limit 25;
select  
  circuits_1.location, 
  constructor_results_1.date, 
  races_1.circuitid, 
  standings_1.points, 
  standings_1.position, 
  constructor_results_1.date, 
  avg(
    circuits_2.lat), 
  circuits_2.circuitref, 
  circuits_2.lat, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
        inner join constructor_results as constructor_results_1
          inner join races as races_1
          on (constructor_results_1.constructorresultsid = races_1.raceid )
        on (circuits_1.circuitid = races_1.raceid )
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (constructor_results_1.constructorresultsid = standings_2.driverstandingsid )
where circuits_1.name >= circuits_2.location
group by circuits_1.location, circuits_2.circuitref, circuits_2.lat, constructor_results_1.date, races_1.circuitid, standings_1.points, standings_1.position
limit 7;
select  
  min(
    constructor_standings_1.constructorstandingsid), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position, 
  avg(
    circuits_1.circuitid), 
  circuits_1.lat, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  avg(
    constructor_results_1.points), 
  min(
    constructor_results_1.date), 
  constructor_standings_1.points, 
  constructor_results_1.date, 
  max(
    constructor_results_1.date), 
  avg(
    circuits_1.alt), 
  constructor_standings_1.date, 
  max(
    constructor_results_1.points), 
  constructor_standings_1.constructorstandingsid, 
  circuits_1.lat, 
  constructor_standings_1.points, 
  constructor_results_1.points, 
  circuits_1.lng, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where circuits_1.lng <= circuits_1.lat
group by circuits_1.lat, circuits_1.lng, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 19;
select  
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.surname is not NULL
limit 19;
select  
  avg(
    constructor_standings_1.points), 
  races_1.raceid, 
  races_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.round is not NULL
group by constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins, races_1.raceid
limit 33;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_2.nationality, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.nationality is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_2.nationality
limit 25;
select  
  races_1.name, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 37;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 16;
select  
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng < circuits_1.alt
limit 7;
select  
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where races_1.name > races_1.time
limit 2;
select  
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.surname
limit 36;
select  
  qualifying_2.qualifyid, 
  max(
    qualifying_1.date), 
  constructor_standings_1.constructorid, 
  constructors_1.name, 
  qualifying_2.driverid, 
  sum(
    qualifying_2.raceid), 
  qualifying_1.date, 
  qualifying_1.raceid, 
  avg(
    circuits_1.lng), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  circuits_1.circuitid, 
  sum(
    circuits_1.alt)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
          inner join qualifying as qualifying_1
          on (circuits_1.circuitid = qualifying_1.qualifyid )
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join constructors as constructors_1
    on (qualifying_2.qualifyid = constructors_1.constructorid )
where qualifying_1.position is not NULL
group by circuits_1.circuitid, constructor_standings_1.constructorid, constructor_standings_1.points, constructors_1.name, qualifying_1.date, qualifying_1.raceid, qualifying_2.driverid, qualifying_2.qualifyid
limit 17;
select  
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date is not NULL
limit 1;
select  
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.number is not NULL
limit 29;
select  
  constructors_1.constructorid, 
  constructors_2.nationality, 
  constructors_2.nationality, 
  max(
    qualifying_1.date), 
  max(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
        inner join constructor_results as constructor_results_1
        on (constructors_2.constructorid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_1
      on (constructors_2.constructorid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where qualifying_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_2.nationality
limit 11;
select  
  results_1.statusid, 
  results_1.positionorder, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.driverid is not NULL
limit 35;
select  
  max(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.code = circuits_1.circuitref
limit 10;
select  
  drivers_1.forename, 
  constructor_standings_1.points, 
  circuits_1.lat, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
          inner join circuits as circuits_2
          on (qualifying_1.qualifyid = circuits_2.circuitid )
        inner join drivers as drivers_1
        on (circuits_2.circuitid = drivers_1.driverid )
      on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.date is not NULL
limit 5;
select  
  constructor_standings_1.points, 
  circuits_1.lat, 
  max(
    circuits_1.lat), 
  results_1.resultid, 
  constructors_1.name, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.statusid >= constructor_standings_1.position
group by circuits_1.lat, constructor_standings_1.points, constructors_1.name, results_1.rank, results_1.resultid
limit 4;
select  
  max(
    races_1.date), 
  races_1.raceid, 
  races_1.raceid, 
  races_1.year, 
  races_1.raceid, 
  races_1.time, 
  races_1.date, 
  races_1.round, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid < races_1.circuitid
group by races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 29;
select  
  constructors_2.constructorref, 
  races_1.year, 
  constructor_standings_1.wins, 
  standings_2.driverstandingsid, 
  constructors_2.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join races as races_1
        on (constructor_standings_1.constructorstandingsid = races_1.raceid )
      on (constructors_1.constructorid = races_1.raceid )
    inner join standings as standings_1
      inner join standings as standings_2
        inner join constructors as constructors_2
          inner join circuits as circuits_1
          on (constructors_2.constructorid = circuits_1.circuitid )
        on (standings_2.driverstandingsid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.lat >= circuits_1.alt
limit 22;
select  
  results_1.date, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date <= results_1.date
limit 26;
select  
  count(
    constructor_standings_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 16;
select  
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
limit 21;
select  
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points < constructor_standings_1.points
limit 25;
select  
  count(*), 
  count(*), 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  avg(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 35;
select  
  constructors_2.nationality, 
  races_2.raceid, 
  constructors_2.constructorref, 
  constructors_2.nationality, 
  min(
    drivers_1.dob), 
  constructor_standings_1.wins, 
  constructors_2.constructorid, 
  constructors_2.constructorref, 
  sum(
    races_2.year)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
          inner join constructors as constructors_2
          on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
        inner join races as races_2
          inner join drivers as drivers_1
          on (races_2.raceid = drivers_1.driverid )
        on (constructors_2.constructorid = races_2.raceid )
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = drivers_1.driverid )
where races_2.name > constructors_1.constructorref
group by constructor_standings_1.wins, constructors_2.constructorid, constructors_2.constructorref, constructors_2.nationality, races_2.raceid
limit 17;
select  
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.date < constructor_results_1.date
limit 18;
select  
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.raceid is not NULL
limit 31;
select  
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
limit 8;
select  
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.position is not NULL
limit 7;
select  
  drivers_1.driverid, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.nationality <= drivers_1.surname
limit 37;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid
limit 34;
select  
  drivers_1.driverref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.lng, 
  sum(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.alt is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name, drivers_1.driverref
limit 18;
select  
  standings_2.raceid, 
  standings_2.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.date is not NULL
limit 4;
select  
  max(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (results_1.resultid = drivers_1.driverid )
where results_1.points > results_1.milliseconds
limit 34;
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 25;
select  
  circuits_1.circuitid, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 13;
select  
  qualifying_1.raceid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 5;
select  
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 17;
select  
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.raceid
limit 38;
select  
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
limit 20;
select  
  count(
    constructor_standings_1.constructorid), 
  constructor_standings_1.wins, 
  constructor_standings_2.wins, 
  max(
    constructor_standings_2.raceid), 
  constructor_standings_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.date is not NULL
group by constructor_standings_1.wins, constructor_standings_2.position, constructor_standings_2.wins
limit 26;
select  
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.points = constructor_results_1.points
limit 5;
select  
  circuits_1.lat, 
  max(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.lat, circuits_1.lng
limit 6;
select  
  constructor_results_1.constructorid, 
  count(
    constructor_results_1.constructorid), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 23;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where drivers_1.driverid is not NULL
limit 24;
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.date, 
  standings_2.driverstandingsid, 
  sum(
    standings_2.driverstandingsid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.wins is not NULL
group by standings_1.date, standings_1.driverid, standings_1.position, standings_1.raceid, standings_2.driverstandingsid
limit 34;
select  
  max(
    qualifying_1.date), 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.position
limit 24;
select  
  results_1.rank, 
  count(*), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.driverid > results_1.laps
group by constructors_1.constructorref, constructors_1.nationality, results_1.date, results_1.rank
limit 13;
select  
  qualifying_1.date, 
  circuits_1.name, 
  races_1.name, 
  min(
    races_1.date), 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_1.round is not NULL
group by circuits_1.location, circuits_1.name, qualifying_1.date, races_1.name
limit 22;
select  
  results_1.driverid, 
  results_1.resultid, 
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap is not NULL
limit 9;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 8;
select  
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 36;
select  
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 33;
select  
  races_1.time, 
  races_1.round, 
  races_1.circuitid, 
  races_1.date, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name is not NULL
limit 34;
select  
  qualifying_3.driverid, 
  qualifying_2.raceid, 
  qualifying_1.position, 
  constructors_1.nationality, 
  min(
    qualifying_4.date), 
  constructors_1.name, 
  qualifying_3.qualifyid, 
  qualifying_2.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
        inner join constructors as constructors_1
        on (qualifying_2.qualifyid = constructors_1.constructorid )
      inner join qualifying as qualifying_3
        inner join qualifying as qualifying_4
        on (qualifying_3.qualifyid = qualifying_4.qualifyid )
      on (constructors_1.constructorid = qualifying_3.qualifyid )
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_4.driverid is not NULL
group by constructors_1.name, constructors_1.nationality, qualifying_1.position, qualifying_2.constructorid, qualifying_2.raceid, qualifying_3.driverid, qualifying_3.qualifyid
limit 35;
select  
  constructor_standings_1.wins, 
  max(
    drivers_1.driverid), 
  drivers_1.forename, 
  constructors_1.name, 
  avg(
    results_1.laps), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructor_standings_1.raceid, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join results as results_1
        inner join constructors as constructors_1
          inner join drivers as drivers_1
          on (constructors_1.constructorid = drivers_1.driverid )
        on (results_1.resultid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where results_1.number = results_1.position
group by constructor_standings_1.raceid, constructor_standings_1.wins, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, drivers_1.forename
limit 10;
select  
  races_1.round, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.time is not NULL
limit 30;
select  
  results_1.resultid, 
  count(
    results_1.statusid), 
  results_1.milliseconds, 
  results_1.positionorder, 
  results_1.points, 
  results_1.constructorid, 
  results_1.raceid, 
  max(
    results_1.date), 
  results_1.positionorder, 
  results_1.rank, 
  results_1.milliseconds, 
  max(
    results_1.date), 
  count(
    results_1.grid), 
  results_1.constructorid, 
  results_1.date, 
  results_1.fastestlap, 
  results_1.positionorder, 
  sum(
    results_1.positionorder), 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.fastestlap, 
  results_1.position, 
  results_1.driverid, 
  results_1.date, 
  results_1.laps, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.constructorid, 
  count(*), 
  count(*), 
  results_1.driverid, 
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.grid, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid <= results_1.raceid
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.milliseconds, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.rank, results_1.resultid, results_1.statusid
limit 7;
select  
  max(
    circuits_1.lng), 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.name, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitref, circuits_1.location, circuits_1.name
limit 10;
select  
  constructors_1.constructorref, 
  drivers_1.code, 
  drivers_1.forename, 
  qualifying_1.constructorid, 
  constructors_1.name, 
  qualifying_1.driverid, 
  drivers_1.driverid, 
  constructors_1.name, 
  qualifying_1.constructorid, 
  constructors_1.constructorid, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.forename, 
  qualifying_1.date, 
  drivers_1.driverref, 
  qualifying_1.driverid, 
  drivers_1.driverref, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.raceid
limit 30;
select  
  max(
    constructor_results_1.points), 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.year is not NULL
group by constructor_results_1.date
limit 11;
select  
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points <= constructor_standings_1.points
limit 16;
select  
  circuits_1.lng, 
  circuits_1.location, 
  avg(
    circuits_1.circuitid), 
  count(
    circuits_1.country), 
  sum(
    circuits_1.lng), 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.country, circuits_1.lng, circuits_1.location
limit 12;
select  
  constructor_standings_1.position, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
limit 12;
select  
  constructor_standings_1.date, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.date, constructor_standings_1.points
limit 1;
select  
  constructor_results_1.constructorresultsid, 
  results_1.laps, 
  min(
    constructor_results_1.points), 
  results_1.positionorder, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  results_1.statusid, 
  constructor_results_1.raceid, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, results_1.laps, results_1.number, results_1.positionorder, results_1.statusid
limit 10;
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng >= circuits_1.alt
limit 14;
select  
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.constructorid is not NULL
group by qualifying_1.driverid, results_1.number
limit 11;
select  
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.date is not NULL
limit 9;
select  
  count(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  sum(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.wins
limit 20;
select  
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructors_1.nationality is not NULL
limit 30;
select  
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid
limit 15;
select  
  standings_1.driverid, 
  max(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid
limit 3;
select  
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 38;
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  standings_1.date, 
  constructors_1.nationality, 
  standings_1.driverid, 
  constructors_1.constructorref, 
  min(
    standings_1.driverstandingsid), 
  constructors_1.constructorid, 
  constructors_1.name, 
  min(
    standings_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position
limit 10;
select  
  qualifying_1.constructorid, 
  results_1.raceid, 
  qualifying_1.driverid, 
  results_1.laps, 
  results_1.date, 
  results_1.points, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.grid is not NULL
limit 26;
select  
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
limit 36;
select  
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join results as results_1
          inner join results as results_2
          on (results_1.resultid = results_2.resultid )
        inner join circuits as circuits_1
        on (results_2.resultid = circuits_1.circuitid )
      on (standings_1.driverstandingsid = results_1.resultid )
    inner join circuits as circuits_2
        inner join races as races_1
        on (circuits_2.circuitid = races_1.raceid )
      inner join races as races_2
          inner join qualifying as qualifying_1
          on (races_2.raceid = qualifying_1.qualifyid )
        inner join results as results_3
        on (races_2.raceid = results_3.resultid )
      on (circuits_2.circuitid = qualifying_1.qualifyid )
    on (standings_1.driverstandingsid = races_2.raceid )
where standings_1.raceid is not NULL
limit 39;
select  
  results_1.milliseconds, 
  results_1.laps, 
  results_1.position, 
  count(
    results_1.position), 
  results_1.driverid, 
  results_1.milliseconds, 
  sum(
    results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
group by results_1.driverid, results_1.laps, results_1.milliseconds, results_1.position
limit 16;
select  
  results_1.raceid, 
  results_1.driverid, 
  results_1.positionorder, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.constructorid is not NULL
limit 22;
select  
  standings_1.driverid, 
  standings_1.driverid, 
  sum(
    standings_1.points), 
  min(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid
limit 1;
select  
  constructors_1.nationality, 
  constructor_standings_1.raceid, 
  races_1.round, 
  constructor_standings_1.position, 
  constructors_1.nationality, 
  constructor_standings_1.constructorid, 
  races_1.time, 
  count(*), 
  races_1.round, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid, constructors_1.nationality, races_1.round, races_1.time
limit 42;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 26;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid
limit 8;
select  
  avg(
    results_1.laps), 
  results_1.constructorid, 
  count(
    results_1.raceid), 
  results_1.date, 
  results_1.fastestlap, 
  max(
    results_1.date), 
  max(
    results_1.date), 
  results_1.constructorid, 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number is not NULL
group by results_1.constructorid, results_1.date, results_1.fastestlap, results_1.resultid
limit 19;
select  
  min(
    results_1.date), 
  max(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date = results_1.date
limit 41;
select distinct 
  results_1.laps, 
  results_1.raceid, 
  results_1.milliseconds, 
  results_1.milliseconds, 
  results_1.grid, 
  results_1.position, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid > results_1.statusid
limit 11;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
limit 23;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 28;
select  
  circuits_1.location, 
  sum(
    circuits_1.alt)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
        inner join circuits as circuits_1
        on (qualifying_1.qualifyid = circuits_1.circuitid )
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (circuits_1.circuitid = constructor_results_2.constructorresultsid )
where constructor_results_2.points < circuits_1.lat
group by circuits_1.location
limit 13;
select  
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 32;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 17;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 15;
select  
  standings_1.wins, 
  standings_1.wins, 
  standings_1.raceid, 
  max(
    standings_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.raceid, standings_1.wins
limit 39;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 29;
select  
  circuits_1.location, 
  constructor_standings_1.constructorid, 
  min(
    qualifying_2.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
        inner join constructor_standings as constructor_standings_1
        on (qualifying_2.qualifyid = constructor_standings_1.constructorstandingsid )
      inner join qualifying as qualifying_3
        inner join circuits as circuits_1
        on (qualifying_3.qualifyid = circuits_1.circuitid )
      on (qualifying_2.qualifyid = qualifying_3.qualifyid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_3.constructorid is not NULL
group by circuits_1.location, constructor_standings_1.constructorid
limit 24;
select  
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  max(
    circuits_1.lat), 
  sum(
    circuits_1.lat), 
  circuits_1.alt, 
  min(
    circuits_1.lng)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lng, circuits_1.name
limit 3;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  races_1.year, 
  max(
    races_1.date), 
  avg(
    circuits_1.alt), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (circuits_1.circuitid = constructors_2.constructorid )
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, races_1.year
limit 38;
select  
  results_1.resultid, 
  results_1.driverid, 
  results_1.fastestlap, 
  sum(
    results_1.rank), 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.date, results_1.driverid, results_1.fastestlap, results_1.resultid
limit 22;
select  
  circuits_1.lat, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.lng >= circuits_1.lat
limit 34;
select  
  results_1.positionorder, 
  results_1.laps, 
  results_1.rank, 
  constructor_results_1.date, 
  results_1.points, 
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join drivers as drivers_1
      on (constructor_results_1.constructorresultsid = drivers_1.driverid )
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where constructor_results_1.date is not NULL
limit 5;
select  
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.lat, 
  sum(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  min(
    circuits_1.alt), 
  avg(
    circuits_1.circuitid), 
  sum(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 27;
select  
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid
limit 5;
select  
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 36;
select  
  results_1.fastestlap, 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.resultid is not NULL
limit 7;
select  
  circuits_3.location, 
  circuits_2.name, 
  circuits_2.lng, 
  circuits_2.lat, 
  constructors_1.constructorid, 
  circuits_1.lng, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  circuits_3.country, 
  circuits_3.alt, 
  circuits_3.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
          inner join circuits as circuits_2
          on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join circuits as circuits_3
    on (constructors_1.constructorid = circuits_3.circuitid )
where circuits_2.circuitid is not NULL
limit 12;
select  
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 31;
select  
  qualifying_1.driverid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 16;
select  
  circuits_2.name, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  constructors_1.constructorid, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  circuits_2.lat, 
  max(
    circuits_2.lng), 
  circuits_2.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join circuits as circuits_2
    on (constructors_1.constructorid = circuits_2.circuitid )
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lng, circuits_1.name, circuits_2.circuitid, circuits_2.lat, circuits_2.name, constructors_1.constructorid
limit 27;
select  
  circuits_1.alt, 
  races_1.date, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.name, 
  sum(
    races_1.year), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.lng, circuits_1.name, races_1.date, races_1.year
limit 22;
select  
  max(
    qualifying_1.date), 
  count(
    qualifying_1.raceid), 
  count(*), 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.raceid
limit 22;
select  
  races_1.circuitid, 
  constructor_standings_1.constructorstandingsid, 
  races_1.name, 
  races_1.circuitid, 
  races_1.raceid, 
  constructor_standings_1.position, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.time > races_1.name
limit 1;
select  
  standings_1.driverstandingsid, 
  constructor_results_1.date, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.date is not NULL
limit 24;
select  
  max(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 7;
select  
  circuits_1.circuitref, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid < circuits_1.circuitid
limit 31;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 2;
select  
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.date), 
  count(
    constructor_standings_1.wins)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid
limit 1;
select  
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 38;
select  
  qualifying_1.driverid, 
  qualifying_1.position, 
  count(
    qualifying_1.qualifyid), 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 18;
select  
  standings_1.driverid, 
  standings_1.points, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
limit 41;
select  
  races_1.round, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
limit 33;
select  
  count(*), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.year >= constructor_standings_1.wins
group by constructor_standings_1.constructorid, constructor_standings_1.date
limit 14;
select  
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join standings as standings_1
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (circuits_1.circuitid = races_1.raceid )
where standings_1.points is not NULL
limit 10;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  avg(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 21;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 12;
select  
  standings_1.position, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  avg(
    standings_1.raceid), 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 6;
select  
  constructor_results_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 12;
select  
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  constructor_results_1.date, 
  qualifying_1.date, 
  max(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
group by constructor_results_1.date, qualifying_1.constructorid, qualifying_1.date
limit 7;
select  
  avg(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 1;
select  
  min(
    circuits_1.alt)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
          inner join circuits as circuits_2
          on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
        inner join drivers as drivers_1
        on (circuits_2.circuitid = drivers_1.driverid )
      inner join races as races_1
      on (circuits_2.circuitid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.code < circuits_2.country
limit 8;
select  
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.circuitid is not NULL
group by constructor_standings_1.points, constructor_standings_1.wins, races_1.date
limit 30;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_2
    on (constructor_standings_1.constructorstandingsid = drivers_2.driverid )
where drivers_1.code is not NULL
limit 3;
select  
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 40;
select  
  drivers_1.dob, 
  standings_1.wins, 
  standings_1.raceid, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.raceid > standings_1.wins
limit 22;
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.date, 
  count(*), 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  count(*), 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  count(*), 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  count(*), 
  sum(
    qualifying_1.qualifyid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 33;
select  
  count(*), 
  races_1.time, 
  races_1.time, 
  races_1.round, 
  races_1.name, 
  drivers_1.nationality, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    on (races_1.raceid = circuits_1.circuitid )
where races_1.raceid <= races_1.year
group by drivers_1.dob, drivers_1.nationality, races_1.name, races_1.round, races_1.time
limit 36;
select  
  qualifying_2.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  standings_1.raceid, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join standings as standings_1
    on (qualifying_2.qualifyid = standings_1.driverstandingsid )
where qualifying_1.driverid is not NULL
limit 21;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 40;
select  
  constructor_standings_3.constructorstandingsid, 
  results_1.positionorder, 
  min(
    results_1.driverid), 
  standings_1.position, 
  constructor_standings_2.position, 
  constructor_standings_2.constructorid, 
  results_1.positionorder, 
  max(
    constructor_standings_2.points), 
  constructor_standings_2.points, 
  constructor_standings_1.position, 
  constructor_standings_3.raceid, 
  constructor_standings_2.constructorid, 
  constructor_standings_3.raceid, 
  constructor_standings_2.wins, 
  constructor_standings_3.points, 
  min(
    standings_1.position), 
  standings_1.driverid, 
  min(
    standings_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join constructor_standings as constructor_standings_2
      inner join constructor_standings as constructor_standings_3
      on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.position < constructor_standings_2.raceid
group by constructor_standings_1.position, constructor_standings_2.constructorid, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.wins, constructor_standings_3.constructorstandingsid, constructor_standings_3.points, constructor_standings_3.raceid, results_1.positionorder, standings_1.driverid, standings_1.position
limit 26;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.date, 
  circuits_2.circuitref, 
  standings_1.position, 
  standings_1.wins, 
  circuits_2.location, 
  circuits_2.alt, 
  constructor_results_1.constructorid, 
  circuits_1.circuitid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join circuits as circuits_2
      on (circuits_1.circuitid = circuits_2.circuitid )
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join qualifying as qualifying_1
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_2.circuitid >= standings_1.raceid
limit 37;
select  
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  count(*), 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 9;
select  
  qualifying_1.raceid, 
  constructor_results_1.points, 
  qualifying_1.qualifyid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.raceid, 
  max(
    constructor_results_1.date), 
  max(
    constructor_results_1.points), 
  constructor_results_1.points, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 10;
select  
  races_1.time, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
limit 18;
select  
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.country, 
  count(*), 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 31;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  count(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 29;
select  
  races_1.raceid, 
  races_1.date, 
  races_1.date, 
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.date, 
  races_1.round, 
  races_1.date, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.date, 
  races_1.time, 
  max(
    races_1.date), 
  races_1.circuitid, 
  max(
    races_1.date), 
  races_1.circuitid, 
  races_1.name, 
  max(
    races_1.date), 
  races_1.name, 
  races_1.round, 
  count(*), 
  races_1.name, 
  races_1.raceid, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
select  
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
      inner join constructor_standings as constructor_standings_1
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where results_1.milliseconds is not NULL
limit 25;
select  
  circuits_1.name, 
  min(
    standings_1.wins), 
  min(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.date > drivers_1.dob
group by circuits_1.name
limit 11;
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 19;
select  
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.date, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.date, races_1.year
limit 35;
select  
  circuits_1.circuitref, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.circuitref is not NULL
limit 26;
select  
  standings_1.points, 
  qualifying_1.date, 
  standings_1.driverid, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where constructor_standings_1.wins is not NULL
limit 28;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 39;
select  
  standings_1.driverid, 
  standings_1.points, 
  max(
    standings_1.date), 
  max(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.driverid, standings_1.points
limit 16;
select  
  sum(
    results_1.driverid), 
  results_1.milliseconds, 
  results_1.points, 
  results_1.driverid, 
  results_1.fastestlap, 
  results_1.driverid, 
  results_1.position, 
  min(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.milliseconds, results_1.points, results_1.position
limit 6;
select  
  results_1.milliseconds, 
  results_1.driverid, 
  results_1.date, 
  results_1.positionorder, 
  avg(
    results_1.milliseconds), 
  results_1.driverid, 
  results_1.position, 
  results_1.laps, 
  results_1.resultid, 
  results_1.laps, 
  max(
    results_1.date), 
  results_1.raceid, 
  results_1.position, 
  avg(
    results_1.positionorder), 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.date, results_1.driverid, results_1.grid, results_1.laps, results_1.milliseconds, results_1.position, results_1.positionorder, results_1.raceid, results_1.resultid
limit 6;
select  
  results_1.position, 
  constructors_1.constructorid, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where races_1.round is not NULL
limit 4;
select  
  results_1.raceid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 23;
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  min(
    drivers_1.driverid), 
  count(*), 
  sum(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.forename, 
  max(
    drivers_1.dob), 
  avg(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob = drivers_1.dob
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 13;
select  
  results_1.raceid, 
  avg(
    results_1.fastestlap), 
  results_1.laps, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.constructorid = results_1.raceid
group by results_1.fastestlap, results_1.laps, results_1.raceid
limit 42;
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.date, constructor_results_1.points
limit 2;
select  
  standings_1.raceid, 
  count(
    standings_1.raceid), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.date, 
  min(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid
limit 10;
select  
  drivers_1.forename, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
limit 29;
select  
  constructor_standings_1.date, 
  standings_1.date, 
  standings_1.date, 
  standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.date < standings_1.date
limit 21;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  count(
    constructors_1.nationality), 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  count(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  max(
    constructors_1.constructorid), 
  max(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name > constructors_1.nationality
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 32;
select  
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  count(
    circuits_1.lng)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lng
limit 40;
select  
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 39;
select  
  qualifying_1.driverid, 
  circuits_1.lat, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
        inner join circuits as circuits_1
        on (qualifying_2.qualifyid = circuits_1.circuitid )
      inner join qualifying as qualifying_3
      on (qualifying_2.qualifyid = qualifying_3.qualifyid )
    on (qualifying_1.qualifyid = qualifying_3.qualifyid )
where qualifying_1.date is not NULL
limit 22;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  count(*), 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.position, qualifying_1.raceid
limit 27;
select  
  races_1.name, 
  constructor_standings_1.date, 
  constructors_1.constructorid, 
  constructor_standings_1.wins, 
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  count(
    drivers_1.surname), 
  races_2.round, 
  drivers_1.nationality, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
          inner join races as races_2
          on (races_1.raceid = races_2.raceid )
        inner join drivers as drivers_1
        on (races_2.raceid = drivers_1.driverid )
      inner join constructors as constructors_1
        inner join constructor_standings as constructor_standings_1
        on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = constructors_1.constructorid )
    inner join drivers as drivers_2
      inner join constructor_results as constructor_results_1
      on (drivers_2.driverid = constructor_results_1.constructorresultsid )
    on (races_2.raceid = constructor_results_1.constructorresultsid )
where races_2.round is not NULL
group by constructor_standings_1.date, constructor_standings_1.wins, constructors_1.constructorid, drivers_1.nationality, races_1.date, races_1.name, races_2.round
limit 25;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 8;
select  
  races_1.raceid, 
  count(
    races_1.year), 
  races_1.round, 
  races_1.date, 
  races_1.circuitid, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round
limit 37;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.number > results_1.statusid
limit 30;
select  
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 3;
select  
  drivers_1.dob, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid < drivers_1.driverid
limit 27;
select  
  results_1.constructorid, 
  results_1.number, 
  results_1.constructorid, 
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.resultid, 
  results_1.driverid, 
  results_1.milliseconds, 
  results_1.position, 
  results_1.number, 
  sum(
    results_1.points), 
  max(
    results_1.date), 
  results_1.grid, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number is not NULL
group by results_1.constructorid, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.milliseconds, results_1.number, results_1.position, results_1.resultid
limit 42;
select  
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt >= circuits_1.lng
limit 4;
select  
  constructor_results_1.points, 
  count(*), 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 25;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 13;
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  circuits_1.name, 
  circuits_1.lng, 
  constructor_results_1.constructorresultsid, 
  circuits_1.alt, 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.constructorresultsid is not NULL
group by circuits_1.alt, circuits_1.lng, circuits_1.name, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 13;
select  
  results_1.resultid, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where results_1.driverid is not NULL
limit 41;
select  
  count(
    circuits_1.circuitid), 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.circuitid = constructor_results_1.constructorid
group by circuits_1.alt
limit 25;
select  
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.position, 
  count(*), 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 13;
select  
  circuits_1.lng, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 29;
select distinct 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 40;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality >= drivers_1.driverref
limit 11;
select  
  results_1.grid, 
  results_1.points, 
  results_1.rank, 
  results_1.positionorder, 
  results_1.raceid, 
  min(
    results_1.date), 
  results_1.raceid, 
  avg(
    results_1.positionorder), 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.grid is not NULL
group by results_1.constructorid, results_1.grid, results_1.points, results_1.positionorder, results_1.raceid, results_1.rank
limit 31;
select  
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 4;
select  
  drivers_1.surname, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob = drivers_1.dob
limit 39;
select  
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
limit 4;
select  
  drivers_1.code, 
  drivers_1.surname, 
  results_1.resultid, 
  avg(
    results_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join results as results_1
        on (drivers_1.driverid = results_1.resultid )
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.name is not NULL
group by drivers_1.code, drivers_1.surname, results_1.resultid
limit 18;
select  
  count(
    results_1.laps)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.points is not NULL
limit 21;
select  
  races_2.date, 
  races_2.circuitid, 
  races_1.date, 
  standings_1.points, 
  standings_1.driverid, 
  races_2.year, 
  standings_1.driverid, 
  races_2.round, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    inner join standings as standings_1
    on (races_2.raceid = standings_1.driverstandingsid )
where races_2.year is not NULL
limit 19;
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.driverid, 
  constructor_results_1.date, 
  results_1.constructorid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
        inner join results as results_1
          inner join drivers as drivers_1
          on (results_1.resultid = drivers_1.driverid )
        on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
      inner join constructor_results as constructor_results_1
      on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
    on (constructors_1.constructorid = drivers_1.driverid )
where results_1.constructorid is not NULL
limit 32;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  qualifying_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  qualifying_1.qualifyid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid
limit 14;
select  
  qualifying_2.date, 
  qualifying_1.constructorid, 
  standings_1.position, 
  standings_1.points, 
  standings_1.position, 
  qualifying_1.driverid, 
  standings_1.position, 
  qualifying_1.position, 
  qualifying_2.date, 
  qualifying_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where standings_1.driverstandingsid is not NULL
limit 23;
select  
  circuits_1.country, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name <= circuits_1.circuitref
limit 28;
select  
  races_1.date, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
limit 5;
select  
  max(
    standings_1.raceid), 
  max(
    qualifying_1.qualifyid), 
  standings_1.driverid, 
  constructor_standings_1.raceid, 
  standings_1.driverid, 
  constructor_results_1.date, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.date, constructor_standings_1.raceid, qualifying_1.raceid, standings_1.driverid
limit 41;
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.lng, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lng, circuits_1.name
limit 17;
select  
  circuits_1.lng, 
  circuits_2.circuitref, 
  circuits_2.alt, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
        inner join standings as standings_1
        on (circuits_2.circuitid = standings_1.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
      on (circuits_2.circuitid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where constructor_standings_1.wins is not NULL
limit 27;
select  
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 14;
select  
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  qualifying_1.constructorid, 
  sum(
    qualifying_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.driverid = qualifying_1.qualifyid
group by qualifying_1.constructorid, standings_1.driverstandingsid, standings_1.raceid
limit 36;
select  
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid < races_1.round
limit 3;
select  
  drivers_1.forename, 
  avg(
    qualifying_1.qualifyid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.raceid is not NULL
group by drivers_1.forename
limit 42;
select  
  results_1.driverid, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank is not NULL
limit 14;
select  
  min(
    circuits_1.alt), 
  circuits_1.alt, 
  sum(
    circuits_1.lng), 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  count(*), 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 4;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 41;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
limit 28;
select  
  results_1.date, 
  results_1.resultid, 
  results_1.milliseconds, 
  results_1.fastestlap, 
  results_1.statusid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date is not NULL
limit 1;
select  
  constructor_results_1.points, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 12;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 33;
select  
  sum(
    results_1.laps), 
  results_1.position, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.laps, results_1.position
limit 22;
select distinct 
  circuits_1.country, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 14;
select  
  qualifying_1.number, 
  constructor_results_1.points, 
  drivers_2.dob, 
  drivers_2.forename, 
  standings_1.position, 
  qualifying_1.number, 
  standings_1.raceid, 
  results_1.constructorid, 
  standings_1.wins, 
  drivers_1.surname, 
  qualifying_1.number, 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  standings_1.driverstandingsid, 
  qualifying_1.driverid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join drivers as drivers_2
        inner join constructor_results as constructor_results_1
          inner join results as results_1
          on (constructor_results_1.constructorresultsid = results_1.resultid )
        on (drivers_2.driverid = constructor_results_1.constructorresultsid )
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
group by constructor_results_1.points, drivers_1.driverid, drivers_1.surname, drivers_2.dob, drivers_2.forename, qualifying_1.driverid, qualifying_1.number, results_1.constructorid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 3;
select  
  races_1.raceid, 
  races_1.round, 
  races_1.time, 
  races_1.time, 
  races_1.time, 
  races_1.name, 
  races_1.time, 
  races_1.date, 
  count(*), 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid < races_1.raceid
group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
limit 12;
select  
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position
limit 39;
select  
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 23;
select  
  drivers_1.forename, 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.forename, drivers_1.surname
limit 7;
select  
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join constructor_results as constructor_results_2
    on (results_1.resultid = constructor_results_2.constructorresultsid )
where results_1.driverid <= constructor_results_2.raceid
limit 12;
select  
  standings_1.date, 
  standings_1.date, 
  standings_1.points, 
  standings_1.points, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid > standings_1.driverid
limit 16;
select  
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where circuits_1.name is not NULL
limit 17;
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 20;
select  
  constructor_standings_1.points, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_2
      on (constructor_standings_1.constructorstandingsid = circuits_2.circuitid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
limit 20;
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  count(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  avg(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 15;
select  
  max(
    qualifying_1.date), 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.raceid
limit 39;
select  
  qualifying_2.raceid, 
  qualifying_2.date, 
  min(
    qualifying_1.date), 
  sum(
    qualifying_1.driverid), 
  qualifying_2.position, 
  constructors_1.constructorref, 
  qualifying_2.date, 
  constructors_1.constructorid, 
  qualifying_1.qualifyid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.driverid >= qualifying_2.position
group by constructors_1.constructorid, constructors_1.constructorref, qualifying_1.qualifyid, qualifying_2.date, qualifying_2.position, qualifying_2.raceid
limit 31;
select  
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 18;
select  
  sum(
    constructor_results_1.raceid), 
  max(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 24;
select  
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.raceid is not NULL
limit 16;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 4;
select  
  constructor_results_1.constructorid, 
  results_1.resultid, 
  qualifying_2.raceid, 
  results_1.date, 
  qualifying_1.constructorid, 
  results_1.position, 
  results_1.position, 
  qualifying_1.qualifyid, 
  constructors_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
          inner join qualifying as qualifying_2
          on (constructors_1.constructorid = qualifying_2.qualifyid )
        inner join constructor_results as constructor_results_1
        on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.name is not NULL
limit 6;
select  
  races_2.circuitid, 
  races_1.time, 
  races_1.round, 
  min(
    results_1.date), 
  count(*), 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
        inner join races as races_2
        on (results_1.resultid = races_2.raceid )
      inner join constructor_results as constructor_results_1
      on (races_2.raceid = constructor_results_1.constructorresultsid )
    on (races_1.raceid = results_1.resultid )
where constructor_results_1.constructorresultsid < races_1.year
group by races_1.round, races_1.time, races_2.circuitid, results_1.date
limit 7;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 10;
select  
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 10;
select  
  standings_1.wins, 
  constructor_results_1.points, 
  constructors_1.constructorid, 
  constructor_standings_1.wins, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
limit 35;
select  
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 11;
select  
  results_1.number, 
  max(
    qualifying_1.number), 
  results_1.number, 
  standings_1.date, 
  qualifying_1.constructorid, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join results as results_1
      inner join constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      on (results_1.resultid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by qualifying_1.constructorid, results_1.date, results_1.number, standings_1.date
limit 14;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 21;
select  
  count(
    constructor_standings_1.date), 
  max(
    races_1.circuitid), 
  races_1.time, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by races_1.circuitid, races_1.time
limit 7;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 37;
select  
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.lat, 
  max(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref < circuits_1.country
group by circuits_1.alt, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 41;
select  
  count(*), 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  min(
    standings_1.date), 
  standings_1.position, 
  circuits_1.name, 
  standings_1.points, 
  circuits_1.lat, 
  standings_1.raceid, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  standings_1.wins, 
  circuits_1.circuitid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  min(
    circuits_1.alt), 
  max(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.name, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 26;
select  
  races_1.round, 
  races_1.time, 
  constructor_results_1.raceid, 
  drivers_1.driverid, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where drivers_1.surname is not NULL
limit 14;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 18;
select  
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid
limit 23;
select  
  min(
    standings_2.date), 
  avg(
    standings_1.wins), 
  qualifying_1.constructorid, 
  standings_2.driverstandingsid, 
  drivers_1.driverid, 
  qualifying_1.qualifyid, 
  constructor_standings_1.points, 
  standings_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join qualifying as qualifying_1
      inner join standings as standings_1
          inner join constructor_standings as constructor_standings_1
          on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
        inner join standings as standings_2
        on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.dob <= qualifying_1.date
group by constructor_standings_1.points, drivers_1.driverid, qualifying_1.constructorid, qualifying_1.qualifyid, standings_2.driverstandingsid, standings_2.position
limit 39;
select  
  constructors_1.constructorid, 
  standings_2.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join drivers as drivers_1
      on (constructors_1.constructorid = drivers_1.driverid )
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (constructors_1.constructorid = standings_2.driverstandingsid )
where standings_2.driverstandingsid is not NULL
limit 6;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 27;
select  
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where drivers_1.forename is not NULL
limit 34;
select  
  circuits_1.location, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where results_1.driverid is not NULL
limit 30;
select  
  results_1.points, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap is not NULL
limit 23;
select  
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.date <= results_1.date
limit 10;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 13;
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  drivers_1.surname, 
  avg(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 25;
select  
  qualifying_1.raceid, 
  qualifying_2.driverid, 
  results_1.milliseconds, 
  results_2.number, 
  results_1.rank, 
  qualifying_1.qualifyid, 
  results_1.number, 
  results_1.grid, 
  results_2.position, 
  qualifying_2.qualifyid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join results as results_2
        inner join qualifying as qualifying_1
        on (results_2.resultid = qualifying_1.qualifyid )
      on (results_1.resultid = results_2.resultid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where results_1.statusid is not NULL
group by qualifying_1.qualifyid, qualifying_1.raceid, qualifying_2.driverid, qualifying_2.qualifyid, results_1.grid, results_1.milliseconds, results_1.number, results_1.rank, results_2.number, results_2.position
limit 23;
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  max(
    standings_1.driverid), 
  count(
    standings_1.driverstandingsid), 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.raceid
limit 21;
select  
  constructor_results_1.constructorresultsid, 
  drivers_1.driverid, 
  standings_1.points, 
  constructor_results_2.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_2
        inner join races as races_1
        on (constructor_results_2.constructorresultsid = races_1.raceid )
      on (drivers_1.driverid = races_1.raceid )
    on (standings_1.driverstandingsid = drivers_1.driverid )
where standings_1.raceid is not NULL
limit 29;
select  
  sum(
    constructor_standings_1.wins), 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  drivers_1.forename, 
  min(
    constructor_standings_1.position), 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid, drivers_1.forename
limit 12;
select  
  results_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join results as results_2
    on (standings_1.driverstandingsid = results_2.resultid )
where standings_1.date <= results_2.date
limit 3;
select  
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 37;
select  
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 25;
select  
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.raceid), 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.raceid), 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 38;
select  
  sum(
    constructor_results_1.points), 
  min(
    qualifying_1.raceid), 
  qualifying_1.number, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_2
        on (qualifying_1.qualifyid = constructors_2.constructorid )
      on (constructor_results_1.constructorresultsid = constructors_2.constructorid )
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.year < qualifying_1.qualifyid
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructors_1.name, qualifying_1.number
limit 14;
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.raceid, 
  avg(
    standings_1.points), 
  standings_1.date, 
  standings_1.points, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 4;
select  
  standings_1.raceid, 
  count(
    standings_1.driverid), 
  constructor_standings_1.raceid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where standings_1.wins is not NULL
group by constructor_standings_1.raceid, standings_1.position, standings_1.raceid, standings_1.wins
limit 17;
select  
  results_1.rank, 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date is not NULL
limit 15;
select  
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
        inner join drivers as drivers_1
        on (qualifying_1.qualifyid = drivers_1.driverid )
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join standings as standings_1
        inner join results as results_1
          inner join drivers as drivers_2
          on (results_1.resultid = drivers_2.driverid )
        on (standings_1.driverstandingsid = results_1.resultid )
      inner join results as results_2
      on (drivers_2.driverid = results_2.resultid )
    on (constructor_standings_1.constructorstandingsid = results_2.resultid )
where results_1.positionorder is not NULL
limit 40;
select  
  qualifying_1.driverid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 4;
select  
  min(
    constructor_results_1.date), 
  standings_1.driverid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  standings_1.position, 
  standings_1.date, 
  constructor_results_1.date, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, standings_1.date, standings_1.driverid, standings_1.position
limit 21;
select  
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.points > standings_1.points
limit 14;
select  
  max(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 30;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.constructorid), 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  constructor_results_1.points, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  sum(
    constructor_results_1.raceid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 31;
select  
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.surname is not NULL
limit 16;
select  
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
        inner join constructors as constructors_1
        on (circuits_2.circuitid = constructors_1.constructorid )
      inner join qualifying as qualifying_1
      on (circuits_2.circuitid = qualifying_1.qualifyid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitid < circuits_2.circuitid
limit 13;
select  
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 41;
select  
  results_1.rank, 
  results_1.points, 
  results_1.positionorder, 
  results_1.milliseconds, 
  results_1.statusid, 
  results_1.statusid, 
  results_1.fastestlap, 
  min(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date >= results_1.date
group by results_1.fastestlap, results_1.milliseconds, results_1.points, results_1.positionorder, results_1.rank, results_1.statusid
limit 40;
select  
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob = drivers_1.dob
limit 3;
select  
  max(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.raceid is not NULL
limit 11;
select  
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
limit 27;
select  
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.surname, 
  max(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 1;
select  
  circuits_1.lat, 
  qualifying_2.constructorid, 
  sum(
    qualifying_1.position), 
  constructor_standings_1.constructorid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join qualifying as qualifying_1
          inner join drivers as drivers_1
          on (qualifying_1.qualifyid = drivers_1.driverid )
        inner join circuits as circuits_1
        on (drivers_1.driverid = circuits_1.circuitid )
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join qualifying as qualifying_2
    on (constructor_standings_1.constructorstandingsid = qualifying_2.qualifyid )
where constructors_1.nationality is not NULL
group by circuits_1.lat, constructor_standings_1.constructorid, constructors_1.nationality, qualifying_2.constructorid
limit 20;
select  
  drivers_2.driverid, 
  drivers_2.driverref, 
  drivers_2.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.dob is not NULL
limit 27;
select  
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.date), 
  constructors_1.constructorref, 
  avg(
    constructor_standings_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_1.points > constructor_standings_1.points
group by constructor_standings_1.constructorid, constructors_1.constructorref
limit 18;
select  
  races_1.round, 
  races_1.name, 
  races_1.round, 
  races_1.circuitid, 
  races_1.name, 
  races_1.raceid, 
  races_1.round, 
  races_1.name, 
  races_1.name, 
  races_1.year, 
  races_1.year, 
  races_1.time, 
  races_1.raceid, 
  races_1.date, 
  min(
    races_1.date), 
  races_1.date, 
  races_1.name, 
  min(
    races_1.year), 
  races_1.date, 
  races_1.date, 
  races_1.round, 
  min(
    races_1.raceid), 
  races_1.circuitid, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 11;
select  
  standings_1.driverstandingsid, 
  standings_2.points, 
  standings_2.position, 
  standings_1.driverstandingsid, 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join standings as standings_1
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (qualifying_1.qualifyid = results_1.resultid )
where results_1.date is not NULL
limit 42;
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  constructor_standings_1.date, 
  constructor_results_1.constructorid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructor_results_1.points > constructor_standings_1.points
limit 28;
select  
  races_1.name, 
  races_1.name, 
  races_1.name, 
  count(
    races_1.year)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.name
limit 23;
select  
  circuits_1.location, 
  circuits_1.circuitid, 
  races_1.date, 
  circuits_1.circuitref, 
  constructor_standings_1.constructorid, 
  count(
    qualifying_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join races as races_1
        inner join circuits as circuits_1
        on (races_1.raceid = circuits_1.circuitid )
      on (results_1.resultid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.country is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.location, constructor_standings_1.constructorid, races_1.date
limit 2;
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  min(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 38;
select  
  max(
    qualifying_1.raceid), 
  qualifying_1.qualifyid, 
  min(
    qualifying_2.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_2
      inner join constructors as constructors_1
      on (qualifying_2.qualifyid = constructors_1.constructorid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where qualifying_2.driverid >= circuits_1.circuitid
group by qualifying_1.qualifyid
limit 20;
select  
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  avg(
    qualifying_1.number), 
  count(*), 
  qualifying_1.number, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 2;
select  
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.driverid, 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.nationality
limit 21;
select  
  max(
    constructor_results_1.date), 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  count(
    constructor_results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 13;
select  
  drivers_1.code, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 10;
select  
  results_1.position, 
  results_1.resultid, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid is not NULL
limit 42;
select  
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.date, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap is not NULL
limit 28;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 34;
select  
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.location > circuits_1.circuitref
limit 7;
select  
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.constructorid >= constructor_standings_1.wins
limit 22;
select  
  results_1.resultid, 
  results_1.resultid, 
  results_1.number, 
  results_1.points, 
  results_1.statusid, 
  results_1.number, 
  results_1.driverid, 
  results_1.grid, 
  results_1.points, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap is not NULL
limit 36;
select  
  results_1.laps, 
  min(
    results_2.date), 
  results_3.rank, 
  circuits_1.alt, 
  results_2.date, 
  circuits_1.circuitid, 
  results_3.resultid, 
  results_3.milliseconds, 
  results_2.date, 
  max(
    results_3.date), 
  results_3.resultid, 
  results_3.fastestlap, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join results as results_2
        inner join circuits as circuits_1
        on (results_2.resultid = circuits_1.circuitid )
      on (results_1.resultid = results_2.resultid )
    inner join results as results_3
    on (results_1.resultid = results_3.resultid )
where results_3.resultid > results_1.raceid
group by circuits_1.alt, circuits_1.circuitid, results_1.laps, results_1.position, results_2.date, results_3.fastestlap, results_3.milliseconds, results_3.rank, results_3.resultid
limit 10;
select  
  results_1.position, 
  races_1.name, 
  results_1.statusid, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.raceid is not NULL
limit 6;
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  max(
    drivers_1.driverid), 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.dob, drivers_1.nationality
limit 41;
select  
  max(
    results_1.points), 
  drivers_2.nationality, 
  constructors_1.nationality, 
  sum(
    results_1.fastestlap), 
  constructor_standings_1.position, 
  constructor_standings_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
        inner join constructors as constructors_2
        on (drivers_1.driverid = constructors_2.constructorid )
      inner join constructor_standings as constructor_standings_1
          inner join constructor_standings as constructor_standings_2
            inner join results as results_1
            on (constructor_standings_2.constructorstandingsid = results_1.resultid )
          on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
        inner join drivers as drivers_2
        on (results_1.resultid = drivers_2.driverid )
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    on (constructors_1.constructorid = drivers_2.driverid )
where results_1.date > drivers_2.dob
group by constructor_standings_1.position, constructor_standings_2.date, constructors_1.nationality, drivers_2.nationality
limit 39;
select  
  races_1.time, 
  races_1.year, 
  races_1.name, 
  races_1.year, 
  avg(
    races_1.circuitid), 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.name, races_1.time, races_1.year
limit 27;
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  min(
    circuits_1.alt), 
  circuits_1.circuitref, 
  avg(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
limit 31;
select  
  min(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.alt, 
  min(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  circuits_1.location, 
  avg(
    circuits_1.lat), 
  circuits_1.lng, 
  min(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.lat, 
  max(
    circuits_1.circuitid), 
  circuits_1.name, 
  circuits_1.circuitid, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 37;
select  
  qualifying_1.raceid, 
  races_1.round, 
  qualifying_1.driverid, 
  races_1.name, 
  max(
    races_1.round), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  count(
    qualifying_1.raceid), 
  qualifying_1.raceid, 
  qualifying_1.position, 
  min(
    races_1.year), 
  races_1.circuitid, 
  min(
    races_1.date), 
  qualifying_1.position, 
  races_1.year, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.circuitid is not NULL
group by qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, races_1.circuitid, races_1.name, races_1.round, races_1.year
limit 42;
select  
  min(
    standings_1.date), 
  standings_1.date, 
  circuits_1.alt, 
  constructor_results_1.raceid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
        inner join standings as standings_1
        on (circuits_1.circuitid = standings_1.driverstandingsid )
      inner join standings as standings_2
      on (circuits_1.circuitid = standings_2.driverstandingsid )
    inner join constructor_results as constructor_results_1
    on (standings_2.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid <= constructor_results_1.raceid
group by circuits_1.alt, constructor_results_1.points, constructor_results_1.raceid, standings_1.date
limit 29;
select  
  sum(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 15;
select  
  constructor_standings_2.constructorstandingsid, 
  sum(
    circuits_1.alt), 
  constructor_standings_2.raceid, 
  constructor_results_1.raceid, 
  constructor_standings_1.date, 
  constructor_results_1.raceid, 
  circuits_1.location, 
  constructor_standings_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join circuits as circuits_1
    on (constructor_standings_2.constructorstandingsid = circuits_1.circuitid )
where circuits_1.name is not NULL
group by circuits_1.location, constructor_results_1.raceid, constructor_standings_1.date, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.raceid
limit 35;
select  
  qualifying_1.position, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.date is not NULL
limit 8;
select  
  circuits_1.lng, 
  circuits_1.country, 
  constructor_standings_1.date, 
  circuits_1.lat, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date <= constructor_standings_1.date
limit 16;
select  
  races_1.raceid, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.time, 
  races_1.name, 
  races_1.name, 
  races_1.year, 
  races_1.raceid, 
  races_1.time, 
  count(
    races_1.year), 
  races_1.name, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name >= races_1.time
group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 11;
select  
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
limit 15;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 17;
select  
  constructor_results_1.constructorresultsid, 
  count(
    constructor_results_1.date), 
  count(
    constructor_results_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid = constructor_results_1.constructorid
group by constructor_results_1.constructorresultsid
limit 20;
select  
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name is not NULL
limit 23;
select  
  races_1.round, 
  races_1.date, 
  races_1.time, 
  races_1.circuitid, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 23;
select  
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join races as races_1
          inner join circuits as circuits_1
          on (races_1.raceid = circuits_1.circuitid )
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      on (results_1.resultid = races_1.raceid )
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where circuits_1.lng is not NULL
limit 28;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 13;
select  
  qualifying_1.qualifyid, 
  standings_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  standings_1.wins, 
  qualifying_1.number, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.position is not NULL
limit 38;
select  
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.date is not NULL
limit 21;
select  
  results_1.points, 
  results_1.number, 
  max(
    results_1.date), 
  results_1.laps, 
  results_1.points, 
  count(
    results_1.fastestlap), 
  min(
    results_1.fastestlap), 
  min(
    results_1.number), 
  results_1.fastestlap, 
  results_1.laps, 
  results_1.position, 
  results_1.resultid, 
  results_1.resultid, 
  avg(
    results_1.fastestlap), 
  results_1.date, 
  results_1.number, 
  avg(
    results_1.positionorder), 
  count(
    results_1.statusid), 
  results_1.raceid, 
  min(
    results_1.date), 
  max(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid is not NULL
group by results_1.date, results_1.fastestlap, results_1.laps, results_1.number, results_1.points, results_1.position, results_1.raceid, results_1.resultid
limit 1;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  circuits_1.country, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.date < constructor_standings_1.date
limit 12;
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 13;
select  
  races_1.name, 
  results_1.milliseconds, 
  max(
    results_1.date), 
  constructor_standings_1.raceid, 
  results_1.date, 
  races_1.round, 
  min(
    results_1.points), 
  avg(
    results_1.position), 
  results_1.laps, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where results_1.positionorder < results_1.laps
group by constructor_standings_1.raceid, races_1.name, races_1.raceid, races_1.round, results_1.date, results_1.laps, results_1.milliseconds
limit 6;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.position, constructor_standings_1.wins
limit 36;
select  
  count(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name > constructors_1.constructorref
limit 8;
select  
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.date, constructor_results_1.points
limit 32;
select  
  standings_1.driverstandingsid, 
  standings_1.points, 
  min(
    standings_1.wins), 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.date, 
  standings_1.wins, 
  max(
    standings_1.points), 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 28;
select  
  avg(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 36;
select  
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 21;
select  
  qualifying_1.qualifyid, 
  results_1.date, 
  sum(
    results_1.constructorid), 
  results_1.resultid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  results_1.statusid, 
  results_1.points, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  sum(
    results_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.points is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, results_1.date, results_1.points, results_1.resultid, results_1.statusid
limit 20;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 23;
select  
  sum(
    results_1.grid), 
  results_1.rank, 
  results_1.rank, 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number is not NULL
group by results_1.rank, results_1.resultid
limit 37;
select  
  min(
    constructor_standings_1.wins), 
  max(
    constructor_standings_1.points), 
  sum(
    constructor_standings_1.wins), 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.raceid
limit 20;
select  
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 24;
select  
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position > constructor_standings_1.constructorstandingsid
limit 11;
select  
  races_1.raceid, 
  races_1.date, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 33;
select  
  races_1.circuitid, 
  races_1.raceid, 
  races_1.round, 
  avg(
    races_1.round)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.raceid, races_1.round
limit 22;
select  
  qualifying_1.constructorid, 
  results_1.number, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.position is not NULL
limit 35;
select  
  races_1.name, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  races_1.year, 
  circuits_1.lng, 
  races_1.circuitid, 
  circuits_1.country, 
  circuits_1.lat, 
  max(
    races_1.date), 
  circuits_1.location, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, races_1.circuitid, races_1.name, races_1.year
limit 19;
select  
  circuits_1.circuitref, 
  max(
    circuits_1.circuitid), 
  constructors_1.nationality, 
  drivers_1.dob, 
  circuits_1.lng, 
  circuits_2.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      inner join circuits as circuits_3
        inner join constructors as constructors_1
        on (circuits_3.circuitid = constructors_1.constructorid )
      on (circuits_1.circuitid = circuits_3.circuitid )
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_1.dob = drivers_1.dob
group by circuits_1.circuitref, circuits_1.lng, circuits_2.name, constructors_1.nationality, drivers_1.dob
limit 4;
select  
  constructor_standings_1.date, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_2.position, 
  constructor_standings_2.raceid, 
  max(
    constructor_standings_2.date), 
  constructor_standings_1.points, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_2.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_2.constructorstandingsid, constructor_standings_2.position, constructor_standings_2.raceid
limit 35;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 7;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 8;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name = constructors_1.constructorref
limit 33;
select  
  qualifying_1.driverid, 
  qualifying_1.date, 
  races_1.circuitid, 
  races_1.round, 
  drivers_1.nationality, 
  qualifying_1.driverid, 
  races_1.time, 
  results_1.grid, 
  max(
    results_1.rank), 
  qualifying_1.position, 
  races_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  min(
    races_1.raceid), 
  results_1.driverid, 
  results_1.milliseconds, 
  races_1.date, 
  results_1.date, 
  races_1.round, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  races_1.year, 
  races_1.year, 
  results_1.raceid, 
  qualifying_1.constructorid, 
  drivers_1.forename, 
  races_1.round, 
  qualifying_1.raceid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join results as results_1
        on (races_1.raceid = results_1.resultid )
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.dob is not NULL
group by drivers_1.forename, drivers_1.nationality, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year, results_1.date, results_1.driverid, results_1.grid, results_1.milliseconds, results_1.raceid
limit 29;
select  
  max(
    qualifying_1.qualifyid), 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.position
limit 8;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid = constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 38;
select  
  constructors_1.constructorref, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name > constructors_1.nationality
limit 21;
select  
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 30;
select  
  circuits_1.circuitid, 
  circuits_1.lat, 
  races_1.name, 
  circuits_1.alt, 
  qualifying_1.raceid, 
  qualifying_2.raceid, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join circuits as circuits_1
      inner join races as races_2
      on (circuits_1.circuitid = races_2.raceid )
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.country is not NULL
limit 3;
select  
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.lng, 
  min(
    circuits_1.lng)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.lat, circuits_1.lng
limit 17;
select  
  races_1.year, 
  races_1.year, 
  races_1.round, 
  races_1.time, 
  races_1.round, 
  races_1.circuitid, 
  races_1.date, 
  races_1.circuitid, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
limit 41;
select  
  constructor_standings_2.position, 
  sum(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join results as results_1
          inner join qualifying as qualifying_1
          on (results_1.resultid = qualifying_1.qualifyid )
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_2
    on (results_1.resultid = constructor_standings_2.constructorstandingsid )
where results_1.raceid is not NULL
group by constructor_standings_2.position
limit 21;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 5;
select  
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
limit 39;
select  
  constructors_1.name, 
  circuits_1.lng, 
  constructors_1.constructorref, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.circuitref is not NULL
limit 42;
select  
  sum(
    drivers_1.driverid), 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code
limit 39;
select  
  constructors_1.name, 
  drivers_1.forename, 
  drivers_2.forename, 
  drivers_1.forename, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructors as constructors_1
      inner join drivers as drivers_2
      on (constructors_1.constructorid = drivers_2.driverid )
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_2.code is not NULL
limit 5;
select  
  max(
    races_1.year), 
  max(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name is not NULL
limit 25;
select  
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 8;
select  
  constructor_standings_1.points, 
  count(
    constructor_standings_1.wins), 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date), 
  sum(
    constructor_standings_1.wins), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 29;
select  
  results_1.driverid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  qualifying_1.position, 
  drivers_1.surname, 
  results_2.grid, 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      on (drivers_1.driverid = results_1.resultid )
    inner join results as results_2
      inner join qualifying as qualifying_1
      on (results_2.resultid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where results_1.grid is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, drivers_1.surname, qualifying_1.position, results_1.driverid, results_2.grid
limit 31;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.raceid), 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  count(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 14;
select  
  max(
    constructor_results_1.points), 
  circuits_1.lng, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = constructors_2.constructorid )
where circuits_1.circuitref is not NULL
group by circuits_1.lng, constructors_1.constructorref
limit 42;
select  
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.name, 
  max(
    circuits_1.alt), 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 18;
select  
  qualifying_1.qualifyid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 26;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.constructorresultsid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 15;
select  
  races_1.date, 
  races_1.raceid, 
  races_1.raceid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time > races_1.name
limit 40;
select  
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 18;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  count(
    constructors_1.constructorref)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 37;
select  
  results_1.raceid, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.resultid is not NULL
limit 29;
select  
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.wins), 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 6;
select  
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 33;
select  
  results_1.statusid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.resultid is not NULL
limit 39;
select  
  constructor_standings_2.date, 
  constructor_standings_2.constructorstandingsid, 
  min(
    races_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructors_1.name, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where constructor_standings_2.points > constructor_standings_1.points
group by constructor_standings_1.constructorstandingsid, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructors_1.name, races_1.time
limit 19;
select  
  drivers_1.driverref, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 12;
select  
  count(
    results_1.driverid), 
  results_1.points, 
  max(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank <= results_1.number
group by results_1.points
limit 18;
select  
  constructors_1.nationality, 
  constructors_2.constructorid, 
  constructors_1.constructorid, 
  constructors_2.constructorid, 
  constructors_1.nationality, 
  count(
    constructors_1.nationality), 
  constructors_2.constructorref, 
  constructors_2.nationality, 
  constructors_2.constructorref, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  constructors_2.name, 
  constructors_1.nationality, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorref, constructors_2.name, constructors_2.nationality
limit 27;
select  
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap > results_1.points
limit 24;
select  
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where qualifying_1.date is not NULL
limit 17;
select  
  count(
    circuits_1.circuitid), 
  avg(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 17;
select  
  results_1.constructorid, 
  results_1.resultid, 
  results_1.positionorder, 
  results_1.rank, 
  results_1.statusid, 
  results_1.number, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date < results_1.date
limit 27;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 30;
select  
  standings_1.position, 
  constructors_1.constructorid, 
  max(
    standings_1.points), 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  constructors_1.constructorref, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.points > standings_1.points
group by constructors_1.constructorid, constructors_1.constructorref, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 32;
select  
  min(
    circuits_1.lng), 
  min(
    standings_1.date), 
  constructors_2.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
      inner join constructors as constructors_1
        inner join constructors as constructors_2
          inner join circuits as circuits_1
          on (constructors_2.constructorid = circuits_1.circuitid )
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructors_1.nationality is not NULL
group by constructors_2.nationality
limit 25;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  qualifying_1.raceid, 
  constructor_standings_1.position, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.date < constructor_standings_1.date
limit 7;
select  
  circuits_1.country, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 39;
select  
  constructors_2.constructorref, 
  constructors_1.name, 
  standings_1.date, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
        inner join qualifying as qualifying_1
          inner join constructors as constructors_1
          on (qualifying_1.qualifyid = constructors_1.constructorid )
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join constructors as constructors_2
    on (qualifying_1.qualifyid = constructors_2.constructorid )
where constructors_1.constructorref is not NULL
limit 39;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.name is not NULL
limit 9;
select  
  max(
    results_1.date), 
  results_1.driverid, 
  results_1.positionorder, 
  min(
    results_1.rank), 
  min(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid >= results_1.positionorder
group by results_1.driverid, results_1.positionorder
limit 28;
select  
  constructor_results_1.constructorresultsid, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 12;
select  
  circuits_1.country, 
  count(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where standings_1.driverid is not NULL
group by circuits_1.country
limit 21;
select  
  constructor_results_1.constructorresultsid, 
  count(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid > constructor_results_1.constructorresultsid
group by constructor_results_1.constructorresultsid
limit 34;
select  
  standings_1.wins, 
  max(
    standings_1.date), 
  max(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_2
        inner join constructor_standings as constructor_standings_1
        on (standings_2.driverstandingsid = constructor_standings_1.constructorstandingsid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.raceid is not NULL
group by standings_1.wins
limit 16;
select  
  results_1.points, 
  results_1.date, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps < results_1.statusid
limit 14;
select  
  circuits_1.country, 
  min(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.circuitid, 
  avg(
    circuits_1.alt)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
group by circuits_1.circuitid, circuits_1.country, circuits_1.lng, circuits_1.location
limit 12;
select  
  constructor_results_1.date, 
  drivers_2.driverid, 
  drivers_2.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructors as constructors_1
      inner join drivers as drivers_2
        inner join constructor_results as constructor_results_1
        on (drivers_2.driverid = constructor_results_1.constructorresultsid )
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.code is not NULL
limit 41;
select  
  races_2.round, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.round is not NULL
limit 35;
select  
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  circuits_1.circuitref, 
  avg(
    circuits_1.alt), 
  avg(
    circuits_1.alt)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
group by circuits_1.circuitref, constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 23;
select  
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.number, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.number, qualifying_1.position
limit 8;
select  
  constructor_standings_1.date, 
  qualifying_1.date, 
  constructors_1.name, 
  constructors_2.constructorref, 
  constructors_2.constructorref, 
  qualifying_1.driverid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  max(
    constructor_standings_1.points), 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    on (constructors_2.constructorid = qualifying_1.qualifyid )
where qualifying_1.raceid >= constructor_standings_1.raceid
group by constructor_standings_1.date, constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_2.constructorref, qualifying_1.date, qualifying_1.driverid
limit 36;
select  
  drivers_1.nationality, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.driverid, drivers_1.nationality
limit 33;
select  
  constructor_results_1.points, 
  min(
    results_2.fastestlap), 
  constructor_results_1.raceid, 
  results_1.milliseconds, 
  results_1.raceid, 
  count(*), 
  min(
    results_1.milliseconds)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join qualifying as qualifying_1
        inner join results as results_2
        on (qualifying_1.qualifyid = results_2.resultid )
      inner join races as races_1
        inner join constructor_standings as constructor_standings_1
        on (races_1.raceid = constructor_standings_1.constructorstandingsid )
      on (qualifying_1.qualifyid = races_1.raceid )
    on (results_1.resultid = races_1.raceid )
where results_2.fastestlap is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, results_1.milliseconds, results_1.raceid
limit 18;
select  
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.alt, 
  max(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country >= circuits_1.name
group by circuits_1.alt, circuits_1.name
limit 16;
select  
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 5;
select  
  results_1.date, 
  results_1.driverid, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.milliseconds = results_1.points
limit 6;
select  
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  count(*), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 35;
select  
  min(
    results_1.points), 
  qualifying_1.number, 
  constructors_1.name, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  results_1.points, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
group by constructors_1.name, qualifying_1.date, qualifying_1.number, qualifying_1.raceid, results_1.points
limit 20;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 32;
select  
  races_1.circuitid, 
  count(
    qualifying_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.name is not NULL
group by races_1.circuitid
limit 19;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join races as races_1
    on (constructors_1.constructorid = races_1.raceid )
where constructor_results_1.points < constructor_results_1.points
limit 17;
select  
  min(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
limit 14;
select  
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 38;
select  
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.surname, 
  count(
    drivers_1.driverid), 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.forename, 
  max(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.forename, 
  count(*), 
  drivers_1.code, 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 40;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  standings_1.points, 
  min(
    standings_2.date), 
  races_1.raceid, 
  drivers_1.surname, 
  drivers_1.surname, 
  races_1.round, 
  standings_2.position, 
  constructors_1.name, 
  standings_1.position, 
  standings_1.raceid, 
  standings_2.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      inner join standings as standings_2
      on (constructors_1.constructorid = standings_2.driverstandingsid )
    inner join races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.nationality <= drivers_1.forename
group by constructors_1.constructorref, constructors_1.name, drivers_1.surname, races_1.raceid, races_1.round, standings_1.points, standings_1.position, standings_1.raceid, standings_2.position, standings_2.raceid
limit 3;
select  
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 2;
select  
  constructors_2.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join results as results_2
      inner join constructors as constructors_1
        inner join constructors as constructors_2
        on (constructors_1.constructorid = constructors_2.constructorid )
      on (results_2.resultid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = results_2.resultid )
where results_2.laps >= results_1.resultid
limit 29;
select  
  races_1.name, 
  races_1.date, 
  races_1.raceid, 
  count(*), 
  races_1.date, 
  races_1.circuitid, 
  races_1.date, 
  races_1.raceid, 
  races_1.time, 
  races_1.year, 
  races_1.raceid, 
  races_1.name, 
  races_1.name, 
  races_1.circuitid, 
  max(
    races_1.date), 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 34;
select  
  results_1.number, 
  results_1.laps, 
  count(
    results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.constructorid >= results_1.driverid
group by results_1.laps, results_1.number
limit 19;
select  
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid, 
  min(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob >= drivers_1.dob
group by drivers_1.driverid, drivers_1.forename, drivers_1.nationality
limit 9;
select  
  qualifying_1.qualifyid, 
  circuits_1.lat, 
  qualifying_1.driverid, 
  circuits_1.lat, 
  sum(
    circuits_1.lng), 
  max(
    circuits_1.circuitid), 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.alt is not NULL
group by circuits_1.lat, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid
limit 25;
select  
  races_1.time, 
  constructor_standings_1.position, 
  standings_1.points, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join races as races_1
      on (constructor_standings_2.constructorstandingsid = races_1.raceid )
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 29;
select  
  results_1.number, 
  sum(
    results_1.milliseconds), 
  results_1.date, 
  results_1.points, 
  max(
    results_1.date), 
  results_1.rank, 
  results_1.statusid, 
  results_1.number, 
  results_1.number, 
  results_1.laps, 
  results_1.milliseconds, 
  min(
    results_1.date), 
  results_1.date, 
  results_1.rank, 
  results_1.points, 
  results_1.grid, 
  results_1.milliseconds, 
  results_1.position, 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.position is not NULL
group by results_1.date, results_1.grid, results_1.laps, results_1.milliseconds, results_1.number, results_1.points, results_1.position, results_1.rank, results_1.statusid
limit 21;
select  
  max(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  avg(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date < constructor_standings_1.date
group by constructor_standings_1.raceid, constructor_standings_1.wins
limit 10;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality >= constructors_1.name
limit 21;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 11;
select  
  sum(
    qualifying_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where qualifying_1.qualifyid is not NULL
limit 35;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 19;
select  
  standings_1.wins, 
  standings_1.position, 
  standings_1.date, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points = standings_1.points
limit 17;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 2;
select  
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
      inner join results as results_2
        inner join circuits as circuits_1
        on (results_2.resultid = circuits_1.circuitid )
      on (results_1.resultid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.name is not NULL
limit 30;
select  
  min(
    circuits_1.alt), 
  constructors_1.constructorid, 
  min(
    circuits_1.lat), 
  count(*), 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where qualifying_1.qualifyid is not NULL
group by circuits_1.lng, constructors_1.constructorid
limit 8;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  count(
    constructor_standings_1.position), 
  constructor_standings_1.date, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date > qualifying_1.date
group by constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_1.wins, qualifying_1.position
limit 5;
select  
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.code, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  min(
    drivers_1.driverid), 
  drivers_1.surname, 
  min(
    drivers_1.driverid), 
  drivers_1.surname, 
  max(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 12;
select  
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
limit 26;
select  
  races_1.time, 
  races_1.time, 
  races_1.date, 
  races_1.time, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.time
limit 40;
select  
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid < constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.nationality
limit 38;
select  
  results_1.rank, 
  results_1.date, 
  results_1.statusid, 
  results_1.milliseconds, 
  results_1.driverid, 
  results_1.position, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
limit 29;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 18;
select  
  results_1.position, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.raceid is not NULL
limit 34;
select  
  constructors_1.nationality, 
  constructor_results_1.date, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
limit 29;
select  
  results_1.date, 
  avg(
    results_1.number), 
  results_1.points, 
  results_1.grid, 
  min(
    results_1.date), 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
group by results_1.date, results_1.grid, results_1.laps, results_1.points
limit 6;
select  
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 21;
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.date, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.driverid, 
  count(*), 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  avg(
    standings_1.driverid), 
  sum(
    standings_1.points), 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.position, 
  max(
    standings_1.wins), 
  standings_1.wins, 
  min(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points = standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 12;
select  
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 7;
select  
  standings_1.points, 
  constructor_standings_1.points, 
  max(
    qualifying_1.date), 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join standings as standings_1
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where results_1.date is not NULL
group by constructor_standings_1.points, standings_1.points, standings_1.wins
limit 14;
select  
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where drivers_1.nationality is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid, drivers_1.code
limit 41;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 25;
select  
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 35;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 28;
select  
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 16;
select  
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
limit 10;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 4;
select  
  circuits_1.location, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  min(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 33;
select  
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 37;
select  
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
limit 13;
select  
  count(*), 
  max(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 6;
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.driverref, 
  min(
    drivers_1.driverid), 
  drivers_1.forename, 
  min(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob < drivers_1.dob
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 42;
select  
  drivers_1.nationality, 
  results_1.statusid, 
  results_1.rank, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.laps, 
  results_1.fastestlap, 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.driverid is not NULL
limit 18;
select  
  results_1.fastestlap, 
  results_1.laps, 
  results_1.grid, 
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.driverid, 
  results_1.milliseconds, 
  results_1.constructorid, 
  results_1.points, 
  avg(
    results_1.number)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank is not NULL
group by results_1.constructorid, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.milliseconds, results_1.points, results_1.resultid
limit 19;
select  
  drivers_1.forename, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.code is not NULL
limit 23;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid > constructors_1.constructorid
limit 3;
select  
  drivers_1.driverid, 
  drivers_1.dob, 
  max(
    drivers_1.dob), 
  drivers_1.driverref, 
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref
limit 16;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.constructorid), 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.date, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 20;
select  
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 12;
select  
  circuits_1.circuitref, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 41;
select  
  races_1.raceid, 
  races_1.year, 
  races_1.name, 
  races_1.date, 
  races_1.year, 
  races_1.circuitid, 
  sum(
    races_1.raceid), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.year
limit 35;
select  
  constructor_results_1.points, 
  races_1.date, 
  constructors_1.name, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join races as races_1
        inner join drivers as drivers_1
          inner join constructors as constructors_1
          on (drivers_1.driverid = constructors_1.constructorid )
        on (races_1.raceid = drivers_1.driverid )
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join races as races_2
      inner join constructor_results as constructor_results_1
      on (races_2.raceid = constructor_results_1.constructorresultsid )
    on (races_1.raceid = races_2.raceid )
where circuits_1.circuitid is not NULL
limit 12;
select  
  qualifying_1.position, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 26;
select  
  avg(
    qualifying_1.driverid), 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.location is not NULL
group by circuits_1.country
limit 17;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position
limit 26;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid
limit 26;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.constructorid), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  count(
    constructor_standings_1.wins), 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  count(
    constructor_standings_1.position), 
  constructor_standings_1.position, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 34;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
select  
  constructor_standings_1.position, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 38;
select  
  races_1.date, 
  races_1.name, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
limit 42;
select  
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 31;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 40;
select  
  min(
    constructor_standings_1.points), 
  max(
    drivers_1.dob), 
  constructor_standings_1.wins, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_1.constructorstandingsid = drivers_1.driverid
group by constructor_standings_1.wins, drivers_1.forename
limit 25;
select  
  results_2.laps, 
  results_2.position, 
  max(
    results_1.rank), 
  results_1.resultid, 
  results_2.laps, 
  results_2.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.driverid > results_1.raceid
group by results_1.resultid, results_2.laps, results_2.position, results_2.positionorder
limit 29;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 32;
select  
  results_1.points, 
  results_1.milliseconds, 
  results_1.position, 
  results_1.number, 
  results_1.date, 
  results_1.resultid, 
  results_1.rank, 
  sum(
    results_1.driverid), 
  results_1.position, 
  results_1.statusid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.date, results_1.milliseconds, results_1.number, results_1.points, results_1.position, results_1.rank, results_1.resultid, results_1.statusid
limit 11;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  drivers_1.dob, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where drivers_1.driverid is not NULL
limit 16;
select  
  results_1.statusid, 
  results_1.resultid, 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.positionorder, 
  results_1.points, 
  results_1.position, 
  results_1.statusid, 
  count(
    results_1.positionorder), 
  results_1.laps, 
  max(
    results_1.date), 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.points > results_1.rank
group by results_1.fastestlap, results_1.laps, results_1.points, results_1.position, results_1.positionorder, results_1.resultid, results_1.statusid
limit 3;
select  
  min(
    constructors_1.constructorid), 
  drivers_1.driverid, 
  drivers_1.dob, 
  constructors_1.name, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    inner join constructors as constructors_1
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.alt is not NULL
group by constructors_1.name, drivers_1.dob, drivers_1.driverid, races_1.raceid
limit 33;
select  
  constructor_standings_1.points, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
limit 1;
select  
  avg(
    races_1.circuitid), 
  max(
    races_1.date), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid = races_1.year
group by races_1.year
limit 30;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 8;
select  
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.constructorresultsid), 
  max(
    constructor_results_2.points), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points
limit 39;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 38;
select  
  results_1.date, 
  drivers_1.driverid, 
  results_1.constructorid, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_1
    on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
where drivers_1.code >= drivers_1.driverref
limit 5;
select  
  races_1.round, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 24;
select  
  qualifying_1.number, 
  drivers_1.surname, 
  drivers_1.forename, 
  qualifying_1.position, 
  drivers_1.code, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  drivers_1.dob, 
  drivers_1.dob, 
  avg(
    qualifying_1.constructorid), 
  drivers_1.driverref, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.surname, qualifying_1.constructorid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 18;
select  
  results_1.grid, 
  constructor_results_1.constructorid, 
  results_1.milliseconds, 
  races_1.year, 
  results_1.resultid, 
  races_1.name, 
  results_1.position, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.time < races_1.name
limit 17;
select  
  constructor_results_1.points, 
  min(
    constructor_results_1.constructorid), 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.points
limit 12;
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 14;
select  
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.constructorresultsid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points > standings_1.points
group by constructor_results_1.raceid
limit 5;
select  
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.constructorresultsid < constructor_results_1.raceid
limit 32;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_2.raceid, 
  constructor_results_2.constructorresultsid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_2.constructorresultsid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.raceid is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_2.constructorresultsid, constructor_results_2.raceid
limit 5;
select  
  constructor_results_1.points, 
  max(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.points
limit 29;
select  
  max(
    drivers_1.dob), 
  drivers_1.code, 
  count(
    drivers_1.code), 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
group by drivers_1.code, drivers_1.driverref
limit 23;
select distinct 
  results_1.laps, 
  results_1.points, 
  results_1.constructorid, 
  results_1.number, 
  results_1.laps, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
limit 28;
select  
  constructors_1.name, 
  circuits_1.alt, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (constructors_2.constructorid = circuits_1.circuitid )
where circuits_1.circuitid is not NULL
limit 2;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 17;
select  
  constructor_results_1.date, 
  count(
    qualifying_1.date), 
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  qualifying_1.driverid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, qualifying_1.driverid
limit 15;
select  
  qualifying_1.date, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 15;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  results_1.number, 
  constructor_results_1.constructorid, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (drivers_1.driverid = results_1.resultid )
where results_1.raceid is not NULL
limit 32;
select  
  results_1.date, 
  results_1.number, 
  results_1.date, 
  results_1.rank, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank is not NULL
limit 33;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  count(
    constructors_1.constructorref), 
  max(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.nationality
limit 28;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 37;
select  
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.circuitid, 
  circuits_1.location, 
  count(*), 
  max(
    circuits_1.lat), 
  circuits_1.alt, 
  min(
    circuits_1.circuitid), 
  max(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.location, circuits_1.name
limit 14;
select  
  drivers_1.driverid, 
  races_1.round, 
  races_1.raceid, 
  races_1.date, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.year <= races_1.circuitid
limit 1;
select  
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 25;
select  
  results_1.statusid, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date = results_1.date
limit 22;
select  
  avg(
    standings_1.driverstandingsid), 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.points
limit 32;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  constructors_2.constructorid, 
  drivers_1.driverid, 
  min(
    results_1.date), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  races_1.name, 
  sum(
    constructors_2.constructorid), 
  races_1.round, 
  drivers_1.driverref, 
  races_1.time, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join constructors as constructors_1
          inner join races as races_1
          on (constructors_1.constructorid = races_1.raceid )
        inner join races as races_2
            inner join constructor_standings as constructor_standings_1
            on (races_2.raceid = constructor_standings_1.constructorstandingsid )
          inner join drivers as drivers_1
            inner join constructors as constructors_2
            on (drivers_1.driverid = constructors_2.constructorid )
          on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
        on (constructors_1.constructorid = drivers_1.driverid )
      on (standings_1.driverstandingsid = races_1.raceid )
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (drivers_1.driverid = results_1.resultid )
where races_1.date > results_1.date
group by constructor_standings_1.constructorstandingsid, constructors_1.constructorid, constructors_1.nationality, constructors_2.constructorid, drivers_1.driverid, drivers_1.driverref, races_1.name, races_1.round, races_1.time, standings_1.driverstandingsid, standings_1.wins
limit 35;
select  
  races_1.raceid, 
  races_1.time, 
  races_1.circuitid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
limit 3;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 19;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  count(
    constructors_1.constructorref), 
  count(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  count(
    constructors_1.name), 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 18;
select  
  results_1.number, 
  constructor_standings_1.wins, 
  results_1.statusid, 
  results_1.constructorid, 
  constructor_standings_1.position, 
  results_1.number, 
  min(
    results_1.date), 
  constructors_1.name, 
  results_1.positionorder, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructors as constructors_1
      inner join constructor_standings as constructor_standings_1
      on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
    on (results_1.resultid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by constructor_standings_1.position, constructor_standings_1.wins, constructors_1.constructorref, constructors_1.name, results_1.constructorid, results_1.number, results_1.positionorder, results_1.statusid
limit 3;
select  
  constructor_standings_1.position, 
  results_1.driverid, 
  standings_1.date, 
  constructor_standings_2.raceid, 
  constructor_standings_2.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_2.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    inner join standings as standings_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_2
        on (results_1.resultid = constructor_standings_2.constructorstandingsid )
      on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
    on (constructors_1.constructorid = results_1.resultid )
where constructor_standings_2.raceid is not NULL
limit 5;
select  
  races_1.round, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.date < qualifying_1.date
limit 7;
select  
  races_1.time, 
  races_1.date, 
  races_1.year, 
  qualifying_1.raceid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where qualifying_1.constructorid is not NULL
limit 10;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.constructorid), 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.wins
limit 27;
select  
  constructors_1.nationality, 
  count(*), 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  count(
    constructors_1.name), 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.nationality
limit 37;
select  
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 13;
select  
  min(
    standings_1.position), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  avg(
    standings_1.points), 
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid
limit 13;
select  
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code > drivers_1.forename
limit 34;
select  
  qualifying_1.driverid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 16;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date = constructor_standings_1.date
limit 32;
select  
  results_1.laps, 
  results_1.points, 
  results_1.resultid, 
  min(
    results_1.date), 
  results_1.positionorder, 
  results_1.fastestlap, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.points is not NULL
group by results_1.fastestlap, results_1.laps, results_1.points, results_1.positionorder, results_1.raceid, results_1.resultid
limit 9;
select  
  drivers_1.forename, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 24;
select  
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 27;
select  
  max(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref <= drivers_1.nationality
group by drivers_1.code, drivers_1.forename, drivers_1.nationality
limit 41;
select  
  constructors_1.constructorref, 
  drivers_1.driverref, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 26;
select  
  count(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(*), 
  constructors_1.constructorref, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality, qualifying_1.driverid, qualifying_1.raceid
limit 36;
select  
  results_1.resultid, 
  min(
    results_1.date), 
  results_1.statusid, 
  results_1.position, 
  results_1.milliseconds, 
  max(
    results_1.grid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid <= results_1.laps
group by results_1.milliseconds, results_1.position, results_1.resultid, results_1.statusid
limit 42;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 12;
select  
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 36;
select  
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 23;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 20;
select  
  qualifying_1.date, 
  max(
    qualifying_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.date
limit 15;
select  
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.constructorid is not NULL
limit 40;
select  
  count(*), 
  results_1.rank, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.laps = qualifying_1.qualifyid
group by results_1.position, results_1.rank
limit 38;
select  
  results_1.raceid, 
  results_1.driverid, 
  results_1.date, 
  results_1.points, 
  results_1.statusid, 
  results_1.statusid, 
  results_1.grid, 
  min(
    results_1.rank)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps < results_1.grid
group by results_1.date, results_1.driverid, results_1.grid, results_1.points, results_1.raceid, results_1.statusid
limit 28;
select  
  qualifying_2.qualifyid, 
  qualifying_2.position, 
  max(
    qualifying_2.date), 
  qualifying_2.number, 
  qualifying_2.date, 
  qualifying_1.constructorid, 
  max(
    qualifying_2.date), 
  qualifying_2.driverid, 
  qualifying_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_2.date, qualifying_2.driverid, qualifying_2.number, qualifying_2.position, qualifying_2.qualifyid
limit 7;
select  
  qualifying_1.position, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 40;
select  
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 5;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 28;
select  
  drivers_1.driverref, 
  standings_1.raceid, 
  max(
    standings_1.wins), 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (standings_1.driverstandingsid = drivers_1.driverid )
where races_1.date is not NULL
group by drivers_1.driverref, races_1.name, standings_1.raceid
limit 6;
select  
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 26;
select  
  max(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
        inner join results as results_1
        on (drivers_1.driverid = results_1.resultid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join results as results_2
    on (drivers_1.driverid = results_2.resultid )
where results_1.date is not NULL
limit 34;
select  
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
limit 15;
select  
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 40;
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.date, constructor_standings_1.wins
limit 2;
select  
  sum(
    results_1.number), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join standings as standings_1
      on (results_1.resultid = standings_1.driverstandingsid )
    inner join constructors as constructors_1
      inner join constructor_results as constructor_results_1
        inner join constructor_results as constructor_results_2
        on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
      on (constructors_1.constructorid = constructor_results_2.constructorresultsid )
    on (results_1.resultid = constructors_1.constructorid )
where constructor_results_1.date is not NULL
group by constructor_results_1.points
limit 32;
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.wins, 
  max(
    standings_1.position), 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.wins
limit 2;
select  
  drivers_1.forename, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 26;
select  
  qualifying_1.raceid, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.dob is not NULL
limit 3;
select  
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
limit 22;
select  
  constructors_1.nationality, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructor_results_1.date >= constructor_results_1.date
limit 42;
select  
  results_1.laps, 
  results_2.constructorid, 
  results_1.date, 
  results_2.statusid, 
  results_1.number, 
  results_1.position, 
  results_2.positionorder, 
  results_1.raceid, 
  results_2.statusid, 
  sum(
    results_2.milliseconds), 
  results_1.fastestlap, 
  results_2.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.resultid is not NULL
group by results_1.date, results_1.fastestlap, results_1.laps, results_1.number, results_1.position, results_1.raceid, results_2.constructorid, results_2.milliseconds, results_2.positionorder, results_2.statusid
limit 35;
select  
  count(*), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 37;
select  
  sum(
    results_1.number), 
  max(
    results_1.fastestlap), 
  results_1.position, 
  max(
    drivers_1.dob), 
  circuits_1.name, 
  results_1.rank, 
  circuits_1.location, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where drivers_1.dob < results_1.date
group by circuits_1.circuitref, circuits_1.location, circuits_1.name, results_1.position, results_1.rank
limit 3;
select  
  results_1.statusid, 
  max(
    results_1.date), 
  results_1.milliseconds, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.milliseconds is not NULL
group by results_1.fastestlap, results_1.milliseconds, results_1.statusid
limit 20;
select  
  results_1.rank, 
  results_1.grid, 
  results_1.grid, 
  results_1.positionorder, 
  min(
    results_1.date), 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date >= results_1.date
group by results_1.grid, results_1.laps, results_1.positionorder, results_1.rank
limit 3;
select  
  max(
    constructor_results_1.raceid), 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.date
limit 9;
select  
  results_1.date, 
  results_1.statusid, 
  results_1.driverid, 
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date = results_1.date
limit 19;
select  
  constructor_results_1.raceid, 
  constructor_results_2.date, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join qualifying as qualifying_1
      on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
    inner join constructor_results as constructor_results_2
    on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
where qualifying_1.date < constructor_results_1.date
limit 27;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 36;
select distinct 
  results_1.points, 
  results_1.laps, 
  results_1.grid, 
  results_1.driverid, 
  results_1.driverid, 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
limit 22;
select  
  standings_1.points, 
  results_1.milliseconds, 
  min(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
          inner join constructor_results as constructor_results_1
          on (results_1.resultid = constructor_results_1.constructorresultsid )
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join results as results_2
        inner join standings as standings_1
        on (results_2.resultid = standings_1.driverstandingsid )
      on (qualifying_1.qualifyid = standings_1.driverstandingsid )
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.time is not NULL
group by results_1.milliseconds, standings_1.points
limit 29;
select  
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 38;
select  
  count(*), 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.points
limit 7;
select  
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
limit 32;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 28;
select  
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 39;
select  
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.date < races_1.date
limit 23;
select  
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 29;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  sum(
    qualifying_1.position), 
  sum(
    qualifying_1.constructorid), 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 18;
select  
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid >= qualifying_1.number
group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.raceid
limit 4;
select  
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 35;
select  
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 12;
select  
  max(
    standings_1.driverstandingsid), 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid >= standings_1.driverstandingsid
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid
limit 38;
select  
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join constructors as constructors_1
        on (drivers_1.driverid = constructors_1.constructorid )
      inner join drivers as drivers_2
      on (constructors_1.constructorid = drivers_2.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.dob = qualifying_1.date
limit 16;
select  
  results_1.position, 
  results_1.raceid, 
  results_1.rank, 
  avg(
    results_1.resultid), 
  results_1.number, 
  results_1.resultid, 
  results_1.positionorder, 
  max(
    results_1.date), 
  results_1.laps, 
  results_1.points, 
  results_1.points, 
  results_1.points, 
  results_1.points, 
  results_1.raceid, 
  min(
    results_1.date), 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.raceid, 
  results_1.fastestlap, 
  results_1.grid, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank < results_1.position
group by results_1.fastestlap, results_1.grid, results_1.laps, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.rank, results_1.resultid
limit 2;
select  
  avg(
    circuits_1.alt), 
  count(*), 
  qualifying_1.driverid, 
  qualifying_2.raceid, 
  min(
    qualifying_1.constructorid), 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join qualifying as qualifying_1
      on (circuits_1.circuitid = qualifying_1.qualifyid )
    inner join standings as standings_1
        inner join constructors as constructors_1
        on (standings_1.driverstandingsid = constructors_1.constructorid )
      inner join qualifying as qualifying_2
        inner join drivers as drivers_1
        on (qualifying_2.qualifyid = drivers_1.driverid )
      on (standings_1.driverstandingsid = drivers_1.driverid )
    on (circuits_1.circuitid = drivers_1.driverid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, qualifying_1.driverid, qualifying_2.raceid
limit 22;
select  
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 16;
select  
  drivers_3.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join drivers as drivers_3
    on (drivers_2.driverid = drivers_3.driverid )
where drivers_1.nationality is not NULL
limit 20;
select  
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  min(
    standings_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.wins
limit 34;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join constructors as constructors_1
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where standings_1.wins is not NULL
limit 34;
select  
  results_1.rank, 
  constructors_1.constructorref, 
  constructor_standings_1.constructorid, 
  results_1.statusid, 
  min(
    circuits_1.circuitid), 
  circuits_1.circuitid, 
  constructor_standings_1.date, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  avg(
    constructor_standings_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
          inner join results as results_1
          on (circuits_1.circuitid = results_1.resultid )
        inner join constructors as constructors_1
          inner join constructors as constructors_2
          on (constructors_1.constructorid = constructors_2.constructorid )
        on (results_1.resultid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_1
      on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where circuits_1.country is not NULL
group by circuits_1.circuitid, constructor_standings_1.constructorid, constructor_standings_1.date, constructors_1.constructorref, constructors_1.nationality, results_1.rank, results_1.statusid
limit 30;
select  
  max(
    standings_1.points), 
  races_1.year, 
  standings_1.position, 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.raceid, 
  races_1.name, 
  standings_1.points, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.time > races_1.name
group by races_1.name, races_1.year, standings_1.date, standings_1.points, standings_1.position, standings_1.raceid
limit 13;
select  
  constructor_standings_1.raceid, 
  min(
    constructor_standings_1.position), 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid
limit 9;
select  
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.points >= standings_1.points
limit 9;
select  
  results_1.resultid, 
  results_1.driverid, 
  results_1.raceid, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
limit 7;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 35;
select  
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.raceid), 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  constructor_standings_1.points, 
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid <= constructor_standings_1.wins
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 40;
select  
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 4;
select  
  races_1.date, 
  circuits_1.circuitref, 
  circuits_1.name, 
  avg(
    races_1.year), 
  circuits_1.circuitref, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.date <= races_1.date
group by circuits_1.circuitref, circuits_1.name, races_1.circuitid, races_1.date
limit 20;
select  
  constructor_standings_2.date, 
  max(
    constructor_standings_2.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
where drivers_1.nationality is not NULL
group by constructor_standings_2.date
limit 9;
select  
  drivers_1.dob, 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref < drivers_1.surname
group by drivers_1.code, drivers_1.dob, drivers_1.driverid
limit 14;
select  
  standings_2.raceid, 
  min(
    standings_1.date), 
  count(*), 
  constructors_1.constructorid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
          inner join races as races_1
          on (results_1.resultid = races_1.raceid )
        inner join standings as standings_1
        on (results_1.resultid = standings_1.driverstandingsid )
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    inner join standings as standings_2
    on (constructors_1.constructorid = standings_2.driverstandingsid )
where results_1.number is not NULL
group by constructors_1.constructorid, standings_1.raceid, standings_2.raceid
limit 4;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 35;
select  
  races_1.time, 
  races_1.date, 
  races_1.raceid, 
  races_1.round, 
  races_1.name, 
  races_1.raceid, 
  races_1.name, 
  races_1.name, 
  min(
    races_1.date), 
  races_1.name, 
  races_1.raceid, 
  races_1.time, 
  max(
    races_1.date), 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time
limit 35;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 38;
select  
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid < qualifying_1.number
group by qualifying_1.constructorid, qualifying_1.raceid
limit 14;
select  
  results_2.constructorid, 
  constructors_1.constructorref, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.surname, 
  qualifying_1.date, 
  results_1.milliseconds, 
  results_1.driverid, 
  drivers_1.driverid, 
  count(*), 
  constructors_1.name, 
  min(
    results_2.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join qualifying as qualifying_1
      inner join results as results_2
      on (qualifying_1.qualifyid = results_2.resultid )
    on (constructors_1.constructorid = results_2.resultid )
where drivers_1.nationality = constructors_1.nationality
group by constructors_1.constructorref, constructors_1.name, drivers_1.dob, drivers_1.driverid, drivers_1.surname, qualifying_1.date, results_1.driverid, results_1.milliseconds, results_2.constructorid
limit 32;
select  
  results_1.constructorid, 
  results_1.date, 
  results_1.fastestlap, 
  results_1.number, 
  max(
    results_1.constructorid), 
  results_1.number, 
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder >= results_1.resultid
group by results_1.constructorid, results_1.date, results_1.fastestlap, results_1.number, results_1.positionorder
limit 30;
select  
  constructors_1.constructorref, 
  avg(
    races_1.raceid), 
  results_1.laps, 
  races_1.time, 
  races_1.name, 
  max(
    results_1.points), 
  results_1.milliseconds, 
  min(
    races_1.date), 
  constructors_1.name, 
  constructors_1.constructorref, 
  count(
    results_1.laps), 
  races_1.name, 
  avg(
    results_1.resultid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
      inner join races as races_1
      on (results_1.resultid = races_1.raceid )
    on (constructors_1.constructorid = results_1.resultid )
where results_1.rank <= results_1.milliseconds
group by constructors_1.constructorref, constructors_1.name, races_1.name, races_1.time, results_1.laps, results_1.milliseconds
limit 20;
select  
  max(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 15;
select  
  constructors_1.nationality, 
  constructors_2.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructors_2.nationality is not NULL
limit 31;
select  
  qualifying_1.driverid, 
  races_1.date, 
  constructor_standings_1.constructorstandingsid, 
  max(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join qualifying as qualifying_1
      on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_1.date = constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, qualifying_1.driverid, races_1.date
limit 27;
select  
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 38;
select  
  sum(
    circuits_1.lat), 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.alt, 
  avg(
    circuits_1.lng), 
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.name
limit 7;
select  
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname = drivers_1.driverref
limit 21;
select  
  min(
    drivers_1.dob), 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname >= drivers_1.forename
group by drivers_1.driverid
limit 7;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 38;
select  
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 12;
select  
  circuits_1.circuitref, 
  min(
    circuits_1.alt), 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.circuitref, circuits_1.lat
limit 28;
select  
  races_1.raceid, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name is not NULL
limit 12;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  results_1.position, 
  constructors_1.nationality, 
  results_1.position, 
  results_1.rank, 
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorref is not NULL
limit 41;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid > constructor_standings_1.raceid
limit 13;
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename < drivers_1.code
limit 3;
select  
  max(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join results as results_1
      on (qualifying_1.qualifyid = results_1.resultid )
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where results_1.points > results_1.fastestlap
group by standings_1.driverstandingsid, standings_1.raceid
limit 9;
select  
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.circuitid, 
  sum(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country > circuits_1.name
group by circuits_1.alt, circuits_1.circuitid, circuits_1.location
limit 12;
select  
  standings_1.driverstandingsid, 
  max(
    standings_1.points), 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.driverstandingsid, standings_1.position
limit 20;
select  
  races_1.year, 
  races_1.round, 
  min(
    races_1.date), 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  races_1.circuitid, 
  races_1.year, 
  races_1.name, 
  races_1.name, 
  races_1.round, 
  races_1.year, 
  races_1.time, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time > races_1.name
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time, races_1.year
limit 1;
select  
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.position, 
  min(
    qualifying_1.number), 
  avg(
    qualifying_1.position), 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 37;
select  
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 12;
select  
  avg(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 11;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  results_1.raceid, 
  constructors_1.nationality, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorid is not NULL
limit 32;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 15;
select  
  min(
    qualifying_1.date), 
  constructors_1.constructorid, 
  qualifying_1.date, 
  min(
    qualifying_1.date), 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where constructors_1.nationality >= constructors_1.name
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality, qualifying_1.date
limit 7;
select  
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  max(
    circuits_1.lng), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lng
limit 41;
select  
  constructors_2.nationality, 
  constructors_1.constructorid, 
  standings_1.position, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
        inner join constructors as constructors_2
        on (qualifying_1.qualifyid = constructors_2.constructorid )
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join circuits as circuits_1
        inner join constructors as constructors_3
        on (circuits_1.circuitid = constructors_3.constructorid )
      inner join standings as standings_1
        inner join constructors as constructors_4
        on (standings_1.driverstandingsid = constructors_4.constructorid )
      on (constructors_3.constructorid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where standings_1.date > qualifying_1.date
limit 17;
select  
  standings_1.raceid, 
  max(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.driverid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by constructors_1.name, standings_1.driverid, standings_1.raceid
limit 30;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid), 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  count(
    constructors_1.name), 
  count(*), 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 20;
select  
  min(
    standings_1.date), 
  avg(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 28;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points > constructor_results_1.points
limit 17;
select  
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  results_1.driverid, 
  qualifying_1.position, 
  avg(
    results_1.milliseconds), 
  constructor_results_1.raceid, 
  results_1.driverid, 
  circuits_1.lat, 
  constructors_1.constructorref, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  avg(
    results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
          inner join constructors as constructors_1
          on (qualifying_1.qualifyid = constructors_1.constructorid )
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructor_results_1.points is not NULL
group by circuits_1.lat, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructors_1.constructorref, qualifying_1.position, results_1.driverid
limit 5;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 14;
select  
  standings_1.date, 
  sum(
    qualifying_1.qualifyid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
        inner join qualifying as qualifying_1
        on (results_1.resultid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
        inner join circuits as circuits_1
        on (qualifying_2.qualifyid = circuits_1.circuitid )
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = qualifying_2.qualifyid )
where circuits_1.lat is not NULL
group by standings_1.date
limit 40;
select  
  races_1.raceid, 
  races_1.year, 
  races_1.year, 
  min(
    races_1.date), 
  min(
    races_1.year), 
  races_1.date, 
  races_1.time, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
group by races_1.date, races_1.raceid, races_1.time, races_1.year
limit 3;
select  
  results_1.points, 
  circuits_1.lat, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where circuits_1.name is not NULL
limit 5;
select  
  races_1.time, 
  races_1.year, 
  races_1.name, 
  standings_1.raceid, 
  races_1.year, 
  races_1.time, 
  races_1.round, 
  standings_1.points, 
  races_1.round, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.driverid is not NULL
limit 19;
select  
  max(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.date, 
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.number), 
  qualifying_1.date, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date > qualifying_1.date
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid
limit 40;
select  
  circuits_1.alt, 
  circuits_1.name, 
  max(
    circuits_1.circuitid), 
  circuits_1.location, 
  circuits_1.location, 
  sum(
    circuits_1.circuitid), 
  circuits_1.country, 
  count(
    circuits_1.circuitid), 
  circuits_1.location, 
  count(
    circuits_1.circuitid), 
  circuits_1.country, 
  circuits_1.circuitid, 
  max(
    circuits_1.lng), 
  count(
    circuits_1.alt), 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.location, circuits_1.name
limit 28;
select  
  qualifying_1.position, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where qualifying_1.number <= races_1.round
limit 8;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 13;
select  
  races_1.name, 
  drivers_1.nationality, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where drivers_1.code is not NULL
limit 24;
select  
  drivers_1.code, 
  min(
    drivers_1.driverid), 
  count(
    drivers_1.driverref), 
  drivers_1.surname, 
  max(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.driverid, 
  max(
    drivers_1.dob), 
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.forename, 
  min(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 26;
select  
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.date, 
  max(
    races_1.raceid), 
  races_1.circuitid, 
  races_1.year, 
  min(
    races_1.raceid), 
  races_1.time, 
  races_1.name, 
  races_1.name, 
  avg(
    races_1.round), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time < races_1.name
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 7;
select  
  standings_1.points, 
  results_1.positionorder, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.wins, 
  results_1.date, 
  results_1.positionorder, 
  max(
    results_1.driverid), 
  max(
    results_1.date), 
  standings_1.position, 
  results_1.points, 
  standings_1.driverid, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.points is not NULL
group by results_1.date, results_1.points, results_1.positionorder, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 39;
select  
  standings_2.points, 
  circuits_1.circuitref, 
  circuits_2.circuitid, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_2.name, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join standings as standings_2
      inner join circuits as circuits_1
        inner join circuits as circuits_2
        on (circuits_1.circuitid = circuits_2.circuitid )
      on (standings_2.driverstandingsid = circuits_2.circuitid )
    on (standings_1.driverstandingsid = circuits_2.circuitid )
where circuits_2.alt is not NULL
limit 4;
select  
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.dob >= results_1.date
limit 24;
select  
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 20;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  sum(
    circuits_1.alt), 
  circuits_1.location, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 9;
select  
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 42;
select  
  sum(
    results_1.fastestlap), 
  results_1.grid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    inner join standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (results_1.resultid = standings_1.driverstandingsid )
where standings_1.raceid > results_1.resultid
group by results_1.grid, standings_1.raceid
limit 8;
select  
  count(*), 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid > drivers_1.driverid
group by drivers_1.driverid
limit 32;
select  
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.time, 
  races_1.raceid, 
  races_1.time, 
  races_1.circuitid, 
  races_1.date, 
  races_1.date, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round >= races_1.raceid
limit 32;
select  
  races_1.year, 
  races_1.raceid, 
  races_1.round, 
  max(
    races_1.date), 
  races_1.date, 
  races_1.round, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid > races_1.round
group by races_1.date, races_1.raceid, races_1.round, races_1.year
limit 42;
select  
  drivers_1.nationality, 
  min(
    races_1.circuitid), 
  circuits_1.country, 
  circuits_1.circuitref, 
  drivers_1.forename, 
  circuits_1.location, 
  races_1.time, 
  circuits_1.circuitref, 
  drivers_1.forename, 
  races_1.name, 
  drivers_1.forename, 
  races_1.circuitid, 
  circuits_1.country, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.name < races_1.name
group by circuits_1.circuitref, circuits_1.country, circuits_1.location, drivers_1.forename, drivers_1.nationality, races_1.circuitid, races_1.name, races_1.time
limit 32;
select  
  results_1.milliseconds, 
  results_1.fastestlap, 
  avg(
    results_1.rank), 
  results_1.position, 
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number is not NULL
group by results_1.fastestlap, results_1.milliseconds, results_1.position, results_1.positionorder
limit 22;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  count(
    constructors_1.nationality), 
  constructors_1.constructorref, 
  count(*), 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 18;
select  
  results_1.raceid, 
  results_1.laps, 
  drivers_1.driverid, 
  results_1.driverid, 
  drivers_1.driverref, 
  results_1.positionorder, 
  qualifying_1.position, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join qualifying as qualifying_1
    on (results_1.resultid = qualifying_1.qualifyid )
where results_1.number is not NULL
limit 22;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid
limit 2;
select  
  qualifying_1.qualifyid, 
  count(*), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date < qualifying_1.date
group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid
limit 11;
select  
  drivers_1.nationality, 
  drivers_2.driverref, 
  drivers_2.nationality, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.driverref is not NULL
limit 34;
select  
  results_1.constructorid, 
  qualifying_2.constructorid, 
  qualifying_2.number, 
  qualifying_2.raceid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  results_1.driverid, 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      inner join qualifying as qualifying_2
      on (constructors_1.constructorid = qualifying_2.qualifyid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where constructors_1.constructorid is not NULL
limit 17;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 36;
select  
  races_1.circuitid, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.raceid is not NULL
limit 20;
select  
  constructors_2.constructorid, 
  constructors_1.constructorref, 
  constructors_2.nationality, 
  constructors_2.constructorid, 
  avg(
    results_1.statusid), 
  constructors_2.nationality, 
  constructors_1.name, 
  count(
    results_1.grid), 
  constructors_2.nationality, 
  min(
    results_1.date), 
  results_1.raceid, 
  count(
    results_1.raceid), 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructors as constructors_2
      inner join results as results_1
      on (constructors_2.constructorid = results_1.resultid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where results_1.date < results_1.date
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_2.constructorid, constructors_2.nationality, results_1.raceid
limit 25;
select  
  constructors_1.constructorid, 
  constructors_2.name, 
  sum(
    constructors_1.constructorid), 
  circuits_1.circuitref, 
  constructors_2.nationality, 
  constructors_2.name, 
  constructors_1.constructorref, 
  sum(
    circuits_1.circuitid), 
  constructors_2.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructors as constructors_1
      on (circuits_1.circuitid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (circuits_1.circuitid = constructors_2.constructorid )
where constructors_2.constructorref >= circuits_1.circuitref
group by circuits_1.circuitref, constructors_1.constructorid, constructors_1.constructorref, constructors_2.name, constructors_2.nationality
limit 4;
select  
  count(*), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  sum(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.date), 
  races_1.raceid, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, races_1.raceid
limit 32;
select  
  races_1.round, 
  races_1.round, 
  races_1.name, 
  max(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
group by races_1.name, races_1.round
limit 19;
select  
  circuits_1.lng, 
  standings_1.driverstandingsid, 
  circuits_1.alt, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_2.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join standings as standings_2
      inner join circuits as circuits_1
      on (standings_2.driverstandingsid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_1.driverstandingsid is not NULL
limit 33;
select  
  results_1.fastestlap, 
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.position is not NULL
limit 23;
select  
  standings_1.date, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
limit 29;
select  
  circuits_1.location, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.circuitid is not NULL
limit 8;
select  
  drivers_2.driverref, 
  constructors_1.name, 
  qualifying_1.qualifyid, 
  max(
    standings_1.date), 
  drivers_2.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
        inner join drivers as drivers_1
        on (standings_1.driverstandingsid = drivers_1.driverid )
      inner join constructors as constructors_1
        inner join qualifying as qualifying_1
        on (constructors_1.constructorid = qualifying_1.qualifyid )
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.nationality is not NULL
group by constructors_1.name, drivers_2.dob, drivers_2.driverref, qualifying_1.qualifyid
limit 11;
select  
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 40;
select  
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
limit 34;
select  
  min(
    circuits_1.lat), 
  qualifying_1.position, 
  circuits_1.alt, 
  qualifying_1.position, 
  qualifying_1.position, 
  circuits_1.location, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  sum(
    qualifying_1.number), 
  max(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
group by circuits_1.alt, circuits_1.location, qualifying_1.position, qualifying_1.qualifyid
limit 29;
select  
  count(*), 
  drivers_1.nationality, 
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.nationality
limit 20;
select  
  avg(
    circuits_1.lat), 
  circuits_1.name, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.lng, 
  min(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.circuitref, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 7;
select  
  drivers_1.code, 
  qualifying_1.constructorid, 
  constructor_results_1.date, 
  drivers_1.surname, 
  drivers_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.position, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.points > constructor_results_1.points
limit 18;
select  
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.constructorid), 
  min(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.raceid
limit 9;
select  
  results_1.rank, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.raceid is not NULL
limit 7;
select  
  avg(
    constructor_results_1.constructorid), 
  sum(
    constructor_results_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 30;
select  
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.date, qualifying_1.position
limit 34;
select  
  constructors_1.nationality, 
  max(
    results_1.milliseconds), 
  races_1.date, 
  constructors_1.constructorid, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join races as races_1
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    on (constructors_1.constructorid = races_1.raceid )
where results_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.nationality, races_1.date, races_1.raceid
limit 24;
select  
  drivers_1.code, 
  drivers_1.forename, 
  sum(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.forename
limit 31;
select  
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 17;
select  
  qualifying_2.driverid, 
  count(
    qualifying_2.date), 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.raceid is not NULL
group by qualifying_1.date, qualifying_2.driverid
limit 29;
select  
  max(
    standings_1.date), 
  max(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.points < standings_1.points
limit 2;
select  
  standings_1.raceid, 
  races_1.raceid, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.time is not NULL
limit 10;
select  
  circuits_1.location, 
  circuits_1.alt, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.time, 
  circuits_1.circuitid, 
  circuits_1.country, 
  races_1.year, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.circuitid < races_1.circuitid
limit 21;
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins < constructor_standings_1.constructorstandingsid
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 32;
select  
  races_1.name, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
limit 40;
select  
  circuits_1.lng, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid >= circuits_1.circuitid
limit 11;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 8;
select  
  qualifying_1.position, 
  standings_1.driverstandingsid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.driverid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  qualifying_1.date, 
  standings_1.points, 
  standings_1.date, 
  avg(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points < standings_1.points
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid, standings_1.date, standings_1.driverstandingsid, standings_1.points
limit 39;
select  
  constructor_standings_1.points, 
  min(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.position, 
  max(
    standings_1.date), 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.points, standings_1.position, standings_1.raceid
limit 31;
select  
  min(
    races_1.circuitid), 
  races_1.round, 
  races_1.round, 
  races_1.time, 
  races_1.time, 
  races_1.time, 
  races_1.circuitid, 
  races_1.raceid, 
  max(
    races_1.round)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name is not NULL
group by races_1.circuitid, races_1.raceid, races_1.round, races_1.time
limit 5;
select  
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  avg(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.surname, 
  sum(
    drivers_1.driverid), 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  min(
    drivers_1.driverid), 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 14;
select  
  constructor_standings_1.raceid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
limit 28;
select  
  sum(
    races_1.year)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid < races_1.year
limit 15;
select  
  constructor_results_1.points, 
  races_1.time, 
  races_1.round, 
  results_1.grid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  races_1.raceid, 
  constructor_results_1.constructorid, 
  min(
    results_1.number)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (races_1.raceid = results_1.resultid )
where races_1.time is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, races_1.raceid, races_1.round, races_1.time, results_1.grid
limit 22;
select  
  results_2.constructorid, 
  results_2.fastestlap, 
  results_2.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.number is not NULL
limit 4;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.constructorid is not NULL
limit 22;
select  
  constructor_standings_1.date, 
  min(
    constructor_standings_2.wins), 
  constructors_1.constructorref, 
  constructors_2.constructorref, 
  constructors_2.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
      inner join constructors as constructors_2
      on (constructor_standings_2.constructorstandingsid = constructors_2.constructorid )
    on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
where constructors_1.constructorref is not NULL
group by constructor_standings_1.date, constructors_1.constructorref, constructors_2.constructorid, constructors_2.constructorref
limit 33;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  count(
    constructors_1.constructorref), 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.nationality
limit 25;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructors as constructors_1
    on (circuits_1.circuitid = constructors_1.constructorid )
where circuits_1.location > constructors_1.nationality
limit 8;
select  
  count(*), 
  max(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position < qualifying_1.constructorid
limit 10;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 4;
select  
  constructors_1.nationality, 
  count(*), 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.nationality
limit 17;
select  
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 33;
select  
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.surname
limit 9;
select  
  results_1.milliseconds, 
  results_1.resultid, 
  results_1.grid, 
  results_1.grid, 
  results_1.statusid, 
  min(
    results_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number is not NULL
group by results_1.grid, results_1.milliseconds, results_1.resultid, results_1.statusid
limit 3;
select  
  results_1.fastestlap, 
  min(
    results_1.date), 
  results_1.number, 
  results_1.milliseconds, 
  count(
    results_1.resultid), 
  results_1.points, 
  results_1.milliseconds, 
  results_1.rank, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.fastestlap, results_1.milliseconds, results_1.number, results_1.points, results_1.rank
limit 6;
select  
  races_2.round, 
  drivers_1.dob, 
  drivers_1.nationality, 
  max(
    races_1.year)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    inner join races as races_2
    on (standings_1.driverstandingsid = races_2.raceid )
where standings_1.wins is not NULL
group by drivers_1.dob, drivers_1.nationality, races_2.round
limit 4;
select  
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 19;
select  
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  results_1.milliseconds, 
  results_2.driverid, 
  results_2.laps, 
  avg(
    results_2.rank), 
  drivers_1.driverref, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    on (drivers_1.driverid = results_1.resultid )
where results_2.date is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, results_1.milliseconds, results_2.driverid, results_2.laps
limit 16;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 35;
select  
  max(
    results_1.number), 
  min(
    results_1.date), 
  results_1.statusid, 
  results_1.rank, 
  results_1.constructorid, 
  results_1.constructorid, 
  results_1.laps, 
  results_1.raceid, 
  results_1.resultid, 
  results_1.positionorder, 
  results_1.points, 
  results_1.resultid, 
  results_1.position, 
  results_1.resultid, 
  results_1.points, 
  results_1.number, 
  results_1.statusid, 
  results_1.number, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.constructorid > results_1.laps
group by results_1.constructorid, results_1.date, results_1.laps, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.rank, results_1.resultid, results_1.statusid
limit 5;
select  
  constructor_standings_2.constructorid, 
  constructor_standings_2.position, 
  constructor_standings_2.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_2.raceid, 
  constructor_standings_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.points is not NULL
limit 28;
select  
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.constructorid
limit 23;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 40;
select  
  circuits_1.name, 
  circuits_1.country, 
  results_1.constructorid, 
  results_1.grid, 
  results_1.positionorder, 
  circuits_1.alt, 
  min(
    results_1.date), 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_1.name, results_1.constructorid, results_1.grid, results_1.positionorder
limit 16;
select  
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  count(*), 
  count(
    drivers_1.nationality), 
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 34;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 30;
select  
  max(
    qualifying_1.position), 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid, qualifying_1.qualifyid, qualifying_1.raceid
limit 9;
select  
  constructors_1.constructorref, 
  max(
    standings_1.date), 
  races_1.time, 
  standings_1.raceid, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructors as constructors_1
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (races_1.raceid = constructors_1.constructorid )
where standings_1.date is not NULL
group by constructors_1.constructorref, races_1.time, standings_1.position, standings_1.raceid
limit 28;
select  
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.nationality is not NULL
limit 36;
select  
  results_1.laps, 
  results_1.number, 
  results_1.raceid, 
  results_1.raceid, 
  results_1.laps, 
  results_1.positionorder, 
  results_1.points, 
  results_1.resultid, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap is not NULL
limit 8;
select  
  races_1.year, 
  races_1.time, 
  races_1.date, 
  avg(
    races_1.round), 
  races_1.time, 
  races_1.date, 
  races_1.year, 
  races_1.year, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.date, races_1.time, races_1.year
limit 40;
select  
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date = races_1.date
limit 26;
select  
  standings_1.date, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.points is not NULL
limit 12;
select  
  standings_1.raceid, 
  sum(
    standings_1.position), 
  count(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points <= standings_1.points
group by standings_1.raceid
limit 7;
select  
  results_1.points, 
  max(
    results_1.date), 
  results_1.laps, 
  circuits_1.lat, 
  results_1.number, 
  results_1.date, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.circuitid is not NULL
group by circuits_1.circuitid, circuits_1.lat, results_1.date, results_1.laps, results_1.number, results_1.points
limit 29;
select  
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.circuitref = circuits_1.name
limit 3;
select  
  avg(
    standings_1.position), 
  standings_1.driverstandingsid, 
  count(*), 
  standings_1.driverstandingsid, 
  max(
    standings_1.date), 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.driverid, standings_1.driverstandingsid
limit 2;
select  
  max(
    constructors_1.constructorid), 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name
limit 39;
select  
  drivers_1.forename, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 19;
select  
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructors_1.constructorref is not NULL
limit 37;
select  
  circuits_1.location, 
  circuits_1.location, 
  circuits_1.country, 
  max(
    circuits_1.circuitid), 
  count(
    circuits_1.lng), 
  circuits_1.country, 
  min(
    circuits_1.circuitid), 
  count(*), 
  circuits_1.lat, 
  sum(
    circuits_1.alt), 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref <= circuits_1.location
group by circuits_1.country, circuits_1.lat, circuits_1.location
limit 31;
select  
  circuits_1.lat, 
  max(
    circuits_1.alt), 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country < circuits_1.location
group by circuits_1.lat, circuits_1.name
limit 19;
select  
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 33;
select  
  results_2.statusid, 
  results_2.rank, 
  results_2.driverid, 
  max(
    results_2.positionorder), 
  results_1.fastestlap, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.number is not NULL
group by results_1.fastestlap, results_1.position, results_2.driverid, results_2.rank, results_2.statusid
limit 1;
select  
  standings_1.date, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
        inner join constructors as constructors_2
          inner join standings as standings_1
          on (constructors_2.constructorid = standings_1.driverstandingsid )
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where qualifying_1.constructorid is not NULL
limit 25;
select  
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.qualifyid, qualifying_1.raceid
limit 28;
select  
  avg(
    circuits_1.lng), 
  circuits_1.name, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.name
limit 33;
select  
  constructor_results_1.raceid, 
  count(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.raceid
limit 3;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 27;
select  
  results_1.position, 
  results_1.positionorder, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap is not NULL
limit 36;
select  
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points
limit 41;
select  
  min(
    results_1.fastestlap)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
limit 2;
select  
  min(
    constructors_1.constructorid), 
  constructors_1.name, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 21;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 36;
select  
  races_1.name, 
  races_1.circuitid, 
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.time, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.round, 
  races_1.raceid, 
  races_1.raceid, 
  max(
    races_1.date), 
  races_1.year, 
  races_1.raceid, 
  races_1.date, 
  races_1.name, 
  races_1.raceid, 
  max(
    races_1.raceid), 
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.year, 
  count(*), 
  races_1.time, 
  races_1.time, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.round, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 4;
select  
  constructors_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 12;
select  
  races_1.raceid, 
  races_1.date, 
  standings_1.driverstandingsid, 
  sum(
    standings_1.points), 
  races_1.round, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.raceid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.raceid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 19;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 41;
select  
  races_1.raceid, 
  constructor_standings_1.position, 
  races_1.date, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_1.date >= constructor_standings_1.date
limit 13;
select  
  constructors_1.nationality, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 15;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.name, 
  min(
    constructors_1.constructorid), 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 33;
select  
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 42;
select  
  max(
    standings_1.date), 
  circuits_1.name, 
  standings_1.position, 
  constructors_1.constructorref, 
  max(
    circuits_2.lng), 
  standings_1.driverid, 
  circuits_2.lat, 
  circuits_1.circuitref, 
  standings_3.wins, 
  standings_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join standings as standings_2
          inner join circuits as circuits_1
          on (standings_2.driverstandingsid = circuits_1.circuitid )
        inner join constructors as constructors_1
          inner join standings as standings_3
          on (constructors_1.constructorid = standings_3.driverstandingsid )
        on (circuits_1.circuitid = constructors_1.constructorid )
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    inner join circuits as circuits_2
    on (standings_1.driverstandingsid = circuits_2.circuitid )
where constructors_1.nationality is not NULL
group by circuits_1.circuitref, circuits_1.name, circuits_2.lat, constructors_1.constructorref, standings_1.driverid, standings_1.position, standings_2.position, standings_3.wins
limit 8;
select  
  qualifying_2.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join races as races_1
    on (qualifying_2.qualifyid = races_1.raceid )
where qualifying_2.date is not NULL
limit 7;
select  
  results_1.resultid, 
  results_1.date, 
  drivers_1.code, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      on (results_1.resultid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where circuits_1.circuitid is not NULL
limit 31;
select  
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 7;
select  
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid > standings_1.raceid
limit 35;
select  
  races_1.raceid, 
  min(
    races_1.date), 
  constructor_standings_1.constructorid, 
  count(
    constructor_standings_1.constructorstandingsid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.round is not NULL
group by constructor_standings_1.constructorid, races_1.raceid
limit 38;
select  
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  max(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.date, constructor_standings_1.position
limit 13;
select  
  results_1.constructorid, 
  results_1.points, 
  results_1.number, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
limit 5;
select  
  standings_1.driverid, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 10;
select  
  qualifying_1.raceid, 
  constructor_results_1.constructorid, 
  qualifying_1.raceid, 
  count(
    constructor_results_2.constructorresultsid), 
  races_1.year, 
  constructor_results_1.date, 
  qualifying_1.date, 
  constructor_results_2.constructorresultsid, 
  races_1.name, 
  constructor_results_2.date, 
  qualifying_1.raceid, 
  races_1.name, 
  constructor_results_1.constructorresultsid, 
  races_1.circuitid, 
  races_1.time, 
  qualifying_1.qualifyid, 
  constructor_results_2.constructorresultsid, 
  races_1.year, 
  qualifying_1.number, 
  constructor_results_2.constructorresultsid, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
        inner join constructor_results as constructor_results_1
        on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
      on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.date <= races_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_2.constructorresultsid, constructor_results_2.date, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid, races_1.circuitid, races_1.name, races_1.time, races_1.year
limit 41;
select  
  circuits_1.lng, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 33;
select  
  circuits_1.alt, 
  circuits_1.lng, 
  drivers_1.dob, 
  drivers_1.driverref, 
  max(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.driverid is not NULL
group by circuits_1.alt, circuits_1.lng, drivers_1.dob, drivers_1.driverref, drivers_1.nationality
limit 17;
select  
  max(
    constructor_results_1.points), 
  constructor_results_2.raceid, 
  constructor_results_2.points, 
  constructor_results_2.constructorresultsid, 
  constructor_results_2.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_2.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.constructorresultsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_2.constructorid, constructor_results_2.constructorresultsid, constructor_results_2.date, constructor_results_2.points, constructor_results_2.raceid
limit 27;
select  
  standings_1.raceid, 
  standings_1.raceid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.points is not NULL
group by standings_1.raceid
limit 15;
select  
  avg(
    circuits_1.lat), 
  constructors_1.nationality, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  constructors_1.name, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructors as constructors_1
      on (drivers_1.driverid = constructors_1.constructorid )
    inner join circuits as circuits_1
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
group by circuits_1.lat, constructors_1.name, constructors_1.nationality, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 17;
select  
  count(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.name
limit 14;
select  
  results_1.points, 
  results_1.position, 
  results_1.position, 
  results_1.date, 
  results_1.positionorder, 
  results_1.number, 
  results_1.number, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date > results_1.date
limit 38;
select  
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
limit 28;
select  
  races_1.date, 
  races_1.raceid, 
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
group by races_1.date, races_1.raceid
limit 19;
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  min(
    standings_1.driverid), 
  count(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.wins, 
  max(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.driverstandingsid, standings_1.position, standings_1.wins
limit 42;
select  
  races_1.time, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.circuitid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.date < races_1.date
group by circuits_1.circuitid, circuits_1.country, races_1.time
limit 40;
select  
  constructors_1.constructorref, 
  sum(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructors_1.name is not NULL
group by constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.wins, constructors_1.constructorref, constructors_1.nationality
limit 20;
select  
  qualifying_1.raceid, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where races_1.name < races_1.time
limit 7;
select  
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverref, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref
limit 32;
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  min(
    standings_1.points), 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by standings_1.driverstandingsid, standings_1.position, standings_1.raceid
limit 13;
select  
  constructor_results_1.points, 
  constructor_standings_1.date, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 20;
select  
  min(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.forename, 
  count(
    drivers_1.driverref), 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 3;
select  
  circuits_1.name, 
  circuits_1.lat, 
  count(*), 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 31;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.constructorstandingsid), 
  min(
    constructor_standings_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.wins
limit 7;
select  
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
limit 28;
select  
  circuits_1.circuitref, 
  races_1.date, 
  races_1.name, 
  races_1.round, 
  constructor_results_1.constructorid, 
  races_1.date, 
  max(
    races_1.date), 
  constructor_results_1.date, 
  sum(
    circuits_1.lng)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where races_1.time is not NULL
group by circuits_1.circuitref, constructor_results_1.constructorid, constructor_results_1.date, races_1.date, races_1.name, races_1.round
limit 15;
select  
  results_1.raceid, 
  qualifying_1.driverid, 
  results_1.rank, 
  constructors_1.name, 
  standings_1.date, 
  max(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join standings as standings_1
          inner join qualifying as qualifying_1
          on (standings_1.driverstandingsid = qualifying_1.qualifyid )
        inner join drivers as drivers_1
        on (standings_1.driverstandingsid = drivers_1.driverid )
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    on (results_1.resultid = constructors_1.constructorid )
where constructors_1.nationality >= drivers_1.forename
group by constructors_1.name, qualifying_1.driverid, results_1.raceid, results_1.rank, standings_1.date
limit 17;
select  
  constructors_2.constructorid, 
  count(
    results_1.milliseconds), 
  constructors_1.nationality, 
  min(
    results_2.statusid), 
  results_2.driverid, 
  avg(
    results_1.position), 
  constructors_2.constructorid, 
  avg(
    results_1.rank)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
          inner join results as results_1
          on (constructors_1.constructorid = results_1.resultid )
        inner join constructors as constructors_2
        on (results_1.resultid = constructors_2.constructorid )
      inner join results as results_2
      on (constructors_2.constructorid = results_2.resultid )
    on (qualifying_1.qualifyid = results_2.resultid )
where constructors_1.constructorid is not NULL
group by constructors_1.nationality, constructors_2.constructorid, results_2.driverid
limit 34;
select  
  circuits_1.country, 
  circuits_1.location, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.number), 
  qualifying_1.date, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.lat, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.location, circuits_1.name, qualifying_1.date, qualifying_1.driverid, qualifying_1.position, qualifying_1.qualifyid
limit 20;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 18;
select  
  constructor_results_1.date, 
  circuits_1.lat, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  circuits_1.circuitid, 
  circuits_1.circuitid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  max(
    standings_1.points), 
  standings_1.driverstandingsid, 
  constructor_results_1.points, 
  standings_1.position, 
  standings_1.points, 
  standings_1.position, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  standings_1.position, 
  min(
    constructor_results_1.date), 
  circuits_1.circuitref, 
  standings_1.wins, 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  standings_1.position, 
  constructor_results_1.constructorresultsid, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.lng is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.location, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.wins
limit 11;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 16;
select  
  circuits_1.location, 
  circuits_1.lng, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  circuits_1.location, 
  circuits_1.lng, 
  qualifying_1.number, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.country >= circuits_1.circuitref
limit 1;
select  
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.name is not NULL
limit 31;
select  
  avg(
    circuits_1.lat), 
  races_1.time, 
  circuits_1.circuitid, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
    on (circuits_1.circuitid = races_1.raceid )
where races_1.raceid is not NULL
group by circuits_1.circuitid, circuits_1.country, races_1.time
limit 25;
select  
  races_1.name, 
  qualifying_1.number, 
  constructor_results_1.date, 
  max(
    qualifying_1.number), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  races_1.round, 
  constructor_standings_1.position, 
  qualifying_1.qualifyid, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_1
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where qualifying_1.driverid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.raceid, constructor_standings_1.position, qualifying_1.number, qualifying_1.qualifyid, races_1.name, races_1.round, races_1.year
limit 40;
select  
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  max(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 22;
select  
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
        inner join constructors as constructors_1
        on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
      inner join constructors as constructors_2
        inner join races as races_1
        on (constructors_2.constructorid = races_1.raceid )
      on (constructors_1.constructorid = races_1.raceid )
    on (qualifying_1.qualifyid = constructors_2.constructorid )
where constructor_results_1.date >= races_1.date
limit 11;
select  
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  min(
    qualifying_1.constructorid), 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 26;
select  
  races_1.circuitid, 
  constructor_results_1.constructorresultsid, 
  drivers_1.code, 
  drivers_1.driverid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructors as constructors_1
          inner join races as races_1
          on (constructors_1.constructorid = races_1.raceid )
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      on (drivers_1.driverid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_2
      on (constructor_standings_1.constructorstandingsid = constructors_2.constructorid )
    on (constructors_1.constructorid = constructors_2.constructorid )
where constructor_standings_1.points >= constructor_results_1.points
limit 3;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 39;
select  
  races_1.raceid, 
  races_1.name, 
  races_1.date, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name <= races_1.time
limit 24;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.points is not NULL
limit 20;
select  
  min(
    standings_1.date), 
  min(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.points >= standings_1.points
limit 21;
select  
  drivers_1.dob, 
  drivers_1.surname, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.dob, drivers_1.surname
limit 35;
select  
  standings_1.raceid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join races as races_1
        inner join constructors as constructors_1
        on (races_1.raceid = constructors_1.constructorid )
      inner join standings as standings_1
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where races_1.name is not NULL
limit 29;
select  
  standings_1.raceid, 
  standings_1.date, 
  min(
    standings_1.points), 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  min(
    standings_1.wins), 
  sum(
    standings_1.points), 
  standings_1.date, 
  min(
    standings_1.date), 
  count(*), 
  standings_1.date, 
  standings_1.points, 
  standings_1.points, 
  avg(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 14;
select  
  constructor_standings_1.wins, 
  max(
    results_1.rank), 
  standings_2.date, 
  standings_1.wins, 
  count(
    standings_1.driverstandingsid), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  qualifying_1.constructorid, 
  standings_1.driverid, 
  standings_1.raceid, 
  results_1.raceid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join results as results_1
          inner join standings as standings_2
          on (results_1.resultid = standings_2.driverstandingsid )
        inner join qualifying as qualifying_1
        on (standings_2.driverstandingsid = qualifying_1.qualifyid )
      on (standings_1.driverstandingsid = results_1.resultid )
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where qualifying_1.date is not NULL
group by constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.wins, qualifying_1.constructorid, qualifying_1.number, results_1.raceid, standings_1.driverid, standings_1.raceid, standings_1.wins, standings_2.date
limit 35;
select  
  races_1.round, 
  races_1.circuitid, 
  races_1.round, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
limit 20;
select  
  drivers_1.forename, 
  drivers_1.surname, 
  count(
    drivers_1.dob), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname >= drivers_1.driverref
group by drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 33;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 7;
select  
  results_1.number, 
  results_1.raceid, 
  results_1.fastestlap, 
  results_1.resultid, 
  results_1.position, 
  results_1.points, 
  results_1.fastestlap, 
  results_1.milliseconds, 
  results_1.laps, 
  results_1.statusid, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap > results_1.position
limit 12;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.date > results_1.date
limit 16;
select  
  results_1.milliseconds, 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.constructorid is not NULL
limit 31;
select  
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 19;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 29;
select  
  results_1.positionorder, 
  circuits_1.circuitid, 
  results_1.resultid, 
  circuits_1.country, 
  results_1.position, 
  circuits_1.lat, 
  max(
    results_1.number), 
  circuits_1.country, 
  results_1.positionorder, 
  results_1.constructorid, 
  results_1.grid, 
  avg(
    results_1.statusid), 
  circuits_1.circuitid, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join circuits as circuits_1
    on (results_1.resultid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
group by circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, results_1.constructorid, results_1.grid, results_1.position, results_1.positionorder, results_1.resultid
limit 10;
select  
  qualifying_1.date, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 6;
select  
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorresultsid
limit 5;
select  
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_2.raceid, 
  standings_2.driverstandingsid, 
  results_1.driverid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.date, 
  standings_2.date, 
  standings_1.position, 
  standings_2.driverid, 
  sum(
    standings_1.raceid), 
  results_1.points, 
  standings_1.raceid, 
  results_1.constructorid, 
  results_1.grid, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join standings as standings_1
      inner join standings as standings_2
      on (standings_1.driverstandingsid = standings_2.driverstandingsid )
    on (results_1.resultid = standings_2.driverstandingsid )
where results_1.number is not NULL
group by results_1.constructorid, results_1.driverid, results_1.grid, results_1.points, standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_2.date, standings_2.driverid, standings_2.driverstandingsid, standings_2.raceid
limit 40;
select  
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    on (results_1.resultid = races_1.raceid )
where standings_1.date = races_1.date
limit 39;
select  
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  count(*), 
  drivers_1.forename, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.driverid, drivers_1.forename, drivers_1.nationality
limit 29;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  count(
    constructors_1.name), 
  avg(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 23;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.nationality >= drivers_1.forename
limit 22;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 8;
select  
  constructor_results_1.raceid, 
  standings_1.wins, 
  sum(
    constructor_results_1.constructorid), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  constructor_results_1.constructorid, 
  sum(
    standings_1.raceid), 
  constructor_results_1.constructorid, 
  standings_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  max(
    standings_1.date), 
  constructor_results_1.points, 
  count(
    constructor_results_1.points), 
  standings_1.position, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid, standings_1.wins
limit 10;
select  
  drivers_1.driverref, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob > drivers_1.dob
limit 30;
select  
  drivers_1.nationality, 
  qualifying_1.date, 
  races_1.year, 
  drivers_1.surname, 
  races_1.name, 
  qualifying_1.position, 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    on (drivers_1.driverid = races_1.raceid )
where constructor_results_1.constructorresultsid is not NULL
limit 20;
select  
  standings_1.position, 
  standings_1.date, 
  sum(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.date, standings_1.position
limit 24;
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.location, 
  avg(
    circuits_1.circuitid), 
  max(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng <= circuits_1.lat
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 19;
select  
  races_1.time, 
  races_1.round, 
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
group by races_1.round, races_1.time
limit 29;
select  
  results_1.constructorid, 
  count(*), 
  sum(
    results_1.position), 
  sum(
    results_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.constructorid
limit 24;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  standings_1.points, 
  constructor_results_1.constructorresultsid, 
  standings_1.date, 
  constructor_results_1.date, 
  avg(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, standings_1.date, standings_1.points
limit 32;
select  
  circuits_1.alt, 
  qualifying_2.date, 
  qualifying_2.driverid, 
  circuits_2.circuitid, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
        inner join qualifying as qualifying_2
        on (qualifying_1.qualifyid = qualifying_2.qualifyid )
      inner join circuits as circuits_2
        inner join constructors as constructors_1
        on (circuits_2.circuitid = constructors_1.constructorid )
      on (qualifying_2.qualifyid = circuits_2.circuitid )
    on (circuits_1.circuitid = constructors_1.constructorid )
where qualifying_1.date = qualifying_2.date
limit 32;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 18;
select  
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 3;
select  
  constructor_results_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join qualifying as qualifying_1
    on (constructor_results_2.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
limit 22;
select  
  circuits_1.alt, 
  circuits_1.alt, 
  max(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.country, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.location
limit 22;
select  
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.position, 
  avg(
    standings_1.raceid), 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.points, standings_1.position
limit 32;
select  
  constructor_results_1.constructorid, 
  races_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
          inner join constructor_standings as constructor_standings_1
          on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
        inner join standings as standings_1
        on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    inner join constructor_results as constructor_results_1
        inner join races as races_2
        on (constructor_results_1.constructorresultsid = races_2.raceid )
      inner join constructor_results as constructor_results_2
      on (races_2.raceid = constructor_results_2.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = races_2.raceid )
where races_1.circuitid is not NULL
limit 38;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.constructorid is not NULL
limit 14;
select  
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 7;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 28;
select  
  standings_1.position, 
  standings_1.driverstandingsid, 
  constructor_results_1.constructorid, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where standings_1.raceid is not NULL
limit 26;
select  
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 33;
select  
  circuits_1.lat, 
  qualifying_1.constructorid, 
  circuits_1.lng, 
  qualifying_1.qualifyid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.location is not NULL
limit 11;
select  
  sum(
    constructor_standings_1.constructorid), 
  constructor_standings_1.wins, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.position, constructor_standings_1.wins
limit 33;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.circuitref is not NULL
limit 32;
select  
  drivers_1.surname, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.dob < qualifying_1.date
limit 12;
select  
  results_1.raceid, 
  sum(
    results_1.laps)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.raceid
limit 2;
select  
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_results_1.date, 
  constructor_standings_1.date, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where constructor_standings_1.wins is not NULL
limit 40;
select  
  races_2.round, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  races_2.round, 
  constructor_standings_1.raceid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_standings_1.wins), 
  max(
    constructor_standings_1.position), 
  constructor_standings_1.constructorstandingsid, 
  standings_1.date, 
  standings_1.points, 
  races_2.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  standings_1.position, 
  races_2.date, 
  races_1.raceid, 
  constructor_standings_1.points, 
  count(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  avg(
    races_2.raceid), 
  races_2.time, 
  races_1.circuitid, 
  standings_1.driverid, 
  constructor_standings_1.raceid, 
  max(
    races_2.date), 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
        inner join races as races_1
        on (standings_1.driverstandingsid = races_1.raceid )
      inner join constructor_results as constructor_results_1
        inner join races as races_2
        on (constructor_results_1.constructorresultsid = races_2.raceid )
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins, races_1.circuitid, races_1.raceid, races_2.date, races_2.round, races_2.time, standings_1.date, standings_1.driverid, standings_1.points, standings_1.position
limit 37;
select  
  max(
    qualifying_1.constructorid), 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.number
limit 3;
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.code, 
  count(
    drivers_1.dob), 
  drivers_1.driverref, 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.code, drivers_1.driverref, drivers_1.forename
limit 36;
select  
  max(
    results_1.milliseconds), 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.forename, 
  count(*), 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.surname, 
  max(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 27;
select  
  standings_1.date, 
  min(
    standings_1.date), 
  max(
    standings_1.date), 
  max(
    races_1.round), 
  standings_1.date, 
  races_1.name, 
  min(
    races_1.date), 
  standings_1.date, 
  races_1.circuitid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  races_1.time, 
  sum(
    standings_1.points), 
  races_1.round, 
  races_1.year, 
  count(*), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.points < standings_1.points
group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points
limit 38;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where standings_1.date = constructor_results_1.date
limit 6;
select  
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 42;
select  
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.wins, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
        inner join constructor_standings as constructor_standings_2
        on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    on (drivers_1.driverid = results_2.resultid )
where results_2.constructorid is not NULL
limit 31;
select  
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_standings_1.constructorstandingsid < constructor_results_1.raceid
limit 7;
select  
  avg(
    results_1.raceid), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  races_1.year, 
  results_1.milliseconds, 
  races_1.date, 
  qualifying_1.date, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
        inner join races as races_1
        on (constructors_1.constructorid = races_1.raceid )
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join results as results_1
      inner join qualifying as qualifying_1
      on (results_1.resultid = qualifying_1.qualifyid )
    on (constructors_1.constructorid = results_1.resultid )
where races_1.raceid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, qualifying_1.date, races_1.date, races_1.year, results_1.milliseconds
limit 5;
select  
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructors as constructors_1
    on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
where constructor_standings_1.raceid is not NULL
limit 38;
select  
  constructor_standings_1.points, 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  sum(
    standings_1.raceid), 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.date <= standings_1.date
group by constructor_standings_1.points, constructor_standings_1.raceid, standings_1.driverid, standings_1.driverstandingsid, standings_1.points
limit 39;
select  
  standings_1.wins, 
  constructor_results_1.raceid, 
  sum(
    standings_1.points), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
      inner join circuits as circuits_1
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where circuits_1.lat is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, standings_1.wins
limit 40;
select  
  qualifying_1.raceid, 
  min(
    qualifying_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.raceid
limit 4;
select  
  avg(
    standings_1.raceid), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.position, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.position, standings_1.raceid
limit 33;
select  
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid > constructor_results_1.constructorid
group by constructor_results_1.constructorresultsid, constructor_results_1.points
limit 38;
select  
  constructor_results_2.constructorresultsid, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.points is not NULL
limit 6;
select  
  count(*), 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.location, 
  sum(
    circuits_1.alt), 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  sum(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 5;
select  
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
limit 26;
select  
  circuits_1.alt, 
  circuits_1.location, 
  sum(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
group by circuits_1.alt, circuits_1.location
limit 18;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 11;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  count(*), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 19;
select  
  min(
    standings_1.driverid), 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.points
limit 2;
select  
  max(
    drivers_1.driverid), 
  count(
    races_1.year), 
  circuits_1.lat, 
  standings_1.raceid, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join constructor_results as constructor_results_1
      inner join races as races_1
        inner join circuits as circuits_1
          inner join races as races_2
          on (circuits_1.circuitid = races_2.raceid )
        on (races_1.raceid = races_2.raceid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = races_2.raceid )
where constructor_results_1.constructorresultsid is not NULL
group by circuits_1.lat, races_1.circuitid, standings_1.raceid
limit 37;
select  
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_2
    on (constructor_results_1.constructorresultsid = circuits_2.circuitid )
where constructor_results_1.raceid is not NULL
limit 15;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 10;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.position), 
  constructor_standings_1.constructorid, 
  constructor_standings_2.wins, 
  max(
    constructor_standings_2.date), 
  constructor_standings_1.wins, 
  constructor_standings_2.points, 
  constructor_standings_2.wins, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_2.position, 
  constructor_standings_2.points, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_2.position, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_2.points, 
  sum(
    constructor_standings_1.position), 
  constructor_standings_2.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.raceid, 
  max(
    constructor_standings_2.points), 
  constructor_standings_2.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
    on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
where constructor_standings_1.points < constructor_standings_2.points
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.raceid, constructor_standings_2.wins
limit 33;
select  
  max(
    circuits_1.lng), 
  qualifying_1.constructorid, 
  races_1.time, 
  constructor_results_1.constructorid, 
  races_2.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
          inner join circuits as circuits_1
            inner join constructor_results as constructor_results_1
            on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
          on (races_1.raceid = circuits_1.circuitid )
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
        inner join races as races_2
        on (constructors_1.constructorid = races_2.raceid )
      on (circuits_1.circuitid = constructors_1.constructorid )
    on (standings_1.driverstandingsid = constructors_1.constructorid )
where circuits_1.circuitid is not NULL
group by constructor_results_1.constructorid, qualifying_1.constructorid, races_1.time, races_2.circuitid
limit 36;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 21;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  avg(
    constructor_results_1.points), 
  min(
    constructor_results_1.constructorresultsid), 
  count(
    constructor_results_1.points), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points = constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 12;
select  
  min(
    results_1.date), 
  count(*), 
  constructors_1.name, 
  results_1.number, 
  constructors_1.name, 
  qualifying_1.number, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
group by constructors_1.constructorid, constructors_1.name, qualifying_1.number, results_1.number
limit 29;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_2.points, 
  constructor_standings_1.date, 
  constructor_standings_2.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_3.constructorstandingsid, 
  constructor_standings_1.points, 
  races_1.round, 
  constructor_standings_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
        on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
      inner join constructor_standings as constructor_standings_3
      on (constructor_standings_1.constructorstandingsid = constructor_standings_3.constructorstandingsid )
    inner join races as races_1
    on (constructor_standings_2.constructorstandingsid = races_1.raceid )
where races_1.time = races_1.name
limit 2;
select  
  standings_1.driverstandingsid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
limit 16;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join races as races_1
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      on (constructors_1.constructorid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where standings_1.driverstandingsid is not NULL
limit 13;
select  
  races_1.year, 
  races_2.date, 
  races_1.year, 
  races_1.circuitid, 
  races_2.round, 
  drivers_1.code, 
  drivers_1.code, 
  races_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join races as races_1
      inner join races as races_2
      on (races_1.raceid = races_2.raceid )
    on (drivers_1.driverid = races_2.raceid )
where drivers_1.dob = races_1.date
limit 17;
select  
  count(
    standings_1.driverstandingsid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 24;
select  
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 39;
select  
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.wins, 
  standings_1.date, 
  avg(
    standings_1.points), 
  min(
    standings_1.points), 
  standings_1.position, 
  standings_1.points, 
  sum(
    standings_1.position), 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.position, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 33;
select  
  drivers_1.dob, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.forename is not NULL
limit 13;
select  
  races_1.date, 
  races_1.round, 
  races_1.name, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year > races_1.round
limit 26;
select  
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 18;
select  
  races_1.name, 
  races_1.name, 
  races_1.year, 
  sum(
    races_1.year), 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year >= races_1.round
group by races_1.circuitid, races_1.name, races_1.year
limit 17;
select  
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
limit 12;
select  
  qualifying_1.date, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 5;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 30;
select  
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins >= standings_1.raceid
limit 4;
select  
  max(
    standings_1.date), 
  avg(
    standings_1.points), 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.points
limit 36;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid
limit 12;
select  
  circuits_1.circuitref, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where circuits_1.lat >= results_1.points
limit 20;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 40;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  sum(
    constructor_standings_1.position), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, constructor_standings_1.wins
limit 14;
select  
  max(
    standings_1.date), 
  max(
    standings_1.date), 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  avg(
    standings_1.points), 
  standings_1.driverstandingsid, 
  standings_1.position, 
  min(
    standings_1.points), 
  standings_1.points, 
  standings_1.position, 
  standings_1.points, 
  sum(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.position, 
  max(
    standings_1.wins), 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  count(
    standings_1.driverid), 
  count(
    standings_1.raceid), 
  standings_1.date, 
  standings_1.position, 
  standings_1.raceid, 
  max(
    standings_1.date), 
  standings_1.points, 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.date, 
  standings_1.points, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 32;
select  
  standings_1.date, 
  standings_1.wins, 
  count(*), 
  standings_1.position, 
  standings_1.position, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.date, 
  standings_1.position, 
  standings_1.position, 
  min(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.position, 
  max(
    standings_1.wins), 
  standings_1.raceid, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 9;
select  
  circuits_1.circuitref, 
  sum(
    circuits_1.lat), 
  qualifying_1.raceid, 
  circuits_1.lng, 
  qualifying_1.number, 
  circuits_1.lat, 
  qualifying_1.date, 
  circuits_1.name, 
  qualifying_1.constructorid, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.position is not NULL
group by circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name, qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.raceid
limit 11;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  avg(
    constructor_results_1.constructorid), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 35;
select  
  qualifying_1.date, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 21;
select  
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.driverid is not NULL
limit 40;
select  
  circuits_1.name, 
  max(
    qualifying_1.date), 
  circuits_1.name, 
  qualifying_1.number, 
  circuits_1.country, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join circuits as circuits_1
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where circuits_1.lat is not NULL
group by circuits_1.country, circuits_1.name, qualifying_1.date, qualifying_1.number
limit 23;
select  
  constructor_results_1.points, 
  constructor_results_2.raceid, 
  constructor_results_2.raceid, 
  max(
    constructor_results_2.date), 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_2.raceid
limit 35;
select  
  races_2.date, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      inner join drivers as drivers_1
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      on (races_2.raceid = standings_1.driverstandingsid )
    inner join constructor_results as constructor_results_1
        inner join constructors as constructors_1
        on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
      inner join standings as standings_2
        inner join standings as standings_3
        on (standings_2.driverstandingsid = standings_3.driverstandingsid )
      on (constructors_1.constructorid = standings_2.driverstandingsid )
    on (races_1.raceid = standings_2.driverstandingsid )
where races_2.circuitid is not NULL
limit 34;
select  
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  count(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
group by constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 3;
select  
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
limit 15;
select  
  results_1.number, 
  results_1.fastestlap, 
  results_1.rank, 
  results_1.milliseconds, 
  max(
    results_1.grid), 
  min(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid is not NULL
group by results_1.fastestlap, results_1.milliseconds, results_1.number, results_1.rank
limit 27;
select  
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 1;
select  
  qualifying_2.driverid, 
  min(
    qualifying_2.date), 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_2.raceid is not NULL
group by constructors_1.name, qualifying_2.driverid
limit 33;
select  
  circuits_1.name, 
  circuits_1.country, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
limit 36;
select  
  races_1.round, 
  avg(
    drivers_1.driverid), 
  drivers_1.driverid, 
  races_1.raceid, 
  races_1.time, 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  races_1.date, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.driverref is not NULL
group by drivers_1.driverid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 6;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.points, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 28;
select  
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 16;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.date, 
  min(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.date
limit 3;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  results_1.milliseconds, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.points >= constructor_results_1.points
limit 4;
select  
  standings_1.raceid, 
  standings_1.date, 
  standings_1.date, 
  circuits_1.lat, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join circuits as circuits_1
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.location is not NULL
limit 20;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 14;
select  
  races_1.date, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
          inner join constructors as constructors_1
          on (races_1.raceid = constructors_1.constructorid )
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      inner join drivers as drivers_2
        inner join constructors as constructors_2
        on (drivers_2.driverid = constructors_2.constructorid )
      on (races_1.raceid = constructors_2.constructorid )
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.date > drivers_1.dob
limit 41;
select  
  constructors_1.name, 
  constructor_results_1.date, 
  constructors_1.nationality, 
  max(
    constructor_results_1.date), 
  constructors_1.name, 
  max(
    constructor_results_1.date), 
  constructors_1.constructorid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 11;
select  
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 40;
select  
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date <= standings_1.date
limit 17;
select  
  max(
    drivers_3.dob), 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
            inner join drivers as drivers_2
            on (drivers_1.driverid = drivers_2.driverid )
          inner join races as races_1
            inner join drivers as drivers_3
            on (races_1.raceid = drivers_3.driverid )
          on (drivers_1.driverid = races_1.raceid )
        inner join standings as standings_1
        on (drivers_1.driverid = standings_1.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
      on (drivers_2.driverid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
      inner join constructor_standings as constructor_standings_2
      on (qualifying_1.qualifyid = constructor_standings_2.constructorstandingsid )
    on (drivers_3.driverid = constructor_standings_2.constructorstandingsid )
where drivers_2.nationality is not NULL
group by constructor_standings_1.points
limit 4;
select  
  standings_1.driverid, 
  standings_1.date, 
  standings_1.date, 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.raceid, 
  standings_1.driverid, 
  max(
    standings_1.position), 
  sum(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.raceid
limit 9;
select  
  constructor_results_1.points, 
  drivers_1.forename, 
  races_1.year, 
  min(
    constructor_results_1.points), 
  drivers_1.driverid, 
  constructor_results_1.raceid, 
  min(
    drivers_1.dob), 
  races_1.circuitid, 
  drivers_1.dob, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, drivers_1.dob, drivers_1.driverid, drivers_1.forename, races_1.circuitid, races_1.round, races_1.year
limit 11;
select  
  races_1.circuitid, 
  avg(
    races_1.round)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (constructors_1.constructorid = drivers_1.driverid )
where races_1.round is not NULL
group by races_1.circuitid
limit 29;
select  
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 34;
select  
  qualifying_1.constructorid, 
  qualifying_1.date, 
  sum(
    qualifying_1.raceid), 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.qualifyid
limit 1;
select  
  races_1.name, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
limit 2;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 42;
select  
  qualifying_2.raceid, 
  qualifying_2.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.qualifyid, qualifying_2.raceid
limit 23;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.position
limit 29;
select  
  max(
    constructor_results_1.date), 
  constructors_2.name, 
  constructors_2.name, 
  constructors_2.nationality, 
  avg(
    circuits_1.alt), 
  constructors_2.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
          inner join circuits as circuits_1
          on (constructors_1.constructorid = circuits_1.circuitid )
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join constructors as constructors_2
    on (circuits_1.circuitid = constructors_2.constructorid )
where constructor_standings_1.date = constructor_results_1.date
group by constructors_2.constructorid, constructors_2.name, constructors_2.nationality
limit 3;
select  
  standings_1.points, 
  max(
    standings_1.raceid), 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.points, 
  max(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.wins, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.date, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid <= standings_1.wins
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 35;
select  
  min(
    qualifying_2.date), 
  qualifying_2.constructorid, 
  qualifying_1.date, 
  qualifying_2.number, 
  qualifying_2.driverid, 
  qualifying_1.driverid, 
  qualifying_2.date, 
  count(
    qualifying_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
    on (qualifying_1.qualifyid = qualifying_2.qualifyid )
where qualifying_1.qualifyid < qualifying_1.constructorid
group by qualifying_1.date, qualifying_1.driverid, qualifying_2.constructorid, qualifying_2.date, qualifying_2.driverid, qualifying_2.number
limit 11;
select  
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
limit 33;
select  
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  max(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
group by constructors_1.constructorid
limit 23;
select  
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
limit 8;
select  
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  avg(
    circuits_1.lat), 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng = circuits_1.lat
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 30;
select  
  constructor_standings_1.constructorstandingsid, 
  results_1.raceid, 
  constructor_standings_1.wins, 
  results_1.constructorid, 
  results_1.driverid, 
  constructor_standings_1.date, 
  results_1.laps, 
  constructor_standings_1.constructorid, 
  results_1.laps, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join results as results_1
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 8;
select  
  results_1.fastestlap, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.statusid <= results_1.laps
limit 11;
select  
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 11;
select  
  constructors_1.nationality, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorstandingsid is not NULL
limit 14;
select  
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 23;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  count(*), 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  max(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid < constructor_standings_1.position
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 1;
select  
  constructor_standings_1.position, 
  races_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_1.time is not NULL
limit 32;
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  max(
    drivers_1.driverid), 
  min(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  max(
    drivers_1.driverid), 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 19;
select  
  results_1.positionorder, 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap is not NULL
limit 16;
select  
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      on (constructors_1.constructorid = results_1.resultid )
    inner join races as races_1
      inner join standings as standings_1
      on (races_1.raceid = standings_1.driverstandingsid )
    on (constructors_1.constructorid = races_1.raceid )
where races_1.date is not NULL
limit 8;
select  
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 8;
select  
  drivers_1.nationality, 
  drivers_1.dob, 
  avg(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.nationality
limit 29;
select  
  standings_3.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
          inner join standings as standings_2
          on (standings_1.driverstandingsid = standings_2.driverstandingsid )
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      inner join standings as standings_3
        inner join standings as standings_4
        on (standings_3.driverstandingsid = standings_4.driverstandingsid )
      on (results_1.resultid = standings_3.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = standings_4.driverstandingsid )
where standings_2.points is not NULL
limit 31;
select  
  constructor_results_1.raceid, 
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.date, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, constructor_results_1.raceid, qualifying_1.date
limit 31;
select  
  standings_1.driverid, 
  results_1.constructorid, 
  max(
    results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.statusid is not NULL
group by results_1.constructorid, standings_1.driverid
limit 29;
select  
  constructor_results_3.constructorid, 
  constructor_results_4.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
      inner join constructor_results as constructor_results_3
        inner join constructor_results as constructor_results_4
          inner join results as results_1
          on (constructor_results_4.constructorresultsid = results_1.resultid )
        on (constructor_results_3.constructorresultsid = constructor_results_4.constructorresultsid )
      on (constructor_results_2.constructorresultsid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where results_1.number <= results_1.milliseconds
limit 5;
select  
  results_1.laps, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid is not NULL
limit 21;
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 33;
select  
  qualifying_1.driverid, 
  drivers_1.surname, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where drivers_1.nationality < drivers_1.code
limit 22;
select  
  races_1.round, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorid is not NULL
limit 30;
select  
  results_1.points, 
  results_1.raceid, 
  results_1.driverid, 
  results_1.positionorder, 
  results_1.laps, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.fastestlap >= results_1.points
limit 30;
select  
  max(
    circuits_1.circuitid), 
  count(*), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.circuitid > circuits_1.circuitid
group by circuits_1.lng, circuits_1.location
limit 23;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_results_1.constructorresultsid = constructor_results_1.constructorid
limit 13;
select  
  drivers_1.driverid, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid >= drivers_1.driverid
limit 42;
select  
  qualifying_1.constructorid, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    inner join races as races_1
    on (qualifying_2.qualifyid = races_1.raceid )
where qualifying_1.raceid is not NULL
limit 6;
select  
  races_1.raceid, 
  races_1.year, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where results_1.date <= races_1.date
limit 34;
select  
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name >= races_1.time
limit 31;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  results_1.position, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.name <= constructors_1.constructorref
limit 26;
select  
  constructors_1.constructorid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    inner join constructor_results as constructor_results_1
    on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
where constructors_1.constructorid is not NULL
limit 39;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.date), 
  avg(
    constructor_standings_1.raceid), 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.lat <= circuits_1.alt
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins
limit 34;
select  
  races_2.name, 
  races_2.raceid, 
  avg(
    races_1.raceid), 
  races_2.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where constructor_standings_1.raceid is not NULL
group by races_2.name, races_2.raceid, races_2.year
limit 40;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  drivers_1.dob, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    on (drivers_1.driverid = constructors_1.constructorid )
where qualifying_1.date is not NULL
limit 36;
select  
  races_1.raceid, 
  min(
    constructor_standings_2.date), 
  races_1.year, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_2.wins, 
  avg(
    constructor_standings_1.position), 
  min(
    races_1.date), 
  races_1.circuitid, 
  races_1.year, 
  constructor_standings_1.date, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join constructor_standings as constructor_standings_2
    on (drivers_1.driverid = constructor_standings_2.constructorstandingsid )
where drivers_1.dob < constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_2.constructorstandingsid, constructor_standings_2.wins, drivers_1.dob, races_1.circuitid, races_1.raceid, races_1.year
limit 7;
select  
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join results as results_1
      on (drivers_1.driverid = results_1.resultid )
    inner join drivers as drivers_2
      inner join races as races_1
        inner join qualifying as qualifying_1
        on (races_1.raceid = qualifying_1.qualifyid )
      on (drivers_2.driverid = races_1.raceid )
    on (drivers_1.driverid = races_1.raceid )
where drivers_1.driverid is not NULL
limit 21;
select  
  constructor_standings_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  max(
    constructor_standings_1.points), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_standings_1.date
limit 3;
select  
  results_1.driverid, 
  standings_1.wins, 
  qualifying_1.raceid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join circuits as circuits_1
        inner join results as results_1
        on (circuits_1.circuitid = results_1.resultid )
      on (standings_1.driverstandingsid = circuits_1.circuitid )
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where qualifying_1.number is not NULL
limit 24;
select  
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 31;
select  
  circuits_1.lat, 
  races_1.year, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.raceid is not NULL
limit 7;
select  
  circuits_1.country, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
limit 26;
select  
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
limit 35;
select  
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.dob, 
  count(*), 
  drivers_1.nationality, 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 33;
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.date, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 28;
select  
  sum(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.wins, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid is not NULL
group by standings_1.driverid, standings_1.points, standings_1.wins
limit 7;
select  
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.position, qualifying_1.qualifyid
limit 1;
select  
  max(
    races_1.date), 
  drivers_1.code, 
  constructor_standings_1.raceid, 
  drivers_1.driverid, 
  races_1.time, 
  races_1.date, 
  max(
    constructor_standings_1.date), 
  races_1.time, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.code, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join drivers as drivers_1
      on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.date is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid, drivers_1.code, drivers_1.driverid, drivers_1.forename, races_1.date, races_1.name, races_1.time
limit 16;
select  
  constructor_standings_1.constructorstandingsid, 
  count(
    races_1.name), 
  constructor_standings_1.position, 
  avg(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.constructorid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.circuitid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, races_1.time
limit 6;
select  
  constructor_results_1.raceid, 
  drivers_1.forename, 
  drivers_1.driverref, 
  constructor_results_1.date, 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  drivers_1.forename, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, drivers_1.driverref, drivers_1.forename
limit 23;
select  
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 21;
select  
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  avg(
    circuits_1.circuitid), 
  avg(
    circuits_1.lng)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country < circuits_1.location
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 1;
select  
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.raceid
limit 37;
select  
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.circuitid, 
  sum(
    circuits_1.lat), 
  circuits_1.lng, 
  circuits_1.lng, 
  circuits_1.location, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  count(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 30;
select  
  sum(
    constructor_results_1.raceid), 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.raceid >= results_1.statusid
group by results_1.date
limit 19;
select  
  results_1.positionorder, 
  results_1.raceid, 
  results_1.grid, 
  results_1.number, 
  sum(
    results_1.positionorder), 
  sum(
    results_1.laps), 
  avg(
    results_1.rank), 
  results_1.grid, 
  results_1.raceid, 
  results_1.statusid, 
  results_1.date, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.date, results_1.grid, results_1.number, results_1.positionorder, results_1.raceid, results_1.statusid
limit 39;
select  
  standings_1.date, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
limit 40;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 15;
select  
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid
limit 20;
select  
  constructor_results_2.constructorresultsid, 
  results_1.positionorder, 
  constructor_results_2.points, 
  qualifying_1.date, 
  constructor_results_2.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
        inner join qualifying as qualifying_1
        on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
      inner join constructor_results as constructor_results_2
      on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
    inner join results as results_1
    on (constructor_results_2.constructorresultsid = results_1.resultid )
where results_1.number is not NULL
limit 6;
select  
  circuits_1.circuitid, 
  circuits_1.lat, 
  circuits_2.name, 
  sum(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join circuits as circuits_1
      on (races_1.raceid = circuits_1.circuitid )
    inner join drivers as drivers_1
        inner join circuits as circuits_2
        on (drivers_1.driverid = circuits_2.circuitid )
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (circuits_1.circuitid = drivers_1.driverid )
where races_1.date < drivers_1.dob
group by circuits_1.circuitid, circuits_1.lat, circuits_2.name
limit 2;
select  
  circuits_1.name, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.forename, 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.surname < drivers_1.code
group by circuits_1.name, drivers_1.forename, drivers_1.surname
limit 6;
select  
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 10;
select  
  constructor_results_1.constructorresultsid, 
  min(
    results_2.number), 
  max(
    results_2.constructorid), 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.rank is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 33;
select  
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 25;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  count(
    constructor_results_1.raceid), 
  constructor_results_1.points, 
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 34;
select  
  races_2.time, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
        inner join races as races_2
        on (constructor_standings_1.constructorstandingsid = races_2.raceid )
      inner join constructor_results as constructor_results_1
      on (races_2.raceid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.circuitref is not NULL
limit 29;
select  
  races_1.circuitid, 
  races_1.round, 
  min(
    races_2.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join races as races_1
        inner join constructors as constructors_2
        on (races_1.raceid = constructors_2.constructorid )
      inner join races as races_2
      on (constructors_2.constructorid = races_2.raceid )
    on (constructors_1.constructorid = races_2.raceid )
where races_1.name <= constructors_1.nationality
group by races_1.circuitid, races_1.round
limit 17;
select  
  results_2.milliseconds, 
  results_2.date, 
  min(
    results_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.grid is not NULL
group by results_2.date, results_2.milliseconds
limit 32;
select  
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.constructorid), 
  min(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid >= constructor_results_1.constructorresultsid
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 32;
select  
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 2;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 22;
select  
  constructor_standings_1.constructorstandingsid, 
  max(
    constructor_standings_1.points), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points
limit 29;
select distinct 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position >= standings_1.driverstandingsid
limit 23;
select  
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 3;
select  
  constructors_1.nationality, 
  qualifying_1.qualifyid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  qualifying_1.constructorid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
    on (qualifying_1.qualifyid = constructors_1.constructorid )
where constructors_1.name >= constructors_1.constructorref
limit 5;
select  
  circuits_1.alt, 
  circuits_1.lat, 
  max(
    circuits_1.alt), 
  avg(
    circuits_1.alt), 
  circuits_1.name, 
  circuits_1.location, 
  circuits_1.lng, 
  max(
    circuits_1.circuitid), 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.lat, circuits_1.lng, circuits_1.location, circuits_1.name
limit 23;
select  
  results_1.statusid, 
  results_1.driverid, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.raceid <= results_1.positionorder
limit 9;
select  
  results_1.raceid, 
  results_2.number, 
  results_2.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.laps is not NULL
limit 32;
select  
  avg(
    drivers_1.driverid), 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob >= drivers_1.dob
group by drivers_1.surname
limit 10;
select  
  drivers_1.forename, 
  drivers_1.driverref, 
  max(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  avg(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 27;
select  
  drivers_2.surname, 
  drivers_1.code, 
  results_1.milliseconds, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
          inner join constructor_standings as constructor_standings_1
          on (results_1.resultid = constructor_standings_1.constructorstandingsid )
        inner join drivers as drivers_1
        on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_2.nationality >= constructors_1.constructorref
limit 32;
select  
  races_1.date, 
  circuits_1.lat, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  min(
    constructor_results_1.points), 
  count(*), 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join circuits as circuits_1
      inner join races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = circuits_1.circuitid )
where circuits_1.lat is not NULL
group by circuits_1.lat, constructor_results_1.points, constructor_results_1.raceid, races_1.date, races_1.time
limit 36;
select  
  races_1.time, 
  races_1.raceid, 
  results_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.position, 
  results_1.milliseconds, 
  races_1.time, 
  max(
    results_1.position), 
  min(
    results_1.date), 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    on (results_1.resultid = races_1.raceid )
where results_1.statusid is not NULL
group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid, races_1.raceid, races_1.time, results_1.constructorid, results_1.milliseconds
limit 36;
select  
  min(
    results_1.date), 
  results_2.points, 
  results_2.raceid, 
  results_1.laps, 
  results_1.raceid, 
  circuits_1.name, 
  constructor_results_1.date, 
  results_2.points, 
  results_1.resultid, 
  results_2.statusid, 
  results_1.resultid, 
  results_1.resultid, 
  circuits_1.lat, 
  circuits_1.name, 
  max(
    results_2.resultid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  results_2.statusid, 
  constructor_results_1.constructorid, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join circuits as circuits_1
        inner join results as results_2
        on (circuits_1.circuitid = results_2.resultid )
      on (results_1.resultid = results_2.resultid )
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where results_2.grid is not NULL
group by circuits_1.lat, circuits_1.name, constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, results_1.laps, results_1.raceid, results_1.resultid, results_2.points, results_2.raceid, results_2.statusid
limit 15;
select  
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.location, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 24;
select  
  results_1.position, 
  results_1.points, 
  results_1.driverid, 
  results_1.driverid, 
  results_1.raceid, 
  results_1.fastestlap, 
  results_1.points, 
  results_1.driverid, 
  results_1.points, 
  results_1.laps, 
  min(
    results_1.resultid), 
  results_1.milliseconds, 
  results_1.position, 
  min(
    results_1.date), 
  results_1.position, 
  max(
    results_1.date), 
  results_1.raceid, 
  results_1.raceid, 
  results_1.grid, 
  results_1.positionorder, 
  results_1.number, 
  results_1.positionorder, 
  results_1.raceid, 
  results_1.milliseconds, 
  results_1.fastestlap, 
  results_1.statusid, 
  results_1.milliseconds, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.driverid is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.grid, results_1.laps, results_1.milliseconds, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.raceid, results_1.statusid
limit 8;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.raceid
limit 21;
select  
  count(*), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 39;
select  
  constructor_results_1.constructorresultsid, 
  max(
    constructor_results_1.points), 
  constructor_results_1.points, 
  sum(
    constructor_results_1.points), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.points), 
  avg(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 15;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid
limit 30;
select  
  constructor_standings_2.raceid, 
  constructor_standings_3.date, 
  max(
    constructor_standings_3.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join constructor_standings as constructor_standings_3
      on (constructor_standings_2.constructorstandingsid = constructor_standings_3.constructorstandingsid )
    on (constructor_standings_1.constructorstandingsid = constructor_standings_3.constructorstandingsid )
where constructor_standings_1.points is not NULL
group by constructor_standings_2.raceid, constructor_standings_3.date
limit 30;
select  
  races_1.raceid, 
  races_1.round, 
  races_1.time, 
  races_1.circuitid, 
  races_1.year, 
  races_1.round, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date >= races_1.date
limit 38;
select  
  standings_1.position, 
  max(
    constructor_results_1.date), 
  standings_1.position, 
  constructor_results_1.points, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.position, 
  constructor_results_1.points, 
  standings_1.driverid, 
  constructor_results_1.points, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
group by constructor_results_1.points, standings_1.driverid, standings_1.position
limit 8;
select  
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
limit 30;
select  
  drivers_2.code, 
  constructors_1.name, 
  avg(
    standings_1.driverstandingsid), 
  drivers_1.code, 
  standings_1.driverid, 
  drivers_1.forename, 
  drivers_2.surname, 
  standings_1.driverstandingsid, 
  drivers_2.code, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join standings as standings_1
        inner join drivers as drivers_2
        on (standings_1.driverstandingsid = drivers_2.driverid )
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join constructors as constructors_1
    on (drivers_1.driverid = constructors_1.constructorid )
where drivers_2.surname is not NULL
group by constructors_1.name, drivers_1.code, drivers_1.forename, drivers_1.nationality, drivers_2.code, drivers_2.surname, standings_1.driverid, standings_1.driverstandingsid
limit 23;
select  
  constructor_standings_1.constructorid, 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position < constructor_standings_1.wins
group by constructor_standings_1.constructorid, constructor_standings_1.date
limit 28;
select  
  max(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 39;
select  
  circuits_1.name, 
  standings_1.raceid, 
  constructors_1.nationality, 
  standings_1.position, 
  constructors_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  circuits_1.alt, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
        inner join constructors as constructors_1
        on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join standings as standings_1
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where constructors_1.nationality is not NULL
limit 41;
select  
  min(
    races_1.date), 
  sum(
    races_1.year)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date < races_1.date
limit 16;
select  
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_1.constructorid), 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 18;
select  
  max(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid <= constructor_results_1.constructorresultsid
limit 13;
select  
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 6;
select  
  drivers_1.nationality, 
  min(
    drivers_1.dob), 
  drivers_1.nationality, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
group by drivers_1.dob, drivers_1.nationality
limit 5;
select  
  count(*), 
  constructors_1.constructorid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (constructors_1.constructorid = circuits_1.circuitid )
where circuits_1.lat is not NULL
group by constructors_1.constructorid, constructors_1.nationality
limit 1;
select  
  standings_1.position, 
  standings_1.position, 
  standings_1.wins, 
  standings_1.driverid, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
limit 28;
select  
  results_1.constructorid, 
  results_1.grid, 
  results_1.constructorid, 
  results_1.raceid, 
  results_1.constructorid, 
  count(
    results_1.raceid), 
  results_1.grid, 
  count(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.points is not NULL
group by results_1.constructorid, results_1.grid, results_1.raceid
limit 23;
select  
  races_1.round, 
  races_1.raceid, 
  standings_1.driverid, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = standings_1.driverstandingsid )
where constructor_results_1.points is not NULL
limit 21;
select  
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 2;
select  
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
limit 2;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 27;
select  
  qualifying_1.constructorid, 
  min(
    qualifying_1.number), 
  qualifying_1.position, 
  drivers_1.code, 
  drivers_1.forename, 
  min(
    drivers_1.dob), 
  drivers_1.code, 
  min(
    qualifying_1.date), 
  sum(
    qualifying_1.number), 
  drivers_1.driverid, 
  avg(
    qualifying_1.constructorid), 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where qualifying_1.driverid >= qualifying_1.constructorid
group by drivers_1.code, drivers_1.driverid, drivers_1.forename, qualifying_1.constructorid, qualifying_1.position, qualifying_1.raceid
limit 14;
select  
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    results_1.fastestlap), 
  results_1.number, 
  count(
    results_1.number), 
  avg(
    results_1.laps), 
  min(
    results_1.raceid), 
  results_1.raceid, 
  results_1.grid, 
  results_1.constructorid, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructors as constructors_1
    on (results_1.resultid = constructors_1.constructorid )
where results_1.grid is not NULL
group by constructors_1.constructorid, constructors_1.name, results_1.constructorid, results_1.grid, results_1.number, results_1.raceid
limit 19;
select  
  circuits_1.alt, 
  min(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid > circuits_1.circuitid
group by circuits_1.alt
limit 28;
select  
  min(
    constructor_standings_1.raceid), 
  min(
    drivers_1.dob), 
  constructor_standings_1.position, 
  drivers_1.driverid, 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.forename, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where drivers_1.dob <= constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins, drivers_1.driverid, drivers_1.forename
limit 31;
select  
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    inner join constructor_standings as constructor_standings_1
    on (constructors_2.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.position is not NULL
limit 8;
select  
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 16;
select  
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where standings_1.date = qualifying_1.date
limit 34;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 36;
select  
  races_1.date, 
  races_1.round, 
  races_1.round, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
limit 1;
select  
  circuits_1.alt, 
  circuits_1.lng, 
  circuits_1.circuitref, 
  circuits_1.location, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.lat, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 4;
select  
  standings_1.driverid, 
  standings_1.wins, 
  min(
    races_1.date), 
  standings_1.points, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join races as races_1
      on (standings_1.driverstandingsid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where races_1.time is not NULL
group by constructor_standings_1.wins, standings_1.driverid, standings_1.points, standings_1.wins
limit 12;
select  
  drivers_1.surname, 
  count(*), 
  count(
    drivers_1.driverid), 
  drivers_1.driverid, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 24;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 40;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref <= constructors_1.name
limit 42;
select  
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructors as constructors_1
    on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
where constructor_results_1.constructorresultsid is not NULL
limit 9;
select  
  max(
    constructor_results_1.date), 
  drivers_1.surname, 
  races_1.date, 
  max(
    constructor_results_1.points), 
  drivers_1.code, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, drivers_1.code, drivers_1.surname, races_1.date
limit 4;
select  
  count(
    constructors_1.nationality), 
  sum(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name <= constructors_1.constructorref
limit 18;
select  
  min(
    results_1.date), 
  results_1.raceid, 
  results_1.points, 
  results_1.driverid, 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date = results_1.date
group by results_1.driverid, results_1.grid, results_1.points, results_1.raceid
limit 35;
select  
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.points, 
  standings_1.date, 
  avg(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.points, standings_1.raceid
limit 24;
select  
  races_1.time, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.time, 
  races_1.round, 
  sum(
    races_1.circuitid), 
  races_1.date, 
  min(
    races_1.date), 
  races_1.round, 
  max(
    races_1.date), 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time > races_1.name
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time
limit 27;
select  
  constructor_standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_1.wins
limit 5;
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.driverid, 
  drivers_1.surname, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 18;
select  
  drivers_2.dob, 
  count(
    standings_1.position), 
  max(
    constructor_results_1.constructorresultsid), 
  drivers_2.surname, 
  drivers_2.surname, 
  drivers_2.driverref, 
  standings_1.driverstandingsid, 
  count(
    standings_2.date), 
  count(
    constructor_results_1.constructorid), 
  drivers_2.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
        inner join drivers as drivers_1
          inner join qualifying as qualifying_1
          on (drivers_1.driverid = qualifying_1.qualifyid )
        on (standings_1.driverstandingsid = qualifying_1.qualifyid )
      inner join constructor_standings as constructor_standings_1
          inner join standings as standings_2
          on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
        inner join constructor_results as constructor_results_1
        on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
      on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where qualifying_1.constructorid is not NULL
group by drivers_2.dob, drivers_2.driverref, drivers_2.surname, standings_1.driverstandingsid
limit 19;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid >= constructors_1.constructorid
limit 21;
select  
  max(
    races_1.circuitid), 
  races_1.year, 
  races_1.raceid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name <= races_1.time
group by races_1.raceid, races_1.time, races_1.year
limit 31;
select  
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
limit 38;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorref, constructors_1.name
limit 39;
select  
  standings_1.driverid, 
  results_1.grid, 
  qualifying_1.date, 
  standings_1.points, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  drivers_1.code, 
  drivers_1.driverref, 
  standings_1.driverstandingsid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join standings as standings_1
        inner join results as results_1
        on (standings_1.driverstandingsid = results_1.resultid )
      on (qualifying_1.qualifyid = results_1.resultid )
    on (drivers_1.driverid = standings_1.driverstandingsid )
where results_1.number > results_1.fastestlap
limit 26;
select  
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  results_1.milliseconds, 
  qualifying_1.position, 
  results_2.grid, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    inner join qualifying as qualifying_1
    on (results_2.resultid = qualifying_1.qualifyid )
where results_1.number is not NULL
limit 41;
select  
  results_1.resultid, 
  results_1.statusid, 
  min(
    results_1.fastestlap), 
  results_1.laps, 
  results_1.raceid, 
  results_1.constructorid, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.grid is not NULL
group by results_1.constructorid, results_1.date, results_1.laps, results_1.raceid, results_1.resultid, results_1.statusid
limit 32;
select  
  max(
    drivers_1.dob), 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob = drivers_1.dob
group by drivers_1.code
limit 28;
select  
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  count(*), 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  min(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 31;
select  
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  races_1.name, 
  max(
    races_1.date), 
  races_1.year, 
  races_1.name, 
  races_1.circuitid, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.year
limit 12;
select  
  results_1.points, 
  constructor_standings_1.date, 
  standings_2.date, 
  constructor_standings_1.raceid, 
  max(
    standings_2.driverstandingsid), 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
        inner join standings as standings_2
        on (standings_1.driverstandingsid = standings_2.driverstandingsid )
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join results as results_1
      inner join constructor_results as constructor_results_1
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    on (standings_1.driverstandingsid = results_1.resultid )
where constructor_results_1.constructorid is not NULL
group by constructor_standings_1.date, constructor_standings_1.raceid, results_1.points, standings_1.raceid, standings_2.date
limit 39;
select  
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  count(
    qualifying_1.qualifyid), 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 6;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  min(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref
limit 12;
select  
  constructor_results_1.points, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 39;
select  
  results_1.fastestlap, 
  results_1.raceid, 
  results_1.resultid, 
  results_1.grid, 
  results_1.rank, 
  results_1.points, 
  results_1.statusid, 
  results_1.statusid, 
  results_1.number, 
  results_1.rank, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date < results_1.date
limit 31;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.date), 
  sum(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 41;
select  
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.dob, 
  min(
    drivers_1.driverid), 
  drivers_1.forename, 
  drivers_1.driverref, 
  max(
    drivers_1.driverid), 
  sum(
    drivers_1.driverid), 
  drivers_1.nationality, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 23;
select  
  max(
    constructor_standings_1.wins), 
  drivers_1.surname, 
  sum(
    drivers_2.driverid), 
  constructor_standings_1.raceid, 
  drivers_1.surname, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  drivers_1.dob, 
  constructor_standings_1.constructorid, 
  sum(
    constructor_standings_1.position), 
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_standings_2.points), 
  constructors_1.name, 
  drivers_1.nationality, 
  constructor_standings_1.date, 
  constructor_standings_2.raceid, 
  sum(
    constructor_standings_1.constructorid), 
  constructor_standings_2.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructors as constructors_1
          inner join drivers as drivers_1
          on (constructors_1.constructorid = drivers_1.driverid )
        on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
      inner join constructor_standings as constructor_standings_2
      on (constructors_1.constructorid = constructor_standings_2.constructorstandingsid )
    inner join drivers as drivers_2
    on (constructors_1.constructorid = drivers_2.driverid )
where constructor_standings_2.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.raceid, constructor_standings_2.constructorstandingsid, constructor_standings_2.raceid, constructors_1.name, drivers_1.dob, drivers_1.nationality, drivers_1.surname
limit 27;
select  
  standings_2.points, 
  qualifying_1.qualifyid, 
  max(
    standings_2.date), 
  qualifying_1.qualifyid, 
  drivers_1.dob, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
          inner join standings as standings_1
          on (races_1.raceid = standings_1.driverstandingsid )
        inner join drivers as drivers_1
        on (standings_1.driverstandingsid = drivers_1.driverid )
      inner join standings as standings_2
      on (races_1.raceid = standings_2.driverstandingsid )
    inner join qualifying as qualifying_1
    on (races_1.raceid = qualifying_1.qualifyid )
where standings_2.raceid is not NULL
group by drivers_1.dob, qualifying_1.date, qualifying_1.qualifyid, standings_2.points
limit 9;
select  
  circuits_1.circuitid, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 16;
select  
  circuits_1.country, 
  min(
    circuits_1.lng), 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.lng, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 28;
select  
  count(*), 
  constructor_standings_1.raceid, 
  constructor_standings_1.date, 
  qualifying_1.qualifyid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  sum(
    qualifying_1.number), 
  constructor_standings_1.date, 
  count(
    constructor_standings_1.wins)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where constructor_standings_1.date < qualifying_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.position, constructor_standings_1.raceid, qualifying_1.qualifyid
limit 24;
select  
  results_1.statusid, 
  max(
    results_1.position), 
  results_1.grid, 
  max(
    results_1.milliseconds), 
  max(
    results_1.date), 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date = results_1.date
group by results_1.date, results_1.grid, results_1.statusid
limit 3;
select  
  drivers_1.nationality, 
  standings_1.points, 
  standings_1.driverstandingsid, 
  drivers_1.surname, 
  standings_1.raceid, 
  drivers_1.driverref, 
  standings_1.date, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where standings_1.position is not NULL
limit 19;
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  count(
    qualifying_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.driverid is not NULL
group by qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid
limit 29;
select  
  results_1.driverid, 
  results_1.rank, 
  races_1.raceid, 
  results_1.position, 
  races_1.name, 
  avg(
    results_1.fastestlap), 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
      inner join races as races_2
      on (results_1.resultid = races_2.raceid )
    on (races_1.raceid = results_1.resultid )
where races_2.date > races_1.date
group by races_1.name, races_1.raceid, results_1.driverid, results_1.milliseconds, results_1.position, results_1.rank
limit 28;
select  
  count(*), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_2.driverref, 
  count(*), 
  drivers_2.surname, 
  drivers_2.driverid, 
  drivers_2.surname, 
  drivers_1.dob, 
  drivers_2.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join drivers as drivers_2
    on (drivers_1.driverid = drivers_2.driverid )
where drivers_2.nationality is not NULL
group by drivers_1.dob, drivers_1.driverref, drivers_2.driverid, drivers_2.driverref, drivers_2.surname
limit 31;
select  
  races_1.name, 
  races_1.time, 
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
group by races_1.name, races_1.raceid, races_1.time, races_1.year
limit 18;
select  
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join results as results_1
          inner join races as races_1
          on (results_1.resultid = races_1.raceid )
        inner join standings as standings_1
        on (races_1.raceid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = races_1.raceid )
    inner join constructor_standings as constructor_standings_1
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where races_1.name is not NULL
limit 15;
select  
  max(
    qualifying_1.date), 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where constructor_standings_1.position is not NULL
group by drivers_1.nationality
limit 30;
select  
  max(
    results_1.date), 
  constructors_1.nationality, 
  results_1.statusid, 
  results_1.fastestlap, 
  constructors_1.constructorref, 
  min(
    results_1.constructorid), 
  constructors_1.name, 
  results_1.laps, 
  avg(
    results_1.fastestlap), 
  results_1.resultid, 
  max(
    results_1.rank)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (results_1.resultid = constructors_2.constructorid )
where constructors_2.name is not NULL
group by constructors_1.constructorref, constructors_1.name, constructors_1.nationality, results_1.fastestlap, results_1.laps, results_1.resultid, results_1.statusid
limit 35;
select  
  drivers_1.dob, 
  constructors_1.constructorref, 
  max(
    drivers_1.dob), 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.constructorid is not NULL
group by constructors_1.constructorref, drivers_1.dob, drivers_1.nationality
limit 16;
select  
  max(
    standings_1.date), 
  standings_2.position, 
  constructors_1.nationality, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      on (circuits_1.circuitid = standings_1.driverstandingsid )
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where standings_2.driverstandingsid > standings_1.wins
group by constructors_1.nationality, standings_2.position
limit 20;
select  
  standings_1.driverstandingsid, 
  constructors_1.constructorid, 
  constructors_2.name, 
  max(
    standings_1.date), 
  constructors_2.name, 
  constructors_2.constructorid, 
  constructors_1.nationality, 
  standings_1.driverid, 
  standings_1.position, 
  constructors_2.name, 
  constructors_1.name, 
  constructors_2.nationality, 
  constructors_2.nationality, 
  constructors_2.name, 
  constructors_1.nationality, 
  constructors_2.constructorref, 
  sum(
    standings_1.points), 
  constructors_1.constructorref, 
  max(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructors as constructors_1
      inner join constructors as constructors_2
      on (constructors_1.constructorid = constructors_2.constructorid )
    on (standings_1.driverstandingsid = constructors_2.constructorid )
where constructors_2.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorref, constructors_2.name, constructors_2.nationality, standings_1.driverid, standings_1.driverstandingsid, standings_1.position
limit 16;
select  
  constructors_2.constructorref, 
  races_1.raceid, 
  constructors_2.nationality, 
  races_1.time, 
  max(
    races_1.date), 
  constructors_1.name, 
  max(
    races_1.date), 
  constructors_2.name, 
  races_1.date, 
  constructors_1.constructorref, 
  races_1.round, 
  races_1.year, 
  max(
    races_1.date), 
  constructors_2.name, 
  min(
    races_1.date), 
  races_1.circuitid, 
  constructors_2.name, 
  constructors_2.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  races_1.time, 
  constructors_1.name, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (constructors_1.constructorid = constructors_2.constructorid )
where races_1.raceid >= constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, constructors_2.constructorid, constructors_2.constructorref, constructors_2.name, constructors_2.nationality, races_1.circuitid, races_1.date, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 33;
select  
  drivers_1.forename, 
  races_1.raceid, 
  races_1.time, 
  min(
    drivers_1.dob), 
  drivers_1.code, 
  drivers_1.forename, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where races_1.time is not NULL
group by drivers_1.code, drivers_1.forename, races_1.raceid, races_1.time
limit 5;
select  
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year is not NULL
limit 3;
select  
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  max(
    drivers_1.driverid), 
  drivers_1.driverref, 
  min(
    drivers_1.dob), 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 38;
select  
  results_1.positionorder, 
  races_1.raceid, 
  races_1.year, 
  drivers_1.driverid, 
  constructors_1.constructorref, 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    on (constructors_1.constructorid = drivers_1.driverid )
where results_1.position <= results_1.number
limit 36;
select  
  results_1.resultid, 
  avg(
    results_1.laps), 
  min(
    results_1.constructorid), 
  results_1.positionorder, 
  results_1.grid, 
  avg(
    results_1.laps), 
  results_1.raceid, 
  max(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.constructorid is not NULL
group by results_1.grid, results_1.positionorder, results_1.raceid, results_1.resultid
limit 15;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 8;
select  
  min(
    races_1.date), 
  circuits_1.alt, 
  circuits_1.lng, 
  races_1.round, 
  max(
    drivers_2.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join drivers as drivers_1
        inner join drivers as drivers_2
        on (drivers_1.driverid = drivers_2.driverid )
      on (races_1.raceid = drivers_2.driverid )
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.lng, races_1.round
limit 23;
select  
  circuits_1.alt, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.code, 
  count(*), 
  drivers_1.dob, 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where drivers_1.dob <= drivers_1.dob
group by circuits_1.alt, drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.surname
limit 41;
select  
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  max(
    qualifying_1.number)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date = qualifying_1.date
group by qualifying_1.driverid, qualifying_1.qualifyid
limit 12;
select  
  circuits_1.name, 
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_2.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.lat <= circuits_1.lat
limit 20;
select  
  standings_1.driverstandingsid, 
  count(
    standings_1.date), 
  standings_1.position, 
  avg(
    standings_1.points), 
  standings_1.date, 
  standings_1.driverid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.wins
limit 31;
select  
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 38;
select  
  qualifying_1.number, 
  qualifying_1.number, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date <= qualifying_1.date
limit 4;
select  
  count(
    results_1.position), 
  standings_1.driverstandingsid, 
  results_1.rank
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
      on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.position > results_1.rank
group by results_1.rank, standings_1.driverstandingsid
limit 34;
select  
  max(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    inner join constructor_standings as constructor_standings_2
    on (circuits_1.circuitid = constructor_standings_2.constructorstandingsid )
where circuits_1.circuitref is not NULL
limit 27;
select  
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  count(
    constructors_1.name), 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref > constructors_1.name
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 38;
select  
  min(
    qualifying_1.date), 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.driverid
limit 10;
select  
  constructor_standings_1.date, 
  sum(
    results_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join constructor_standings as constructor_standings_1
        on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join races as races_1
      inner join constructor_results as constructor_results_1
          inner join results as results_1
          on (constructor_results_1.constructorresultsid = results_1.resultid )
        inner join results as results_2
        on (constructor_results_1.constructorresultsid = results_2.resultid )
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    on (drivers_1.driverid = constructor_results_1.constructorresultsid )
where drivers_1.dob > constructor_results_1.date
group by constructor_standings_1.date
limit 11;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join constructors as constructors_1
          inner join drivers as drivers_1
          on (constructors_1.constructorid = drivers_1.driverid )
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      on (results_1.resultid = races_1.raceid )
    inner join races as races_2
    on (results_1.resultid = races_2.raceid )
where results_1.grid <= results_1.driverid
limit 21;
select  
  standings_1.driverid, 
  max(
    standings_1.points), 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.driverid, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position <= standings_1.driverstandingsid
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.wins
limit 40;
select  
  constructor_results_1.constructorresultsid, 
  races_1.name, 
  avg(
    constructor_results_1.constructorid), 
  count(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, races_1.name
limit 18;
select  
  drivers_1.forename, 
  drivers_1.dob, 
  drivers_1.forename, 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.dob, 
  drivers_1.driverid, 
  drivers_1.nationality, 
  count(*), 
  drivers_1.driverid, 
  drivers_1.surname, 
  avg(
    drivers_1.driverid), 
  max(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 16;
select  
  drivers_1.dob, 
  max(
    drivers_1.dob), 
  constructors_1.nationality, 
  min(
    drivers_1.dob), 
  count(
    drivers_1.forename), 
  constructors_1.constructorref, 
  max(
    drivers_1.driverid), 
  constructors_1.name, 
  drivers_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name, 
  max(
    drivers_1.dob), 
  constructors_1.constructorid, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality, drivers_1.dob, drivers_1.nationality
limit 15;
select  
  min(
    standings_1.points), 
  standings_1.raceid, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverid, standings_1.raceid
limit 1;
select  
  drivers_1.dob, 
  drivers_1.driverref, 
  drivers_1.forename, 
  min(
    drivers_1.driverid), 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename
limit 15;
select  
  standings_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.date >= constructor_results_1.date
limit 18;
select  
  drivers_1.forename, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverref <= drivers_1.surname
limit 36;
select  
  constructor_results_1.date, 
  results_1.resultid, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join constructors as constructors_2
          inner join standings as standings_1
          on (constructors_2.constructorid = standings_1.driverstandingsid )
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      inner join results as results_1
      on (constructors_1.constructorid = results_1.resultid )
    inner join constructor_standings as constructor_standings_1
        inner join results as results_2
        on (constructor_standings_1.constructorstandingsid = results_2.resultid )
      inner join constructor_results as constructor_results_1
        inner join results as results_3
        on (constructor_results_1.constructorresultsid = results_3.resultid )
      on (constructor_standings_1.constructorstandingsid = results_3.resultid )
    on (standings_1.driverstandingsid = results_2.resultid )
where results_3.grid is not NULL
limit 26;
select  
  results_1.grid, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where races_1.time <= races_1.name
limit 37;
select  
  drivers_1.driverref, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 35;
select  
  min(
    circuits_1.alt)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat = circuits_1.alt
limit 32;
select  
  max(
    drivers_1.dob), 
  drivers_1.dob, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
    on (drivers_1.driverid = races_1.raceid )
where constructor_standings_1.constructorid is not NULL
group by drivers_1.dob, races_1.time
limit 27;
select  
  drivers_1.driverid, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 12;
select  
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
limit 2;
select  
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 29;
select  
  standings_1.date, 
  standings_1.position, 
  standings_1.position, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 34;
select  
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where races_1.circuitid is not NULL
limit 38;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.points
limit 26;
select  
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 17;
select  
  max(
    races_1.date), 
  races_1.time, 
  races_1.circuitid, 
  races_1.time, 
  races_1.year, 
  min(
    races_1.date), 
  races_1.date, 
  races_1.date, 
  races_1.time, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
group by races_1.circuitid, races_1.date, races_1.raceid, races_1.time, races_1.year
limit 40;
select  
  standings_1.driverstandingsid, 
  standings_1.wins, 
  max(
    standings_1.points), 
  standings_1.driverid, 
  standings_1.points, 
  standings_1.points, 
  standings_1.date, 
  standings_1.points, 
  standings_1.raceid, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.raceid, standings_1.wins
limit 39;
select  
  results_1.position, 
  count(
    results_1.fastestlap), 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.position is not NULL
group by results_1.driverid, results_1.position
limit 41;
select  
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructors as constructors_1
        inner join standings as standings_1
        on (constructors_1.constructorid = standings_1.driverstandingsid )
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    on (qualifying_1.qualifyid = drivers_1.driverid )
where drivers_1.dob = standings_1.date
limit 6;
select  
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
limit 32;
select  
  standings_1.raceid, 
  standings_1.wins, 
  max(
    standings_1.wins), 
  standings_1.date, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverstandingsid, standings_1.raceid, standings_1.wins
limit 12;
select  
  races_1.date, 
  races_1.round, 
  constructors_1.name, 
  count(
    races_1.year), 
  races_1.circuitid, 
  constructors_1.constructorid, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.date is not NULL
group by constructors_1.constructorid, constructors_1.name, races_1.circuitid, races_1.date, races_1.round
limit 40;
select  
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
      inner join circuits as circuits_1
        inner join constructor_standings as constructor_standings_1
        on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
      on (races_1.raceid = constructor_standings_1.constructorstandingsid )
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where constructor_standings_1.wins is not NULL
limit 9;
select  
  qualifying_1.raceid, 
  qualifying_1.position, 
  drivers_2.surname, 
  drivers_2.surname, 
  drivers_2.surname, 
  drivers_2.dob, 
  qualifying_1.date, 
  drivers_2.code, 
  sum(
    qualifying_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
      inner join drivers as drivers_2
      on (qualifying_1.qualifyid = drivers_2.driverid )
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.driverid is not NULL
group by drivers_2.code, drivers_2.dob, drivers_2.surname, qualifying_1.date, qualifying_1.position, qualifying_1.raceid
limit 19;
select  
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  min(
    constructor_results_1.constructorid), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points <= constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid
limit 31;
select  
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where circuits_1.alt is not NULL
limit 28;
select  
  circuits_1.lat, 
  sum(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.circuitid, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 36;
select  
  sum(
    constructor_standings_1.points), 
  results_1.rank, 
  constructor_standings_1.raceid, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.raceid is not NULL
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.raceid, results_1.rank
limit 42;
select  
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  count(*), 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverref, 
  count(
    drivers_1.code)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob <= drivers_1.dob
group by drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 41;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 31;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.constructorid, constructor_standings_1.raceid, constructor_standings_1.wins
limit 10;
select  
  sum(
    races_1.year), 
  races_1.date, 
  races_1.time, 
  races_1.date, 
  races_1.name, 
  races_1.year, 
  max(
    races_1.raceid), 
  max(
    races_1.date), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name is not NULL
group by races_1.date, races_1.name, races_1.time, races_1.year
limit 34;
select  
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date >= constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 21;
select  
  sum(
    constructor_standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.date < constructor_standings_1.date
limit 8;
select  
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  qualifying_1.constructorid, 
  circuits_1.name, 
  qualifying_1.raceid, 
  min(
    circuits_1.lat), 
  circuits_1.location, 
  qualifying_1.constructorid, 
  avg(
    qualifying_1.raceid), 
  circuits_1.lat, 
  min(
    qualifying_1.date), 
  qualifying_1.number, 
  qualifying_1.date, 
  max(
    circuits_1.alt), 
  circuits_1.circuitid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  min(
    qualifying_1.date), 
  circuits_1.alt, 
  circuits_1.location, 
  qualifying_1.driverid, 
  circuits_1.location, 
  max(
    circuits_1.lat), 
  circuits_1.circuitid, 
  circuits_1.circuitref, 
  qualifying_1.date, 
  qualifying_1.number, 
  min(
    qualifying_1.constructorid), 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join qualifying as qualifying_1
    on (circuits_1.circuitid = qualifying_1.qualifyid )
where circuits_1.location < circuits_1.country
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.location, circuits_1.name, qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.raceid
limit 1;
select  
  count(
    circuits_2.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join circuits as circuits_1
      on (qualifying_1.qualifyid = circuits_1.circuitid )
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_2.circuitid is not NULL
limit 32;
select  
  qualifying_1.constructorid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.points = standings_1.points
limit 22;
select  
  drivers_1.dob, 
  avg(
    drivers_1.driverid), 
  sum(
    standings_1.points), 
  standings_1.raceid, 
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    on (drivers_1.driverid = standings_1.driverstandingsid )
where standings_1.wins is not NULL
group by drivers_1.dob, qualifying_1.date, standings_1.raceid
limit 32;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.date), 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points
limit 41;
select  
  max(
    races_1.date), 
  count(
    races_1.raceid), 
  races_1.name, 
  races_1.time, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where races_1.round < standings_1.wins
group by races_1.name, races_1.time, races_1.year
limit 39;
select  
  max(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.country is not NULL
limit 28;
select  
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.position is not NULL
limit 26;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join circuits as circuits_1
      on (drivers_1.driverid = circuits_1.circuitid )
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where circuits_1.circuitref <= circuits_1.location
limit 10;
select  
  standings_1.raceid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  min(
    constructor_results_1.points), 
  standings_1.points, 
  standings_1.date, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.points, constructor_results_1.raceid, standings_1.date, standings_1.points, standings_1.raceid
limit 1;
select  
  constructor_results_1.points, 
  drivers_1.nationality, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    on (drivers_1.driverid = results_1.resultid )
where drivers_1.driverref is not NULL
limit 20;
select  
  constructor_standings_1.raceid, 
  standings_1.points, 
  drivers_1.driverref, 
  drivers_1.forename, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = drivers_1.driverid )
where standings_1.position <= standings_1.driverstandingsid
limit 31;
select  
  results_1.resultid, 
  count(
    results_1.statusid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.position is not NULL
group by results_1.resultid
limit 39;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 39;
select  
  constructor_standings_1.date, 
  constructor_results_1.points, 
  constructor_standings_1.position, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 19;
select  
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 24;
select  
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 24;
select  
  races_1.name, 
  races_1.time, 
  count(*), 
  races_1.raceid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.round, 
  count(*), 
  races_1.name, 
  races_1.round, 
  races_1.circuitid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
group by races_1.circuitid, races_1.name, races_1.raceid, races_1.round, races_1.time
limit 34;
select  
  min(
    races_1.raceid), 
  races_1.time, 
  races_1.circuitid, 
  races_1.name, 
  min(
    races_1.round), 
  races_1.year, 
  races_1.time, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid = races_1.round
group by races_1.circuitid, races_1.date, races_1.name, races_1.time, races_1.year
limit 30;
select  
  results_1.date, 
  results_1.raceid, 
  results_1.statusid, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
limit 34;
select  
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 39;
select  
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.position is not NULL
limit 33;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 2;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 38;
select  
  drivers_1.surname, 
  races_1.time, 
  max(
    races_1.date), 
  drivers_1.driverid, 
  circuits_1.lng, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  circuits_1.lat, 
  avg(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join races as races_1
      on (circuits_1.circuitid = races_1.raceid )
    inner join drivers as drivers_1
    on (circuits_1.circuitid = drivers_1.driverid )
where races_1.year is not NULL
group by circuits_1.lat, circuits_1.lng, drivers_1.driverid, drivers_1.driverref, drivers_1.surname, races_1.time
limit 32;
select  
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date = results_1.date
limit 5;
select distinct 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
limit 12;
select  
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 20;
select  
  drivers_1.surname, 
  drivers_1.nationality, 
  avg(
    drivers_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid < drivers_1.driverid
group by drivers_1.nationality, drivers_1.surname
limit 39;
select  
  races_1.year, 
  races_1.raceid, 
  races_1.name, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 1;
select  
  drivers_1.driverref, 
  qualifying_1.driverid, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.dob is not NULL
limit 7;
select  
  standings_1.position, 
  standings_1.raceid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 28;
select  
  min(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join drivers as drivers_1
      on (standings_1.driverstandingsid = drivers_1.driverid )
    inner join qualifying as qualifying_1
    on (drivers_1.driverid = qualifying_1.qualifyid )
where drivers_1.surname < drivers_1.nationality
limit 11;
select  
  races_1.round, 
  qualifying_2.date, 
  qualifying_1.raceid, 
  races_1.round, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join qualifying as qualifying_2
      on (races_1.raceid = qualifying_2.qualifyid )
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.year is not NULL
limit 40;
select  
  standings_1.driverid, 
  standings_1.date, 
  max(
    standings_1.date), 
  standings_1.points, 
  standings_1.driverid, 
  standings_1.date, 
  standings_1.points, 
  standings_1.points, 
  min(
    standings_1.raceid), 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date >= standings_1.date
group by standings_1.date, standings_1.driverid, standings_1.points, standings_1.position
limit 42;
select  
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join drivers as drivers_1
      on (results_1.resultid = drivers_1.driverid )
    inner join results as results_2
    on (drivers_1.driverid = results_2.resultid )
where results_1.rank > results_2.rank
limit 32;
select distinct 
  races_2.name, 
  races_2.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.date is not NULL
limit 4;
select  
  constructors_1.constructorref, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  races_1.time, 
  constructors_1.constructorref, 
  drivers_1.nationality, 
  races_1.raceid, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join races as races_1
      inner join drivers as drivers_1
      on (races_1.raceid = drivers_1.driverid )
    on (constructors_1.constructorid = drivers_1.driverid )
where races_1.raceid = drivers_1.driverid
group by constructors_1.constructorref, drivers_1.driverref, drivers_1.nationality, races_1.raceid, races_1.time
limit 12;
select  
  circuits_1.alt, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_standings as constructor_standings_1
    on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
where circuits_1.name = circuits_1.country
limit 28;
select  
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  max(
    circuits_1.lat), 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join constructor_results as constructor_results_1
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date
limit 13;
select  
  qualifying_2.qualifyid, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join qualifying as qualifying_1
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    inner join qualifying as qualifying_2
      inner join constructor_results as constructor_results_1
      on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where results_1.milliseconds = constructor_standings_1.points
limit 13;
select  
  qualifying_1.raceid, 
  results_1.points, 
  max(
    races_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join constructor_results as constructor_results_1
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join races as races_1
        inner join results as results_1
        on (races_1.raceid = results_1.resultid )
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where races_1.raceid is not NULL
group by qualifying_1.raceid, results_1.points
limit 34;
select  
  drivers_1.nationality, 
  drivers_1.driverid, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.surname, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.nationality, 
  sum(
    drivers_1.driverid), 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.nationality, drivers_1.surname
limit 15;
select  
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.laps is not NULL
limit 17;
select  
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.raceid is not NULL
limit 11;
select  
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.country, 
  circuits_1.alt, 
  avg(
    circuits_1.lng), 
  circuits_1.lat, 
  circuits_1.lng, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.country, circuits_1.lat, circuits_1.lng
limit 25;
select  
  circuits_2.location, 
  min(
    circuits_1.circuitid), 
  circuits_2.lat, 
  min(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.circuitid <= circuits_2.circuitid
group by circuits_2.lat, circuits_2.location
limit 31;
select  
  sum(
    standings_2.points), 
  standings_1.driverid, 
  standings_2.position, 
  standings_1.driverid, 
  circuits_1.circuitref, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join standings as standings_2
        inner join constructor_results as constructor_results_1
        on (standings_2.driverstandingsid = constructor_results_1.constructorresultsid )
      inner join circuits as circuits_1
      on (standings_2.driverstandingsid = circuits_1.circuitid )
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where constructor_results_1.points < circuits_1.alt
group by circuits_1.circuitref, circuits_1.country, constructor_results_1.constructorid, standings_1.driverid, standings_2.position
limit 29;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
limit 17;
select  
  min(
    results_1.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join results as results_1
    on (qualifying_1.qualifyid = results_1.resultid )
where qualifying_1.raceid > results_1.resultid
limit 19;
select  
  count(*), 
  results_1.resultid, 
  results_1.grid, 
  avg(
    results_1.milliseconds), 
  results_1.driverid, 
  races_1.raceid, 
  races_1.time, 
  results_1.number, 
  results_1.grid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.circuitid is not NULL
group by races_1.raceid, races_1.time, results_1.driverid, results_1.grid, results_1.number, results_1.resultid
limit 11;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid is not NULL
limit 40;
select  
  races_1.date, 
  results_1.fastestlap, 
  constructors_1.name, 
  sum(
    results_1.rank), 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where constructors_1.name is not NULL
group by constructors_1.name, races_1.date, races_1.name, results_1.fastestlap
limit 9;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 29;
select  
  races_1.year, 
  races_1.round, 
  races_1.date, 
  races_1.date, 
  races_1.date, 
  races_1.raceid, 
  races_1.circuitid, 
  count(
    races_1.raceid), 
  races_1.name, 
  races_1.date, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.year
limit 14;
select  
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 40;
select  
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  min(
    constructors_1.constructorid), 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 10;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.raceid, 
  qualifying_1.raceid, 
  count(*), 
  min(
    qualifying_1.position), 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.number), 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  min(
    qualifying_1.qualifyid), 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 22;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 34;
select  
  max(
    constructor_results_1.constructorid), 
  circuits_1.alt, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.raceid, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where constructor_results_1.date = constructor_results_1.date
group by circuits_1.alt, circuits_1.name, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.raceid
limit 15;
select  
  standings_1.driverid, 
  constructor_results_1.constructorresultsid, 
  qualifying_1.qualifyid, 
  standings_1.driverstandingsid, 
  sum(
    circuits_1.lat), 
  circuits_1.lat, 
  circuits_1.circuitref, 
  constructor_results_1.points, 
  avg(
    standings_1.points), 
  sum(
    constructor_results_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_results as constructor_results_1
      inner join standings as standings_1
        inner join circuits as circuits_1
        on (standings_1.driverstandingsid = circuits_1.circuitid )
      on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where qualifying_1.position is not NULL
group by circuits_1.circuitref, circuits_1.lat, constructor_results_1.constructorresultsid, constructor_results_1.points, qualifying_1.qualifyid, standings_1.driverid, standings_1.driverstandingsid
limit 18;
select  
  max(
    drivers_1.dob), 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join qualifying as qualifying_1
        inner join results as results_2
        on (qualifying_1.qualifyid = results_2.resultid )
      on (results_1.resultid = results_2.resultid )
    inner join drivers as drivers_1
    on (qualifying_1.qualifyid = drivers_1.driverid )
where results_1.rank is not NULL
group by results_1.laps
limit 29;
select  
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date is not NULL
limit 23;
select  
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
      inner join races as races_1
        inner join drivers as drivers_1
        on (races_1.raceid = drivers_1.driverid )
      on (circuits_1.circuitid = drivers_1.driverid )
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where constructor_results_1.raceid is not NULL
limit 9;
select  
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where standings_1.date > standings_1.date
limit 19;
select  
  count(
    results_1.raceid), 
  results_1.grid, 
  drivers_1.surname
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join drivers as drivers_1
    on (results_1.resultid = drivers_1.driverid )
where results_1.resultid >= results_1.raceid
group by drivers_1.surname, results_1.grid
limit 14;
select  
  qualifying_1.position, 
  constructor_results_1.raceid, 
  max(
    constructor_results_2.date), 
  constructor_results_2.date, 
  qualifying_1.constructorid, 
  constructor_results_1.points, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_2
      on (qualifying_1.qualifyid = constructor_results_2.constructorresultsid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where constructor_results_1.date >= qualifying_1.date
group by constructor_results_1.points, constructor_results_1.raceid, constructor_results_2.date, qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid
limit 31;
select  
  count(*), 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.circuitref
limit 18;
select  
  results_1.number, 
  results_1.number, 
  results_1.grid, 
  results_1.milliseconds, 
  min(
    results_1.raceid), 
  results_1.resultid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date > results_1.date
group by results_1.grid, results_1.milliseconds, results_1.number, results_1.resultid
limit 10;
select  
  count(*), 
  constructor_standings_1.raceid, 
  results_1.number, 
  races_1.name, 
  constructor_results_1.constructorid, 
  races_1.year, 
  races_1.time, 
  constructor_standings_1.position, 
  results_1.date, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
        inner join results as results_1
        on (constructor_results_1.constructorresultsid = results_1.resultid )
      inner join constructor_standings as constructor_standings_1
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join races as races_1
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where races_1.time is not NULL
group by constructor_results_1.constructorid, constructor_standings_1.position, constructor_standings_1.raceid, races_1.name, races_1.time, races_1.year, results_1.date, results_1.number
limit 11;
select  
  max(
    qualifying_1.qualifyid), 
  min(
    qualifying_1.date), 
  max(
    standings_1.raceid), 
  qualifying_1.position, 
  count(
    qualifying_1.date), 
  standings_1.driverid, 
  max(
    standings_1.driverstandingsid), 
  min(
    standings_1.points), 
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.driverstandingsid, 
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.date, 
  qualifying_1.position, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where qualifying_1.date < standings_1.date
group by qualifying_1.date, qualifying_1.position, qualifying_1.qualifyid, standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points
limit 23;
select  
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 24;
select  
  constructor_standings_1.points, 
  standings_1.date, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  standings_1.date, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  min(
    constructor_standings_1.date), 
  standings_1.points, 
  avg(
    standings_1.points), 
  standings_1.date, 
  standings_1.raceid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where standings_1.position is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, standings_1.date, standings_1.points, standings_1.raceid
limit 35;
select  
  races_1.time, 
  races_2.raceid, 
  races_2.circuitid, 
  races_1.circuitid, 
  max(
    races_2.date), 
  races_1.circuitid, 
  races_1.name, 
  races_2.name, 
  races_2.raceid, 
  max(
    races_1.raceid), 
  races_1.raceid, 
  races_2.circuitid, 
  races_1.date, 
  races_1.round, 
  races_1.year, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join races as races_2
    on (races_1.raceid = races_2.raceid )
where races_2.raceid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year, races_2.circuitid, races_2.name, races_2.raceid
limit 31;
select  
  circuits_1.circuitref, 
  count(
    circuits_1.name), 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat is not NULL
group by circuits_1.circuitref, circuits_1.name
limit 27;
select  
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.points, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points
limit 38;
select  
  races_1.date, 
  max(
    results_1.grid), 
  results_1.rank, 
  results_1.number, 
  results_1.rank, 
  races_1.date, 
  races_1.year, 
  results_1.date, 
  count(
    results_1.points), 
  results_1.grid, 
  results_1.positionorder, 
  races_1.raceid, 
  results_1.position, 
  max(
    results_1.points), 
  results_1.positionorder, 
  races_1.date, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where results_1.milliseconds < results_1.fastestlap
group by races_1.date, races_1.raceid, races_1.year, results_1.date, results_1.grid, results_1.number, results_1.points, results_1.position, results_1.positionorder, results_1.rank
limit 27;
select  
  circuits_1.location, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
group by circuits_1.location
limit 35;
select  
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 31;
select  
  results_1.milliseconds, 
  min(
    drivers_1.dob), 
  drivers_1.forename, 
  circuits_1.lng, 
  min(
    results_1.date), 
  results_1.position, 
  results_1.fastestlap, 
  drivers_1.dob, 
  drivers_1.code, 
  results_1.rank, 
  drivers_1.driverref, 
  circuits_1.lat, 
  min(
    results_1.grid), 
  avg(
    circuits_1.alt), 
  min(
    results_1.date), 
  drivers_1.forename, 
  drivers_1.surname, 
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join drivers as drivers_1
      on (circuits_1.circuitid = drivers_1.driverid )
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.date <= drivers_1.dob
group by circuits_1.circuitid, circuits_1.lat, circuits_1.lng, drivers_1.code, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.surname, results_1.fastestlap, results_1.milliseconds, results_1.position, results_1.rank
limit 3;
select  
  constructors_1.nationality, 
  constructors_1.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 11;
select  
  qualifying_1.position, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid > qualifying_1.driverid
limit 1;
select  
  qualifying_1.position, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  sum(
    qualifying_1.constructorid), 
  qualifying_1.date, 
  sum(
    qualifying_1.qualifyid), 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  count(
    qualifying_1.position), 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  avg(
    qualifying_1.constructorid), 
  count(
    qualifying_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 17;
select  
  max(
    drivers_1.dob), 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
group by drivers_1.forename
limit 39;
select  
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
limit 6;
select  
  circuits_1.name, 
  standings_1.driverid, 
  constructor_results_1.points, 
  circuits_1.circuitid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = standings_1.driverstandingsid )
where constructor_results_1.raceid is not NULL
limit 4;
select  
  constructors_1.nationality, 
  constructors_1.nationality, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name < constructors_1.constructorref
group by constructors_1.constructorid, constructors_1.name, constructors_1.nationality
limit 27;
select  
  circuits_1.lng, 
  min(
    races_1.date), 
  races_1.time, 
  circuits_1.lng, 
  races_1.time, 
  circuits_1.country, 
  races_1.circuitid, 
  races_1.raceid, 
  circuits_1.lat, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join circuits as circuits_1
    on (races_1.raceid = circuits_1.circuitid )
where races_1.round is not NULL
group by circuits_1.alt, circuits_1.country, circuits_1.lat, circuits_1.lng, races_1.circuitid, races_1.raceid, races_1.time
limit 34;
select  
  min(
    drivers_1.dob), 
  standings_1.date, 
  circuits_1.country, 
  standings_1.wins, 
  drivers_1.dob, 
  circuits_1.alt, 
  standings_1.position, 
  standings_1.raceid, 
  drivers_1.driverref, 
  circuits_1.country, 
  drivers_1.nationality, 
  drivers_1.forename, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    on (circuits_1.circuitid = drivers_1.driverid )
where standings_1.driverid is not NULL
group by circuits_1.alt, circuits_1.country, drivers_1.dob, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, standings_1.date, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 20;
select  
  sum(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.name, 
  circuits_1.alt, 
  min(
    circuits_1.alt), 
  circuits_1.lng, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  count(
    circuits_1.circuitref)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid <= circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat, circuits_1.lng, circuits_1.name
limit 2;
select  
  max(
    circuits_1.lat), 
  constructor_results_1.constructorid, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join standings as standings_1
      inner join constructor_results as constructor_results_1
      on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
    on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, standings_1.points
limit 15;
select  
  constructors_2.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join constructors as constructors_1
      on (qualifying_1.qualifyid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (qualifying_1.qualifyid = constructors_2.constructorid )
where constructors_1.nationality is not NULL
limit 41;
select  
  constructor_results_1.points, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 16;
select  
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join races as races_2
        on (races_1.raceid = races_2.raceid )
      inner join drivers as drivers_1
      on (races_2.raceid = drivers_1.driverid )
    inner join standings as standings_1
    on (drivers_1.driverid = standings_1.driverstandingsid )
where races_1.round is not NULL
limit 11;
select  
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 31;
select  
  results_1.rank, 
  sum(
    results_1.position), 
  results_1.raceid, 
  results_1.rank, 
  results_1.points, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.rank is not NULL
group by results_1.points, results_1.raceid, results_1.rank
limit 3;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 14;
select  
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.position, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.raceid is not NULL
limit 17;
select  
  drivers_1.driverid, 
  drivers_1.code, 
  drivers_1.forename, 
  count(
    drivers_1.driverref), 
  drivers_1.forename, 
  drivers_1.driverref, 
  drivers_1.nationality, 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality
limit 10;
select  
  standings_1.position, 
  min(
    standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points < standings_1.points
group by standings_1.position
limit 10;
select  
  standings_1.points, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where drivers_1.dob is not NULL
limit 26;
select  
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join results as results_1
      on (constructor_results_1.constructorresultsid = results_1.resultid )
    inner join races as races_1
      inner join constructors as constructors_1
      on (races_1.raceid = constructors_1.constructorid )
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where results_1.points is not NULL
limit 25;
select  
  constructor_standings_1.constructorid, 
  min(
    constructor_standings_1.points), 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  min(
    constructor_standings_1.raceid), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.wins, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points = constructor_standings_1.points
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 27;
select  
  drivers_1.driverid, 
  drivers_1.driverid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join drivers as drivers_1
    on (constructor_results_1.constructorresultsid = drivers_1.driverid )
where races_1.time = drivers_1.nationality
limit 6;
select  
  results_2.positionorder, 
  results_1.number, 
  results_1.position, 
  results_2.milliseconds, 
  max(
    results_2.fastestlap), 
  results_2.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_1.statusid is not NULL
group by results_1.number, results_1.position, results_2.milliseconds, results_2.positionorder
limit 38;
select  
  races_1.round, 
  races_1.date, 
  races_1.name, 
  races_1.round, 
  races_1.time, 
  count(*), 
  races_1.name, 
  races_1.name, 
  races_1.round, 
  races_1.date, 
  races_1.round, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.time, 
  races_1.year, 
  races_1.date, 
  races_1.time, 
  races_1.year, 
  races_1.date, 
  min(
    races_1.round), 
  max(
    races_1.round), 
  count(
    races_1.raceid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 11;
select  
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 22;
select  
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 39;
select  
  constructor_results_1.points, 
  qualifying_1.raceid, 
  circuits_1.circuitid, 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_2.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join circuits as circuits_1
        inner join qualifying as qualifying_1
        on (circuits_1.circuitid = qualifying_1.qualifyid )
      on (constructor_results_2.constructorresultsid = circuits_1.circuitid )
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
limit 10;
select distinct 
  circuits_1.country, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
limit 36;
select  
  drivers_3.nationality, 
  drivers_1.surname, 
  drivers_3.driverid, 
  drivers_3.forename, 
  max(
    drivers_2.dob), 
  drivers_2.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join drivers as drivers_2
      inner join drivers as drivers_3
      on (drivers_2.driverid = drivers_3.driverid )
    on (drivers_1.driverid = drivers_3.driverid )
where drivers_3.driverid > drivers_1.driverid
group by drivers_1.surname, drivers_2.driverref, drivers_3.driverid, drivers_3.forename, drivers_3.nationality
limit 17;
select  
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 26;
select  
  results_1.positionorder
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
limit 37;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
limit 32;
select  
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 2;
select  
  count(
    races_1.time), 
  races_1.date, 
  races_1.time, 
  races_1.date, 
  races_1.raceid, 
  races_1.round, 
  races_1.circuitid, 
  races_1.round, 
  races_1.year, 
  races_1.date, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  races_1.year, 
  races_1.year, 
  races_1.name, 
  races_1.circuitid, 
  max(
    races_1.date), 
  races_1.year, 
  races_1.time, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round < races_1.raceid
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 3;
select  
  constructor_results_1.raceid, 
  constructor_standings_1.date, 
  constructor_results_1.constructorresultsid, 
  sum(
    constructor_standings_1.points), 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
        inner join constructor_standings as constructor_standings_1
        on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
      inner join constructors as constructors_1
        inner join races as races_1
          inner join qualifying as qualifying_1
          on (races_1.raceid = qualifying_1.qualifyid )
        on (constructors_1.constructorid = races_1.raceid )
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructor_standings_1.points is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.raceid, constructor_standings_1.date, constructor_standings_1.points
limit 26;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.position, 
  constructor_standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.position, 
  constructor_standings_1.points, 
  max(
    constructor_standings_1.date), 
  constructor_standings_1.points, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.position >= constructor_standings_1.constructorid
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.wins
limit 3;
select  
  constructor_standings_2.constructorid, 
  constructor_standings_2.points, 
  constructor_standings_2.points, 
  min(
    constructor_standings_1.points), 
  constructor_standings_2.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
where qualifying_1.date >= constructor_standings_1.date
group by constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, constructor_standings_2.points
limit 10;
select  
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where circuits_1.name is not NULL
limit 36;
select  
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.name is not NULL
limit 24;
select  
  sum(
    constructor_standings_1.constructorstandingsid), 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid < constructor_standings_1.wins
group by constructor_standings_1.position
limit 28;
select  
  results_1.statusid, 
  results_1.rank, 
  results_1.position, 
  results_1.resultid, 
  results_1.position, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
limit 1;
select  
  races_1.circuitid, 
  races_1.year, 
  min(
    constructor_standings_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join races as races_1
      on (constructor_standings_1.constructorstandingsid = races_1.raceid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where races_1.name is not NULL
group by races_1.circuitid, races_1.year
limit 35;
select  
  circuits_1.circuitref, 
  circuits_1.country, 
  min(
    circuits_1.alt), 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 20;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
limit 41;
select  
  constructor_results_1.raceid, 
  races_1.time, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  races_1.date, 
  constructors_1.constructorid, 
  races_1.circuitid, 
  races_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_results as constructor_results_1
      inner join constructors as constructors_1
      on (constructor_results_1.constructorresultsid = constructors_1.constructorid )
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.name is not NULL
limit 22;
select  
  max(
    races_1.circuitid), 
  max(
    races_1.round), 
  races_1.date, 
  races_1.date, 
  races_1.circuitid, 
  avg(
    races_1.round), 
  count(
    races_1.name), 
  races_1.time, 
  races_1.name, 
  races_1.year, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.circuitid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.round, races_1.time, races_1.year
limit 29;
select  
  max(
    results_1.statusid), 
  results_1.points, 
  races_1.round, 
  races_1.name, 
  races_1.round, 
  avg(
    races_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.driverid = results_1.laps
group by races_1.name, races_1.round, results_1.points
limit 5;
select  
  qualifying_1.number, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 16;
select  
  min(
    races_1.date), 
  races_1.date, 
  races_1.circuitid, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name
limit 41;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join qualifying as qualifying_2
      inner join constructor_results as constructor_results_1
      on (qualifying_2.qualifyid = constructor_results_1.constructorresultsid )
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where qualifying_2.raceid is not NULL
limit 29;
select  
  standings_1.raceid, 
  count(*), 
  standings_1.date, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.position is not NULL
group by standings_1.date, standings_1.points, standings_1.raceid
limit 24;
select  
  min(
    circuits_1.lng), 
  max(
    circuits_1.lat), 
  avg(
    circuits_1.alt), 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat > circuits_1.lng
group by circuits_1.circuitref, circuits_1.location
limit 27;
select  
  constructor_standings_2.raceid, 
  constructors_2.constructorref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
        inner join constructor_standings as constructor_standings_2
          inner join qualifying as qualifying_1
          on (constructor_standings_2.constructorstandingsid = qualifying_1.qualifyid )
        on (constructor_standings_1.constructorstandingsid = qualifying_1.qualifyid )
      inner join constructors as constructors_1
      on (constructor_standings_1.constructorstandingsid = constructors_1.constructorid )
    inner join constructors as constructors_2
    on (qualifying_1.qualifyid = constructors_2.constructorid )
where constructors_2.constructorid >= constructor_standings_2.wins
limit 15;
select  
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.position, 
  max(
    qualifying_1.date), 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 8;
select  
  races_1.circuitid, 
  results_1.constructorid, 
  drivers_1.code, 
  qualifying_1.position, 
  results_1.resultid, 
  drivers_1.dob, 
  results_2.grid, 
  qualifying_1.raceid, 
  max(
    results_2.position), 
  qualifying_1.driverid, 
  qualifying_1.driverid, 
  results_1.grid, 
  drivers_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join results as results_2
      on (results_1.resultid = results_2.resultid )
    inner join qualifying as qualifying_1
      inner join drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      on (qualifying_1.qualifyid = races_1.raceid )
    on (results_1.resultid = races_1.raceid )
where races_1.name is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.nationality, qualifying_1.driverid, qualifying_1.position, qualifying_1.raceid, races_1.circuitid, results_1.constructorid, results_1.grid, results_1.resultid, results_2.grid
limit 14;
select  
  circuits_1.country, 
  constructor_results_1.points, 
  results_1.grid, 
  constructor_results_1.date, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join results as results_1
        inner join constructor_results as constructor_results_1
        on (results_1.resultid = constructor_results_1.constructorresultsid )
      on (drivers_1.driverid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.lng is not NULL
limit 37;
select  
  min(
    races_1.circuitid), 
  races_1.year, 
  races_1.date, 
  races_1.round, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date >= races_1.date
group by races_1.date, races_1.round, races_1.year
limit 10;
select  
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 15;
select  
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.wins, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverid is not NULL
limit 8;
select  
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 2;
select  
  count(
    qualifying_1.number), 
  qualifying_1.position, 
  qualifying_1.date, 
  qualifying_1.qualifyid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid <= qualifying_1.driverid
group by qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 42;
select  
  constructor_results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 32;
select  
  circuits_1.alt, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.name, 
  sum(
    circuits_1.circuitid), 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.name
limit 7;
select  
  constructor_results_1.raceid, 
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.date, 
  min(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  max(
    constructor_results_1.points), 
  min(
    constructor_results_1.date), 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 26;
select  
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  drivers_1.dob, 
  qualifying_1.qualifyid, 
  races_1.raceid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join drivers as drivers_1
      on (qualifying_1.qualifyid = drivers_1.driverid )
    inner join races as races_1
    on (qualifying_1.qualifyid = races_1.raceid )
where races_1.year is not NULL
group by drivers_1.dob, qualifying_1.constructorid, qualifying_1.driverid, qualifying_1.qualifyid, races_1.raceid
limit 22;
select  
  min(
    results_2.date), 
  constructor_standings_2.constructorstandingsid, 
  constructor_standings_2.date, 
  results_2.grid, 
  constructor_standings_2.position, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
          inner join results as results_1
          on (constructor_standings_1.constructorstandingsid = results_1.resultid )
        inner join results as results_2
          inner join constructor_standings as constructor_standings_2
          on (results_2.resultid = constructor_standings_2.constructorstandingsid )
        on (results_1.resultid = constructor_standings_2.constructorstandingsid )
      inner join races as races_1
        inner join constructor_standings as constructor_standings_3
        on (races_1.raceid = constructor_standings_3.constructorstandingsid )
      on (results_1.resultid = constructor_standings_3.constructorstandingsid )
    inner join races as races_2
    on (constructor_standings_2.constructorstandingsid = races_2.raceid )
where races_1.round is not NULL
group by constructor_standings_2.constructorstandingsid, constructor_standings_2.date, constructor_standings_2.position, races_1.raceid, results_2.grid
limit 7;
select  
  qualifying_1.date, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date >= qualifying_1.date
limit 42;
select  
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 41;
select  
  drivers_1.forename, 
  drivers_1.nationality, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 27;
select  
  results_1.rank, 
  count(*), 
  results_1.position, 
  constructors_1.name, 
  results_1.points, 
  constructors_1.name, 
  min(
    results_1.date), 
  constructors_1.nationality, 
  constructors_1.nationality, 
  results_1.position, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where results_1.statusid is not NULL
group by constructors_1.name, constructors_1.nationality, results_1.points, results_1.position, results_1.rank
limit 17;
select  
  drivers_1.driverid, 
  min(
    drivers_1.dob), 
  drivers_1.driverid, 
  drivers_1.forename, 
  drivers_1.dob, 
  min(
    drivers_1.dob), 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.surname, 
  drivers_1.nationality, 
  drivers_1.forename, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.nationality, drivers_1.surname
limit 25;
select  
  min(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points
limit 2;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.location is not NULL
limit 2;
select  
  results_1.rank, 
  results_1.grid, 
  results_1.driverid, 
  results_1.number, 
  max(
    results_1.rank), 
  results_1.constructorid, 
  min(
    results_1.date), 
  min(
    results_1.constructorid), 
  results_1.fastestlap, 
  results_1.date, 
  results_1.driverid, 
  results_1.raceid, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder < results_1.grid
group by results_1.constructorid, results_1.date, results_1.driverid, results_1.fastestlap, results_1.grid, results_1.number, results_1.raceid, results_1.rank
limit 2;
select  
  avg(
    constructor_results_2.points), 
  constructor_results_2.raceid, 
  count(*), 
  constructor_results_1.raceid, 
  constructor_results_2.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_2.constructorid, 
  constructor_results_2.points, 
  constructor_results_2.date, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.points, 
  min(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_results as constructor_results_2
    on (constructor_results_1.constructorresultsid = constructor_results_2.constructorresultsid )
where constructor_results_2.points >= constructor_results_1.points
group by constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid, constructor_results_2.constructorid, constructor_results_2.date, constructor_results_2.points, constructor_results_2.raceid
limit 2;
select  
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 1;
select  
  results_1.rank, 
  count(*), 
  results_1.laps, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number <= results_1.points
group by results_1.laps, results_1.milliseconds, results_1.rank
limit 6;
select  
  count(
    races_1.circuitid), 
  races_1.circuitid, 
  races_1.date, 
  races_1.name, 
  count(
    races_1.round), 
  races_1.name, 
  races_1.raceid, 
  races_1.raceid, 
  count(*), 
  races_1.time, 
  races_1.circuitid, 
  races_1.year, 
  races_1.round, 
  races_1.raceid, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 33;
select  
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.grid is not NULL
limit 33;
select  
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 24;
select  
  standings_1.raceid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.position, 
  max(
    standings_1.date), 
  standings_1.date, 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points is not NULL
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.position, standings_1.raceid
limit 29;
select  
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
    on (races_1.raceid = results_1.resultid )
where results_1.date is not NULL
limit 8;
select  
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  qualifying_1.position, 
  qualifying_1.number, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 3;
select  
  max(
    drivers_1.dob), 
  drivers_1.surname, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  max(
    drivers_1.driverid), 
  drivers_1.forename
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality = drivers_1.driverref
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, drivers_1.surname
limit 17;
select  
  max(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
limit 10;
select  
  qualifying_1.date, 
  qualifying_1.date, 
  max(
    qualifying_1.date), 
  qualifying_1.qualifyid, 
  avg(
    qualifying_1.qualifyid), 
  count(
    qualifying_1.number)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number is not NULL
group by qualifying_1.date, qualifying_1.qualifyid
limit 37;
select  
  constructor_results_1.date, 
  results_1.rank, 
  results_1.milliseconds, 
  sum(
    results_1.fastestlap)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join results as results_1
    on (constructor_results_1.constructorresultsid = results_1.resultid )
where constructor_results_1.raceid is not NULL
group by constructor_results_1.date, results_1.milliseconds, results_1.rank
limit 27;
select  
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 29;
select  
  sum(
    constructor_standings_1.position), 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid
limit 25;
select  
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.constructorid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  count(
    qualifying_1.position), 
  qualifying_1.raceid, 
  qualifying_1.constructorid, 
  count(
    qualifying_1.qualifyid), 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.driverid, 
  qualifying_1.number, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 33;
select  
  races_1.round, 
  races_1.time, 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 14;
select  
  qualifying_1.date, 
  qualifying_1.position, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
      inner join races as races_1
      on (qualifying_1.qualifyid = races_1.raceid )
    inner join constructor_results as constructor_results_1
    on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
where constructor_results_1.raceid is not NULL
limit 32;
select  
  constructor_standings_1.date, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 29;
select  
  results_1.resultid, 
  results_1.positionorder, 
  results_1.positionorder, 
  results_1.resultid, 
  results_1.grid, 
  results_1.position, 
  sum(
    results_1.fastestlap), 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date is not NULL
group by results_1.fastestlap, results_1.grid, results_1.position, results_1.positionorder, results_1.resultid
limit 22;
select  
  circuits_1.name, 
  avg(
    circuits_1.lat), 
  min(
    circuits_1.circuitid), 
  circuits_1.location, 
  avg(
    circuits_1.circuitid), 
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.country, 
  avg(
    circuits_1.lng), 
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.name, 
  circuits_1.location, 
  max(
    circuits_1.lat)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.location, circuits_1.name
limit 39;
select  
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join qualifying as qualifying_1
    on (constructors_1.constructorid = qualifying_1.qualifyid )
where qualifying_1.raceid is not NULL
limit 3;
select  
  standings_1.raceid, 
  constructor_standings_1.points, 
  sum(
    constructor_standings_1.constructorid), 
  constructor_standings_1.constructorid, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join standings as standings_1
    on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
where constructor_standings_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, standings_1.raceid
limit 34;
select  
  avg(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 23;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 21;
select  
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number < qualifying_1.qualifyid
limit 36;
select  
  qualifying_1.qualifyid, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join races as races_1
      inner join races as races_2
        inner join qualifying as qualifying_2
          inner join standings as standings_1
          on (qualifying_2.qualifyid = standings_1.driverstandingsid )
        on (races_2.raceid = qualifying_2.qualifyid )
      on (races_1.raceid = standings_1.driverstandingsid )
    on (qualifying_1.qualifyid = races_2.raceid )
where standings_1.wins is not NULL
limit 37;
select  
  max(
    constructor_standings_1.date), 
  constructor_standings_1.wins, 
  constructor_standings_2.raceid, 
  count(
    circuits_1.circuitid), 
  constructor_standings_2.constructorid, 
  constructor_standings_2.position, 
  constructor_standings_2.wins, 
  constructor_standings_2.points, 
  circuits_1.country, 
  circuits_1.circuitid, 
  constructor_standings_2.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_2.wins, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    inner join circuits as circuits_1
    on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
where circuits_1.alt > circuits_1.lat
group by circuits_1.circuitid, circuits_1.country, constructor_standings_1.constructorid, constructor_standings_1.position, constructor_standings_1.wins, constructor_standings_2.constructorid, constructor_standings_2.points, constructor_standings_2.position, constructor_standings_2.raceid, constructor_standings_2.wins
limit 30;
select  
  circuits_1.circuitid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lat > circuits_1.alt
limit 35;
select  
  constructor_standings_1.constructorstandingsid, 
  min(
    constructor_results_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
      inner join results as results_1
      on (constructor_standings_1.constructorstandingsid = results_1.resultid )
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where results_1.number is not NULL
group by constructor_standings_1.constructorstandingsid
limit 42;
select  
  min(
    constructor_standings_1.date), 
  constructor_standings_1.constructorstandingsid, 
  avg(
    constructor_standings_1.position), 
  constructor_standings_1.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorstandingsid
limit 18;
select  
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename > drivers_1.code
limit 42;
select  
  circuits_1.lng, 
  circuits_1.country, 
  circuits_1.name, 
  circuits_1.location, 
  sum(
    circuits_1.circuitid), 
  circuits_1.location, 
  circuits_1.alt, 
  circuits_1.circuitref, 
  max(
    circuits_1.circuitid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng = circuits_1.alt
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lng, circuits_1.location, circuits_1.name
limit 17;
select  
  constructor_results_1.date, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_results as constructor_results_1
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where constructor_standings_1.date is not NULL
limit 27;
select  
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
    on (races_1.raceid = drivers_1.driverid )
where races_1.year < races_1.circuitid
limit 28;
select  
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.dob is not NULL
limit 12;
select  
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.nationality is not NULL
limit 30;
select  
  results_1.position, 
  avg(
    results_1.laps), 
  races_1.name, 
  races_1.raceid, 
  results_1.number, 
  races_1.circuitid, 
  avg(
    results_1.position), 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where results_1.resultid is not NULL
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, results_1.number, results_1.position
limit 33;
select  
  count(
    constructor_standings_1.constructorstandingsid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.constructorstandingsid is not NULL
limit 41;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  min(
    constructor_results_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points >= constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid
limit 9;
select  
  constructor_results_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorstandingsid, 
  results_1.raceid, 
  min(
    constructor_results_1.points), 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
        inner join races as races_1
        on (constructor_results_1.constructorresultsid = races_1.raceid )
      inner join results as results_1
      on (races_1.raceid = results_1.resultid )
    inner join constructor_standings as constructor_standings_1
    on (races_1.raceid = constructor_standings_1.constructorstandingsid )
where results_1.number > results_1.milliseconds
group by constructor_results_1.date, constructor_standings_1.constructorstandingsid, constructor_standings_1.position, results_1.constructorid, results_1.raceid
limit 22;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join circuits as circuits_1
    on (constructor_results_1.constructorresultsid = circuits_1.circuitid )
where circuits_1.lng < circuits_1.alt
limit 37;
select  
  drivers_1.nationality, 
  min(
    standings_2.driverid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
      inner join standings as standings_1
      on (drivers_1.driverid = standings_1.driverstandingsid )
    inner join standings as standings_2
    on (standings_1.driverstandingsid = standings_2.driverstandingsid )
where drivers_1.code is not NULL
group by drivers_1.nationality
limit 39;
select  
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 3;
select  
  results_1.constructorid, 
  max(
    results_1.raceid), 
  results_1.constructorid, 
  circuits_1.circuitid, 
  results_1.grid, 
  circuits_1.country, 
  results_1.milliseconds, 
  circuits_1.circuitref, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.lat is not NULL
group by circuits_1.circuitid, circuits_1.circuitref, circuits_1.country, results_1.constructorid, results_1.grid, results_1.laps, results_1.milliseconds
limit 14;
select  
  results_1.points, 
  results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  results_1.fastestlap, 
  results_1.fastestlap, 
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where constructor_results_1.points is not NULL
limit 18;
select  
  results_1.driverid, 
  results_1.number, 
  results_1.points, 
  results_1.fastestlap, 
  sum(
    results_1.position)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.resultid is not NULL
group by results_1.driverid, results_1.fastestlap, results_1.number, results_1.points
limit 9;
select  
  results_1.raceid, 
  results_1.milliseconds, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where results_1.laps is not NULL
limit 28;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
limit 11;
select  
  races_1.date, 
  races_1.name, 
  max(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time is not NULL
group by races_1.date, races_1.name
limit 14;
select  
  drivers_1.nationality, 
  standings_1.driverid, 
  standings_1.driverid, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join drivers as drivers_1
    on (standings_1.driverstandingsid = drivers_1.driverid )
where standings_1.driverstandingsid is not NULL
limit 34;
select  
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid <= constructors_1.constructorid
limit 30;
select  
  standings_1.raceid, 
  max(
    standings_1.points), 
  standings_1.points, 
  standings_1.date, 
  standings_1.date, 
  standings_1.position, 
  standings_1.driverid, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.wins, 
  standings_1.driverstandingsid, 
  standings_1.raceid, 
  min(
    standings_1.wins), 
  standings_1.date, 
  min(
    standings_1.wins), 
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.driverstandingsid < standings_1.driverid
group by standings_1.date, standings_1.driverid, standings_1.driverstandingsid, standings_1.points, standings_1.position, standings_1.raceid, standings_1.wins
limit 29;
select  
  standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join standings as standings_1
    on (results_1.resultid = standings_1.driverstandingsid )
where results_1.driverid is not NULL
limit 25;
select  
  results_1.grid, 
  results_1.raceid, 
  constructor_results_1.date, 
  races_1.name, 
  results_1.resultid, 
  races_1.raceid, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.raceid is not NULL
limit 4;
select  
  standings_1.driverstandingsid, 
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_results as constructor_results_1
    on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
where standings_1.wins is not NULL
limit 26;
select distinct 
  qualifying_2.date, 
  qualifying_2.qualifyid, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (results_1.resultid = qualifying_1.qualifyid )
where qualifying_2.date is not NULL
limit 2;
select  
  drivers_1.driverref, 
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
limit 26;
select  
  qualifying_1.position, 
  constructor_standings_1.constructorid, 
  sum(
    qualifying_1.position), 
  drivers_1.surname, 
  qualifying_1.number, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  qualifying_1.driverid, 
  drivers_1.dob, 
  qualifying_1.driverid, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  avg(
    constructor_standings_1.points), 
  max(
    constructor_standings_1.points), 
  max(
    drivers_1.dob), 
  qualifying_1.qualifyid, 
  qualifying_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join drivers as drivers_1
      inner join constructor_standings as constructor_standings_1
      on (drivers_1.driverid = constructor_standings_1.constructorstandingsid )
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where qualifying_1.constructorid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, drivers_1.dob, drivers_1.driverref, drivers_1.nationality, drivers_1.surname, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid
limit 27;
select  
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid, 
  max(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.position, 
  qualifying_1.constructorid, 
  qualifying_1.raceid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.number = qualifying_1.constructorid
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 1;
select  
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructor_results as constructor_results_1
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where races_1.time is not NULL
limit 12;
select  
  races_1.name, 
  drivers_1.surname, 
  constructors_1.constructorref, 
  max(
    races_1.date), 
  races_1.date, 
  constructors_1.constructorid, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.forename, 
  min(
    races_1.raceid), 
  max(
    races_1.date), 
  min(
    drivers_1.dob), 
  min(
    drivers_1.dob), 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join constructors as constructors_1
      inner join races as races_1
      on (constructors_1.constructorid = races_1.raceid )
    on (drivers_1.driverid = constructors_1.constructorid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, drivers_1.dob, drivers_1.forename, drivers_1.surname, races_1.date, races_1.name, races_1.raceid
limit 7;
select  
  max(
    standings_1.driverid), 
  races_1.time, 
  races_1.circuitid, 
  races_1.time, 
  standings_1.date, 
  standings_1.driverid, 
  races_1.time, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where races_1.year is not NULL
group by races_1.circuitid, races_1.time, standings_1.date, standings_1.driverid
limit 15;
select  
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points is not NULL
limit 31;
select  
  standings_1.driverstandingsid, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  standings_1.driverstandingsid, 
  standings_1.points, 
  standings_1.wins, 
  qualifying_1.number, 
  standings_1.driverstandingsid, 
  max(
    standings_1.points), 
  qualifying_1.qualifyid, 
  standings_1.date, 
  standings_1.driverstandingsid, 
  avg(
    standings_1.points), 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, standings_1.date, standings_1.driverstandingsid, standings_1.points, standings_1.wins
limit 31;
select  
  min(
    circuits_1.alt), 
  circuits_1.lat, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.country is not NULL
group by circuits_1.lat, circuits_1.lng
limit 24;
select  
  drivers_1.code, 
  drivers_2.surname, 
  min(
    drivers_2.dob), 
  drivers_2.forename, 
  drivers_2.forename, 
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join drivers as drivers_1
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    on (races_1.raceid = drivers_2.driverid )
where races_1.round is not NULL
group by drivers_1.code, drivers_2.forename, drivers_2.surname
limit 20;
select  
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.date > constructor_standings_1.date
limit 23;
select  
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.driverid is not NULL
limit 24;
select  
  standings_1.position, 
  min(
    standings_1.driverstandingsid), 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.wins, 
  min(
    standings_1.date), 
  max(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points >= standings_1.points
group by standings_1.date, standings_1.position, standings_1.raceid, standings_1.wins
limit 35;
select  
  circuits_1.country, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 17;
select  
  drivers_1.forename, 
  circuits_1.alt
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where drivers_1.nationality is not NULL
limit 30;
select  
  standings_1.wins, 
  constructor_standings_1.date, 
  constructor_standings_2.wins, 
  constructor_standings_1.wins, 
  min(
    constructor_standings_2.points), 
  standings_1.driverstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.date), 
  constructor_standings_2.constructorid, 
  standings_1.driverstandingsid, 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join constructor_standings as constructor_standings_1
      on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
    inner join constructor_standings as constructor_standings_2
    on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
where standings_1.driverid is not NULL
group by constructor_standings_1.date, constructor_standings_1.wins, constructor_standings_2.constructorid, constructor_standings_2.wins, standings_1.driverid, standings_1.driverstandingsid, standings_1.wins
limit 30;
select  
  standings_1.date, 
  standings_1.driverid, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.date, 
  min(
    standings_1.date), 
  standings_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
group by standings_1.date, standings_1.driverid, standings_1.raceid
limit 6;
select  
  races_1.raceid, 
  constructors_1.constructorref, 
  min(
    results_1.date), 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join results as results_1
      inner join constructors as constructors_1
      on (results_1.resultid = constructors_1.constructorid )
    on (races_1.raceid = results_1.resultid )
where results_1.points <= results_1.fastestlap
group by constructors_1.constructorref, constructors_1.name, races_1.raceid
limit 14;
select  
  qualifying_1.number, 
  qualifying_1.raceid, 
  count(
    qualifying_1.driverid), 
  qualifying_1.number, 
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.position, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  qualifying_1.qualifyid, 
  qualifying_1.constructorid, 
  qualifying_1.number, 
  qualifying_1.date, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid >= qualifying_1.driverid
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.driverid, qualifying_1.number, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 14;
select  
  standings_1.points, 
  count(
    standings_1.date), 
  sum(
    standings_1.points)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins < standings_1.driverid
group by standings_1.points
limit 16;
select  
  max(
    races_1.circuitid), 
  races_1.raceid, 
  races_1.date, 
  races_1.time, 
  races_1.time, 
  races_1.year, 
  races_1.name, 
  races_1.name, 
  races_1.round, 
  races_1.date, 
  races_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date is not NULL
group by races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 23;
select  
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
        inner join races as races_1
        on (drivers_1.driverid = races_1.raceid )
      inner join qualifying as qualifying_1
      on (races_1.raceid = qualifying_1.qualifyid )
    inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      inner join constructor_standings as constructor_standings_1
      on (circuits_1.circuitid = constructor_standings_1.constructorstandingsid )
    on (races_1.raceid = constructor_results_1.constructorresultsid )
where constructor_standings_1.constructorid is not NULL
limit 19;
select  
  drivers_1.surname, 
  drivers_1.dob, 
  drivers_1.surname, 
  drivers_1.code, 
  drivers_1.nationality, 
  drivers_1.code, 
  min(
    drivers_1.dob), 
  min(
    drivers_1.dob)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.code is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.nationality, drivers_1.surname
limit 21;
select  
  results_1.resultid, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date >= results_1.date
limit 10;
select  
  max(
    results_1.statusid), 
  results_1.points, 
  sum(
    results_1.position), 
  constructor_standings_1.raceid, 
  constructor_standings_2.constructorid, 
  results_1.milliseconds, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_2.position, 
  results_1.positionorder, 
  constructor_standings_1.points, 
  constructor_standings_2.constructorid, 
  constructor_standings_2.constructorstandingsid, 
  results_1.grid, 
  results_1.resultid, 
  results_1.driverid, 
  constructor_standings_1.constructorstandingsid, 
  results_1.constructorid, 
  results_1.positionorder, 
  min(
    results_1.rank), 
  min(
    results_1.position), 
  results_1.positionorder, 
  avg(
    results_1.points), 
  constructor_standings_2.constructorstandingsid, 
  constructor_results_1.constructorresultsid, 
  constructor_standings_2.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
        inner join constructor_results as constructor_results_1
        on (constructor_standings_2.constructorstandingsid = constructor_results_1.constructorresultsid )
      inner join results as results_1
      on (constructor_standings_2.constructorstandingsid = results_1.resultid )
    on (constructor_standings_1.constructorstandingsid = results_1.resultid )
where constructor_results_1.constructorid <= constructor_results_1.constructorresultsid
group by constructor_results_1.constructorresultsid, constructor_standings_1.constructorstandingsid, constructor_standings_1.points, constructor_standings_1.raceid, constructor_standings_2.constructorid, constructor_standings_2.constructorstandingsid, constructor_standings_2.points, constructor_standings_2.position, results_1.constructorid, results_1.driverid, results_1.grid, results_1.milliseconds, results_1.points, results_1.positionorder, results_1.resultid
limit 39;
select  
  standings_1.date, 
  results_1.fastestlap, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
        inner join standings as standings_1
        on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
      inner join results as results_1
        inner join constructor_standings as constructor_standings_1
        on (results_1.resultid = constructor_standings_1.constructorstandingsid )
      on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
    inner join qualifying as qualifying_1
    on (standings_1.driverstandingsid = qualifying_1.qualifyid )
where results_1.number is not NULL
limit 31;
select  
  standings_1.position, 
  standings_1.driverid, 
  standings_1.driverstandingsid, 
  standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join standings as standings_1
    on (constructors_1.constructorid = standings_1.driverstandingsid )
where constructors_1.constructorref is not NULL
limit 40;
select  
  constructors_1.constructorref, 
  count(
    constructors_1.constructorref), 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorref, 
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name
limit 42;
select  
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name is not NULL
limit 2;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.raceid, 
  count(*), 
  constructor_standings_1.wins, 
  max(
    constructor_standings_1.constructorstandingsid), 
  max(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  constructor_standings_1.date, 
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid, constructor_standings_1.wins
limit 38;
select  
  constructor_results_1.date, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid is not NULL
limit 21;
select  
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.date), 
  max(
    constructor_results_1.points), 
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorid, 
  constructor_results_1.points, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 32;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.nationality, 
  count(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name, constructors_1.nationality
limit 3;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position, 
  standings_1.position, 
  constructor_standings_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join constructor_standings as constructor_standings_1
    on (standings_1.driverstandingsid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
limit 40;
select  
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join results as results_2
    on (results_1.resultid = results_2.resultid )
where results_2.position is not NULL
limit 20;
select  
  standings_1.date, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join standings as standings_1
    on (constructor_results_1.constructorresultsid = standings_1.driverstandingsid )
where constructor_results_1.date <= standings_1.date
limit 31;
select  
  circuits_1.country, 
  circuits_1.circuitref, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
limit 18;
select  
  races_1.time, 
  max(
    constructor_results_1.constructorid), 
  constructor_results_1.raceid, 
  races_1.raceid, 
  races_1.name, 
  circuits_1.location, 
  circuits_1.lng, 
  constructors_1.nationality, 
  count(
    races_1.year), 
  races_1.year, 
  constructor_results_1.points, 
  races_1.date, 
  max(
    constructor_results_1.date), 
  constructor_results_1.points, 
  constructors_1.constructorref, 
  circuits_1.alt, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join constructor_results as constructor_results_1
        on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
      inner join circuits as circuits_1
      on (constructors_1.constructorid = circuits_1.circuitid )
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.points = circuits_1.lat
group by circuits_1.alt, circuits_1.lng, circuits_1.location, constructor_results_1.points, constructor_results_1.raceid, constructors_1.constructorref, constructors_1.nationality, races_1.date, races_1.name, races_1.raceid, races_1.time, races_1.year
limit 42;
select  
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_standings as constructor_standings_1
    on (results_1.resultid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date >= results_1.date
limit 35;
select  
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  qualifying_1.qualifyid, 
  circuits_1.lat, 
  circuits_1.circuitid, 
  circuits_1.alt, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  count(*), 
  qualifying_1.raceid, 
  constructor_standings_1.wins, 
  qualifying_1.constructorid, 
  min(
    qualifying_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
      inner join circuits as circuits_1
      on (constructor_standings_1.constructorstandingsid = circuits_1.circuitid )
    on (qualifying_1.qualifyid = circuits_1.circuitid )
where constructor_standings_1.position is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.lat, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.wins, qualifying_1.constructorid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 16;
select  
  constructor_standings_1.position, 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.wins, 
  constructor_standings_1.raceid, 
  constructor_standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points >= constructor_standings_1.points
limit 5;
select  
  sum(
    constructor_standings_1.points), 
  avg(
    constructor_standings_1.points), 
  constructor_standings_1.points, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.date, 
  constructor_standings_1.position, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  min(
    constructor_standings_1.date), 
  min(
    constructor_standings_1.date), 
  constructor_standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.raceid = constructor_standings_1.constructorstandingsid
group by constructor_standings_1.constructorid, constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_1.position, constructor_standings_1.raceid
limit 18;
select  
  standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join races as races_1
    on (standings_1.driverstandingsid = races_1.raceid )
where standings_1.wins is not NULL
limit 40;
select  
  constructors_1.nationality, 
  constructors_1.constructorid, 
  circuits_1.country, 
  constructors_1.constructorref, 
  circuits_1.lng
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
        inner join races as races_1
        on (qualifying_1.qualifyid = races_1.raceid )
      inner join results as results_1
        inner join circuits as circuits_1
        on (results_1.resultid = circuits_1.circuitid )
      on (races_1.raceid = circuits_1.circuitid )
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where constructors_1.nationality >= races_1.name
limit 10;
select  
  qualifying_1.date, 
  qualifying_1.number, 
  qualifying_1.constructorid, 
  count(*), 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid
limit 22;
select  
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.round is not NULL
limit 20;
select  
  qualifying_1.number, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join qualifying as qualifying_1
    on (constructor_results_1.constructorresultsid = qualifying_1.qualifyid )
where qualifying_1.driverid is not NULL
limit 19;
select  
  results_1.constructorid, 
  results_1.raceid, 
  results_1.number, 
  results_1.position, 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date is not NULL
limit 2;
select  
  constructors_1.name, 
  constructor_results_1.date, 
  constructors_1.name, 
  avg(
    constructors_1.constructorid), 
  results_1.raceid, 
  results_1.number, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructors_1.name, 
  count(
    results_1.position), 
  constructor_results_1.date, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join constructor_results as constructor_results_1
      on (constructors_1.constructorid = constructor_results_1.constructorresultsid )
    inner join results as results_1
    on (constructors_1.constructorid = results_1.resultid )
where constructors_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructors_1.constructorid, constructors_1.name, results_1.number, results_1.raceid
limit 13;
select  
  results_1.milliseconds, 
  constructors_1.constructorid, 
  constructors_2.nationality, 
  avg(
    qualifying_1.raceid), 
  qualifying_1.qualifyid, 
  results_1.position, 
  qualifying_1.qualifyid, 
  results_1.statusid, 
  sum(
    results_1.position), 
  constructors_2.name, 
  results_1.constructorid, 
  constructors_2.nationality, 
  sum(
    results_1.points), 
  constructors_1.constructorref, 
  constructors_1.constructorref, 
  max(
    constructors_1.constructorid), 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
      inner join qualifying as qualifying_1
      on (constructors_1.constructorid = qualifying_1.qualifyid )
    inner join constructors as constructors_2
      inner join results as results_1
      on (constructors_2.constructorid = results_1.resultid )
    on (constructors_1.constructorid = results_1.resultid )
where results_1.fastestlap = results_1.milliseconds
group by constructors_1.constructorid, constructors_1.constructorref, constructors_2.name, constructors_2.nationality, qualifying_1.qualifyid, results_1.constructorid, results_1.milliseconds, results_1.position, results_1.statusid
limit 3;
select  
  max(
    constructor_results_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  max(
    constructor_results_1.constructorresultsid), 
  constructor_results_1.constructorresultsid, 
  avg(
    constructor_results_1.points), 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.date, constructor_results_1.points, constructor_results_1.raceid
limit 1;
select  
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 16;
select  
  standings_1.points, 
  standings_1.date, 
  standings_1.date, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.wins is not NULL
limit 20;
select  
  standings_1.position, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join standings as standings_1
    on (qualifying_1.qualifyid = standings_1.driverstandingsid )
where qualifying_1.position is not NULL
group by standings_1.position
limit 41;
select  
  qualifying_1.driverid, 
  constructor_standings_1.date, 
  avg(
    constructor_standings_2.points), 
  qualifying_1.driverid, 
  standings_1.date, 
  standings_1.date, 
  constructor_standings_1.constructorstandingsid, 
  count(*), 
  standings_1.points, 
  standings_1.points, 
  qualifying_1.date, 
  constructor_standings_1.date, 
  constructor_standings_2.points, 
  standings_1.points, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
      inner join qualifying as qualifying_1
      on (standings_1.driverstandingsid = qualifying_1.qualifyid )
    inner join constructor_standings as constructor_standings_1
      inner join constructor_standings as constructor_standings_2
      on (constructor_standings_1.constructorstandingsid = constructor_standings_2.constructorstandingsid )
    on (standings_1.driverstandingsid = constructor_standings_2.constructorstandingsid )
where standings_1.date <= constructor_standings_1.date
group by constructor_standings_1.constructorstandingsid, constructor_standings_1.date, constructor_standings_1.points, constructor_standings_2.points, qualifying_1.date, qualifying_1.driverid, standings_1.date, standings_1.points
limit 31;
select  
  qualifying_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.raceid is not NULL
limit 31;
select  
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.date is not NULL
limit 19;
select  
  min(
    qualifying_1.position), 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.date, 
  qualifying_1.raceid, 
  qualifying_1.number, 
  min(
    qualifying_1.raceid), 
  min(
    qualifying_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.date, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 25;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorid <= constructor_results_1.constructorresultsid
limit 42;
select  
  count(*), 
  races_1.year
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.date > races_1.date
group by races_1.year
limit 36;
select  
  sum(
    results_1.resultid), 
  races_1.name, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join races as races_1
    on (results_1.resultid = races_1.raceid )
where races_1.date = results_1.date
group by races_1.name, races_1.time
limit 20;
select  
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
    inner join constructor_standings as constructor_standings_1
    on (qualifying_1.qualifyid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.constructorid is not NULL
limit 17;
select  
  results_1.fastestlap
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.laps is not NULL
limit 24;
select  
  races_1.raceid, 
  min(
    races_1.date), 
  races_1.round, 
  max(
    races_1.date), 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name = races_1.time
group by races_1.raceid, races_1.round, races_1.time
limit 3;
select  
  standings_1.driverstandingsid, 
  max(
    standings_1.date), 
  standings_1.position, 
  min(
    standings_1.date), 
  max(
    standings_1.points), 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.points = standings_1.points
group by standings_1.date, standings_1.driverstandingsid, standings_1.position
limit 30;
select  
  min(
    standings_1.date), 
  standings_1.raceid, 
  standings_1.raceid, 
  standings_1.driverstandingsid, 
  sum(
    standings_1.points), 
  standings_1.date, 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date < standings_1.date
group by standings_1.date, standings_1.driverstandingsid, standings_1.raceid
limit 14;
select  
  min(
    races_1.date), 
  races_1.time, 
  min(
    races_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.time = races_1.name
group by races_1.time
limit 7;
select  
  constructors_1.name, 
  count(
    constructors_1.constructorid), 
  max(
    drivers_1.dob), 
  drivers_1.code, 
  max(
    drivers_1.dob), 
  constructors_1.constructorref, 
  min(
    drivers_1.dob), 
  drivers_1.surname, 
  constructors_1.constructorref, 
  min(
    drivers_1.dob), 
  drivers_1.code
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join drivers as drivers_1
    on (constructors_1.constructorid = drivers_1.driverid )
where constructors_1.nationality is not NULL
group by constructors_1.constructorref, constructors_1.name, drivers_1.code, drivers_1.surname
limit 42;
select  
  results_1.position, 
  results_1.grid, 
  results_1.laps, 
  results_1.milliseconds, 
  sum(
    results_1.constructorid), 
  results_1.position, 
  results_1.raceid, 
  results_1.grid, 
  results_1.position, 
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number is not NULL
group by results_1.grid, results_1.laps, results_1.milliseconds, results_1.position, results_1.raceid
limit 25;
select  
  constructor_results_1.points, 
  max(
    constructor_results_1.raceid), 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.points < constructor_results_1.points
group by constructor_results_1.constructorid, constructor_results_1.points
limit 20;
select  
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.name < constructors_1.constructorref
limit 28;
select  
  constructor_standings_1.wins, 
  constructor_standings_1.position, 
  sum(
    constructor_standings_1.wins), 
  constructor_standings_1.position, 
  constructor_standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
group by constructor_standings_1.position, constructor_standings_1.wins
limit 10;
select  
  qualifying_1.driverid, 
  qualifying_1.date, 
  qualifying_1.driverid, 
  qualifying_1.position, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
limit 14;
select  
  drivers_1.dob, 
  drivers_1.code, 
  drivers_2.dob, 
  max(
    drivers_3.dob), 
  drivers_1.nationality, 
  drivers_3.dob, 
  drivers_3.code, 
  standings_1.raceid, 
  drivers_2.dob, 
  standings_1.date, 
  drivers_2.surname, 
  standings_1.position, 
  constructors_1.name, 
  drivers_3.nationality, 
  drivers_2.dob, 
  max(
    drivers_2.dob), 
  drivers_3.nationality, 
  drivers_1.forename, 
  constructors_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
        inner join drivers as drivers_1
        on (constructors_1.constructorid = drivers_1.driverid )
      inner join drivers as drivers_2
      on (drivers_1.driverid = drivers_2.driverid )
    inner join drivers as drivers_3
      inner join standings as standings_1
      on (drivers_3.driverid = standings_1.driverstandingsid )
    on (drivers_2.driverid = drivers_3.driverid )
where drivers_1.forename is not NULL
group by constructors_1.name, drivers_1.code, drivers_1.dob, drivers_1.forename, drivers_1.nationality, drivers_2.dob, drivers_2.surname, drivers_3.code, drivers_3.dob, drivers_3.nationality, standings_1.date, standings_1.position, standings_1.raceid
limit 5;
select  
  circuits_1.alt, 
  circuits_1.name, 
  circuits_1.alt, 
  circuits_1.alt, 
  circuits_1.lat, 
  sum(
    circuits_1.circuitid), 
  min(
    circuits_1.lng), 
  circuits_1.circuitid, 
  circuits_1.name, 
  circuits_1.name, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.alt is not NULL
group by circuits_1.alt, circuits_1.circuitid, circuits_1.circuitref, circuits_1.lat, circuits_1.name
limit 38;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  min(
    circuits_1.circuitid), 
  circuits_1.location, 
  sum(
    circuits_1.circuitid), 
  circuits_1.country, 
  avg(
    circuits_1.lng), 
  circuits_1.location, 
  circuits_1.lat, 
  avg(
    circuits_1.lng), 
  max(
    circuits_1.circuitid), 
  circuits_1.lng, 
  circuits_1.alt, 
  circuits_1.circuitref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid = circuits_1.circuitid
group by circuits_1.alt, circuits_1.circuitref, circuits_1.country, circuits_1.lat, circuits_1.lng, circuits_1.location
limit 5;
select  
  constructors_1.name, 
  races_1.time, 
  races_1.time, 
  races_1.date, 
  max(
    races_1.date), 
  constructors_1.constructorref, 
  races_1.time, 
  constructors_1.name, 
  races_1.name, 
  constructors_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join constructors as constructors_1
    on (races_1.raceid = constructors_1.constructorid )
where races_1.raceid > constructors_1.constructorid
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, races_1.date, races_1.name, races_1.time
limit 33;
select  
  constructor_standings_1.points, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
    inner join constructor_standings as constructor_standings_1
    on (constructors_1.constructorid = constructor_standings_1.constructorstandingsid )
where constructor_standings_1.date is not NULL
limit 20;
select  
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  avg(
    drivers_1.driverid), 
  count(
    drivers_1.code), 
  drivers_1.dob, 
  drivers_1.dob, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.surname is not NULL
group by drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality
limit 22;
select  
  circuits_1.lng, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.lng is not NULL
limit 16;
select  
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.code, 
  drivers_1.code, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.surname, 
  count(
    drivers_1.nationality), 
  drivers_1.dob, 
  drivers_1.nationality, 
  drivers_1.driverref, 
  drivers_1.dob
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
group by drivers_1.code, drivers_1.dob, drivers_1.driverid, drivers_1.driverref, drivers_1.nationality, drivers_1.surname
limit 28;
select  
  constructor_results_1.constructorresultsid, 
  results_1.number, 
  max(
    results_1.points), 
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
    inner join constructor_results as constructor_results_1
    on (results_1.resultid = constructor_results_1.constructorresultsid )
where results_1.position is not NULL
group by constructor_results_1.constructorresultsid, constructor_results_1.date, results_1.number
limit 23;
select  
  standings_1.position, 
  standings_1.driverid, 
  standings_1.raceid, 
  standings_1.date, 
  standings_1.date, 
  standings_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
limit 15;
select  
  races_1.round, 
  avg(
    races_1.round), 
  max(
    races_1.date), 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  races_1.time, 
  races_1.raceid, 
  avg(
    constructor_results_1.raceid), 
  races_1.date, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorresultsid, 
  races_1.round, 
  races_1.time, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.points, 
  constructor_results_1.points, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.date is not NULL
group by constructor_results_1.constructorid, constructor_results_1.constructorresultsid, constructor_results_1.points, constructor_results_1.raceid, races_1.date, races_1.raceid, races_1.round, races_1.time
limit 31;
select  
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
limit 24;
select  
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.constructorid, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.date, 
  constructor_results_1.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.points, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date is not NULL
limit 17;
select  
  constructor_results_2.constructorid, 
  races_1.time, 
  standings_1.wins, 
  sum(
    constructor_results_2.constructorresultsid), 
  constructor_results_2.raceid, 
  constructor_results_2.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
        inner join constructor_results as constructor_results_1
        on (races_1.raceid = constructor_results_1.constructorresultsid )
      inner join constructor_results as constructor_results_2
        inner join constructor_results as constructor_results_3
        on (constructor_results_2.constructorresultsid = constructor_results_3.constructorresultsid )
      on (constructor_results_1.constructorresultsid = constructor_results_3.constructorresultsid )
    inner join standings as standings_1
    on (constructor_results_3.constructorresultsid = standings_1.driverstandingsid )
where standings_1.driverstandingsid is not NULL
group by constructor_results_2.constructorid, constructor_results_2.date, constructor_results_2.raceid, races_1.time, standings_1.wins
limit 27;
select  
  drivers_1.driverref, 
  drivers_1.surname, 
  circuits_1.circuitid, 
  circuits_1.lng, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join circuits as circuits_1
    on (drivers_1.driverid = circuits_1.circuitid )
where circuits_1.circuitref is not NULL
limit 20;
select  
  max(
    results_1.date), 
  results_1.grid, 
  results_1.points, 
  results_1.position, 
  results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
group by results_1.grid, results_1.points, results_1.position
limit 1;
select  
  min(
    constructor_results_1.date), 
  constructor_standings_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join constructor_standings as constructor_standings_1
    on (constructor_results_1.constructorresultsid = constructor_standings_1.constructorstandingsid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_standings_1.position
limit 40;
select  
  results_1.number, 
  results_1.laps
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date <= results_1.date
limit 7;
select  
  qualifying_1.qualifyid, 
  qualifying_1.driverid, 
  qualifying_1.qualifyid, 
  min(
    qualifying_1.date), 
  qualifying_1.raceid, 
  qualifying_1.qualifyid, 
  qualifying_1.qualifyid, 
  max(
    qualifying_1.date), 
  qualifying_1.driverid, 
  qualifying_1.raceid, 
  qualifying_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.constructorid is not NULL
group by qualifying_1.driverid, qualifying_1.number, qualifying_1.qualifyid, qualifying_1.raceid
limit 17;
select  
  results_1.raceid, 
  results_1.rank, 
  results_1.date, 
  results_1.date, 
  results_1.positionorder, 
  results_1.positionorder, 
  results_1.milliseconds, 
  min(
    results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.position > results_1.number
group by results_1.date, results_1.milliseconds, results_1.positionorder, results_1.raceid, results_1.rank
limit 13;
select  
  constructor_standings_1.constructorid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.constructorid, 
  constructor_standings_1.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.constructorstandingsid, 
  constructor_standings_1.date, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.points > constructor_standings_1.points
limit 4;
select  
  results_1.resultid, 
  min(
    results_1.date), 
  count(
    results_1.milliseconds), 
  max(
    results_1.driverid), 
  max(
    results_1.date), 
  results_1.number, 
  results_1.grid, 
  count(*), 
  results_1.laps, 
  results_1.statusid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.date is not NULL
group by results_1.grid, results_1.laps, results_1.number, results_1.resultid, results_1.statusid
limit 25;
select  
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.constructorid, 
  sum(
    constructors_1.constructorid), 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.name, 
  constructors_1.constructorid, 
  constructors_1.constructorref, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  constructors_1.constructorid, 
  constructors_1.nationality
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorid is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 42;
select  
  standings_2.wins, 
  constructor_standings_1.points, 
  constructor_standings_1.raceid, 
  constructor_standings_1.raceid, 
  constructor_standings_1.points, 
  standings_1.wins, 
  constructor_standings_1.constructorstandingsid, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
      inner join standings as standings_1
      on (constructor_standings_1.constructorstandingsid = standings_1.driverstandingsid )
    inner join qualifying as qualifying_1
      inner join standings as standings_2
      on (qualifying_1.qualifyid = standings_2.driverstandingsid )
    on (constructor_standings_1.constructorstandingsid = standings_2.driverstandingsid )
where standings_1.driverstandingsid is not NULL
limit 7;
select  
  constructor_results_1.date, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.date > constructor_results_1.date
limit 29;
select  
  min(
    qualifying_1.date), 
  qualifying_1.position, 
  min(
    qualifying_1.date), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  qualifying_1.qualifyid, 
  qualifying_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.qualifyid is not NULL
group by qualifying_1.constructorid, qualifying_1.position, qualifying_1.qualifyid, qualifying_1.raceid
limit 39;
select  
  races_1.raceid, 
  races_1.time
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.raceid is not NULL
limit 2;
select  
  results_1.milliseconds
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.number > results_1.position
limit 8;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
        inner join races as races_1
        on (circuits_1.circuitid = races_1.raceid )
      inner join constructor_results as constructor_results_1
      on (races_1.raceid = constructor_results_1.constructorresultsid )
    inner join races as races_2
    on (constructor_results_1.constructorresultsid = races_2.raceid )
where circuits_1.country is not NULL
limit 34;
select  
  races_1.time, 
  races_1.date, 
  races_1.time, 
  races_1.year, 
  races_1.year, 
  races_1.year, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.name, 
  max(
    races_1.circuitid), 
  races_1.round, 
  races_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.year = races_1.raceid
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 14;
select  
  results_1.statusid, 
  max(
    results_1.laps), 
  max(
    circuits_1.circuitid), 
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join results as results_1
    on (circuits_1.circuitid = results_1.resultid )
where circuits_1.lat <= circuits_1.lng
group by results_1.constructorid, results_1.statusid
limit 30;
select  
  max(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join constructor_results as constructor_results_1
      on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
    inner join circuits as circuits_2
    on (circuits_1.circuitid = circuits_2.circuitid )
where circuits_1.alt is not NULL
limit 2;
select  
  drivers_1.driverref
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.nationality is not NULL
limit 2;
select  
  circuits_1.alt, 
  avg(
    circuits_1.lat), 
  circuits_1.circuitref, 
  circuits_1.lat
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitref is not NULL
group by circuits_1.alt, circuits_1.circuitref, circuits_1.lat
limit 29;
select  
  constructors_1.constructorid, 
  constructors_1.nationality, 
  constructors_1.name, 
  constructors_1.nationality, 
  constructors_1.constructorref, 
  constructors_1.constructorid, 
  count(
    constructors_1.constructorid), 
  constructors_1.nationality, 
  avg(
    constructors_1.constructorid)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.constructorid, constructors_1.constructorref, constructors_1.name, constructors_1.nationality
limit 26;
select  
  races_1.circuitid, 
  standings_1.raceid, 
  races_1.date, 
  standings_1.driverstandingsid, 
  races_1.round
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
        inner join constructor_results as constructor_results_1
        on (standings_1.driverstandingsid = constructor_results_1.constructorresultsid )
      inner join races as races_1
      on (constructor_results_1.constructorresultsid = races_1.raceid )
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where standings_1.wins is not NULL
limit 28;
select  
  races_1.year, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.circuitid, 
  races_1.circuitid, 
  races_1.name, 
  races_1.circuitid, 
  races_1.date, 
  races_1.round, 
  races_1.circuitid, 
  races_1.name, 
  races_1.circuitid, 
  races_1.raceid, 
  races_1.date, 
  races_1.time, 
  races_1.round, 
  count(*), 
  max(
    races_1.date), 
  races_1.round, 
  races_1.name, 
  races_1.raceid, 
  races_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
where races_1.name > races_1.time
group by races_1.circuitid, races_1.date, races_1.name, races_1.raceid, races_1.round, races_1.time, races_1.year
limit 7;
select  
  results_1.rank, 
  results_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.positionorder is not NULL
limit 38;
select  
  circuits_1.country
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.circuitid is not NULL
limit 41;
select  
  circuits_1.lng, 
  circuits_1.lat, 
  circuits_1.name
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
    inner join drivers as drivers_1
      inner join races as races_1
      on (drivers_1.driverid = races_1.raceid )
    on (circuits_1.circuitid = races_1.raceid )
where circuits_1.lng = circuits_1.alt
limit 34;
select  
  results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
      inner join results as results_1
      on (circuits_1.circuitid = results_1.resultid )
    inner join qualifying as qualifying_1
      inner join qualifying as qualifying_2
      on (qualifying_1.qualifyid = qualifying_2.qualifyid )
    on (results_1.resultid = qualifying_1.qualifyid )
where circuits_1.country > circuits_1.circuitref
limit 4;
select  
  qualifying_1.position, 
  constructor_standings_1.constructorid, 
  max(
    constructor_results_1.points), 
  qualifying_1.qualifyid, 
  constructor_standings_1.wins, 
  qualifying_1.qualifyid, 
  constructor_standings_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join qualifying as qualifying_1
      inner join constructor_results as constructor_results_1
      on (qualifying_1.qualifyid = constructor_results_1.constructorresultsid )
    on (constructor_standings_1.constructorstandingsid = constructor_results_1.constructorresultsid )
where qualifying_1.qualifyid is not NULL
group by constructor_standings_1.constructorid, constructor_standings_1.points, constructor_standings_1.wins, qualifying_1.position, qualifying_1.qualifyid
limit 8;
select  
  constructor_standings_1.raceid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
where constructor_standings_1.wins is not NULL
limit 17;
select  
  constructor_results_1.constructorid, 
  constructor_results_2.constructorid, 
  constructor_results_1.raceid, 
  constructor_results_1.constructorresultsid, 
  constructor_results_1.constructorid, 
  results_1.date
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
      inner join circuits as circuits_1
        inner join constructor_results as constructor_results_1
        on (circuits_1.circuitid = constructor_results_1.constructorresultsid )
      on (results_1.resultid = constructor_results_1.constructorresultsid )
    inner join constructor_results as constructor_results_2
    on (results_1.resultid = constructor_results_2.constructorresultsid )
where circuits_1.lng <= constructor_results_1.points
limit 39;
select  
  races_1.raceid, 
  races_1.raceid, 
  races_1.year, 
  races_1.raceid, 
  races_1.time, 
  constructor_results_1.date, 
  min(
    races_1.date), 
  constructor_results_1.points, 
  constructor_results_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
    inner join races as races_1
    on (constructor_results_1.constructorresultsid = races_1.raceid )
where constructor_results_1.constructorresultsid is not NULL
group by constructor_results_1.constructorid, constructor_results_1.date, constructor_results_1.points, races_1.raceid, races_1.time, races_1.year
limit 3;
select  
  max(
    results_1.milliseconds), 
  results_1.grid, 
  results_1.position
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
    inner join results as results_1
    on (standings_1.driverstandingsid = results_1.resultid )
where results_1.position is not NULL
group by results_1.grid, results_1.position
limit 13;
select  
  circuits_1.circuitref, 
  circuits_1.lat, 
  circuits_1.circuitref, 
  circuits_1.circuitref, 
  circuits_1.country, 
  circuits_1.country, 
  circuits_1.alt, 
  circuits_1.lat, 
  circuits_1.location
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  circuits as circuits_1
where circuits_1.name is not NULL
limit 6;
select  
  constructor_standings_1.raceid, 
  races_1.name, 
  constructor_standings_2.constructorid, 
  constructor_standings_2.constructorstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_standings as constructor_standings_1
    inner join constructor_standings as constructor_standings_2
      inner join races as races_1
      on (constructor_standings_2.constructorstandingsid = races_1.raceid )
    on (constructor_standings_1.constructorstandingsid = races_1.raceid )
where constructor_standings_1.raceid is not NULL
limit 36;
select  
  races_1.year, 
  races_1.raceid, 
  races_1.date, 
  races_1.raceid, 
  races_1.circuitid, 
  standings_1.position, 
  standings_1.position, 
  races_1.circuitid, 
  races_1.name, 
  standings_1.driverstandingsid, 
  races_1.year, 
  standings_1.wins
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  races as races_1
    inner join standings as standings_1
    on (races_1.raceid = standings_1.driverstandingsid )
where standings_1.position is not NULL
limit 2;
select  
  constructor_results_1.raceid, 
  max(
    constructor_results_1.points), 
  max(
    constructor_results_1.date)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.constructorresultsid > constructor_results_1.raceid
group by constructor_results_1.raceid
limit 35;
select  
  results_1.fastestlap, 
  drivers_1.forename, 
  drivers_1.driverid, 
  drivers_1.driverref, 
  max(
    results_1.driverid), 
  sum(
    results_1.position), 
  results_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
    inner join results as results_1
    on (drivers_1.driverid = results_1.resultid )
where results_1.positionorder >= results_1.resultid
group by drivers_1.driverid, drivers_1.driverref, drivers_1.forename, results_1.driverid, results_1.fastestlap
limit 35;
select  
  constructors_1.name, 
  constructors_1.name, 
  constructors_1.name, 
  count(*)
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructors as constructors_1
where constructors_1.constructorref is not NULL
group by constructors_1.name
limit 40;
select  
  min(
    standings_1.date), 
  standings_1.driverstandingsid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  standings as standings_1
where standings_1.date is not NULL
group by standings_1.driverstandingsid
limit 17;
select  
  avg(
    qualifying_1.number), 
  qualifying_1.raceid, 
  qualifying_1.number, 
  count(*), 
  qualifying_1.constructorid, 
  qualifying_1.constructorid, 
  max(
    qualifying_1.date), 
  avg(
    qualifying_1.qualifyid), 
  qualifying_1.date, 
  qualifying_1.constructorid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  qualifying as qualifying_1
where qualifying_1.position is not NULL
group by qualifying_1.constructorid, qualifying_1.date, qualifying_1.number, qualifying_1.raceid
limit 9;
select  
  drivers_1.driverref, 
  drivers_1.driverid, 
  drivers_1.driverid
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  drivers as drivers_1
where drivers_1.forename is not NULL
limit 4;
select  
  constructor_results_1.points
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  constructor_results as constructor_results_1
where constructor_results_1.raceid is not NULL
limit 16;
select  
  min(
    results_1.date), 
  results_1.number, 
  results_1.grid, 
  results_1.raceid, 
  results_1.position, 
  results_1.number
, provsql.sr_why(provsql.provenance(), 'provmap') from 
  results as results_1
where results_1.points is not NULL
group by results_1.grid, results_1.number, results_1.position, results_1.raceid
limit 12;
