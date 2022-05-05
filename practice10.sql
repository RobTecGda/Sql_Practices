-- Extensions
  -- Add Capability to sql
--> To enable
  CREATE EXTENSION <extension_name>;
  
-- Challenge
-- Instead of using the office as pivote column use the flavor.
SELECT * FROM crosstab('SELECT flavor, office, count(*)
               FROM ice_cream_survey
               GROUP BY flavor, office
               ORDER BY flavor',

              'SELECT office
               FROM ice_cream_survey
               GROUP BY office
               ORDER BY office')

AS (flavor text, "Downtown" bigint, "Midtown" bigint, "Uptown" bigint);
