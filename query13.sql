/*
    Which station is furthest from Meyerson Hall?

    Your query should return only one line, and only give the station id
    (station_id), station name (station_name), and distance (distance) from
    Meyerson Hall, rounded to the nearest 50 meters.
*/

-- Enter your SQL query here
SELECT 
    id as station_id,
    name as station_name,
    (ST_Distance(geog::geography, ST_MakePoint(-75.192584, 39.952415)::geography)) as distance
FROM indego.station_statuses
ORDER BY 
    distance DESC
LIMIT 1;