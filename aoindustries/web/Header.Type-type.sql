CREATE TYPE web."Header.Type" AS ENUM (
  'Header',
  'RequestHeader'
);
COMMENT ON TYPE web."Header.Type" IS
'Matches enum com.aoindustries.aoserv.client.web.Header.Type';
