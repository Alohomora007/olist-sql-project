CREATE SCHEMA IF NOT EXISTS staging;
CREATE SCHEMA IF NOT EXISTS analytics;
SELECT schema_name
FROM information_schema.schemata
WHERE schema_name IN ('staging', 'analytics');

SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_schema = 'staging';
