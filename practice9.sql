-- Subquery

-- Use subqueries in the where condition
-- Use subqueries in a from
-- In a Join
-- As part of the main select as a calculated column
-- We use subqueries in an where exists (where in ())
from outer_table
where exists (select id, from inner_table where inner_table.id = outer_table.id)
-- for lateral subqueries
-- Common Table Expressions, is a temporal table created from a subquery.

WITH temporal_table_name (c1,c2,c3 ...)
as (subquery)
select
