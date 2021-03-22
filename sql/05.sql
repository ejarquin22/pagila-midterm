/*
 * Reorder the columns in the following SQL table so that the resulting table minimizes disk usage.
 * You do not need to compute the total disk usage per row.
 */
CREATE TABLE project (
    author_id BIGINT NOT NULL,
    updated_at TIMESTAMPTZ,
    created_at TIMESTAMPTZ,
    id SERIAL PRIMARY KEY,
    project_id INTEGER NOT NULL UNIQUE,
    target_id INTEGER NOT NULL,
    action SMALLINT NOT NULL,
    data TEXT,
    title VARCHAR(256),
    target_type VARCHAR(2) NOT NULL
);

/*
SELECT a.attname, t.typname, t.typalign, t.typlen
  FROM pg_class c
  JOIN pg_attribute a ON (a.attrelid = c.oid)
  JOIN pg_type t ON (t.oid = a.atttypid)
 WHERE c.relname = 'project'
   AND a.attnum >= 0
 ORDER BY a.attnum;

SELECT a.attname, t.typname, t.typalign, t.typlen
  FROM pg_class c
  JOIN pg_attribute a ON (a.attrelid = c.oid)
  JOIN pg_type t ON (t.oid = a.atttypid)
 WHERE c.relname = 'project'
   AND a.attnum >= 0
 ORDER BY t.typlen DESC;
*/

