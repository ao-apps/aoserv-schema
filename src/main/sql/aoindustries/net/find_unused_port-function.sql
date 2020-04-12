CREATE OR REPLACE FUNCTION net.find_unused_port (
  _server integer,
  _from_port "com.aoindustries.net"."Port",
  _net_protocol "com.aoindustries.net"."Protocol"
)
RETURNS "com.aoindustries.net"."Port" AS $$
DECLARE
  _port "com.aoindustries.net"."Port" := _from_port;
BEGIN
  IF
    _server IS NULL
    OR _from_port IS NULL
    OR _net_protocol IS NULL
  THEN
    RETURN null;
  END IF;
  -- This iterative approach could be faster with crafty selects, but this is
  -- not performance sensitive, so we're just going for the simplest approach
  LOOP
    IF NOT EXISTS (
      SELECT nb.port FROM net."Bind" nb WHERE
        nb.server = _server
        AND nb.port = _port
        AND nb.net_protocol = _net_protocol
    ) THEN
      RETURN _port;
    END IF;
    EXIT WHEN _port >= 65535;
    _port := _port + 1;
  END LOOP;
  RAISE EXCEPTION 'No available port found for server: %:%/%', _server, _from_port, _net_protocol;
END;
$$ LANGUAGE plpgsql
VOLATILE
RETURNS NULL ON NULL INPUT;

COMMENT ON FUNCTION net.find_unused_port (
  integer,
  "com.aoindustries.net"."Port",
  "com.aoindustries.net"."Protocol"
) IS 'Find an available port starting at the provided port number.
The port will not be used any any IP address on the server';

CREATE OR REPLACE FUNCTION net.find_unused_port (
  _server integer,
  _ip_address integer,
  _from_port "com.aoindustries.net"."Port",
  _net_protocol "com.aoindustries.net"."Protocol",
  _app_protocol text
)
RETURNS "com.aoindustries.net"."Port" AS $$
DECLARE
  _port "com.aoindustries.net"."Port" := _from_port;
BEGIN
  IF
    _server IS NULL
    OR _ip_address IS NULL
    OR _from_port IS NULL
    OR _net_protocol IS NULL
    OR _app_protocol IS NULL
  THEN
    RETURN null;
  END IF;
  -- If the wildcard IP is given, use the other function
  IF
    (SELECT device FROM net."IpAddress" WHERE id = _ip_address) IS NULL
  THEN
    RETURN net.find_unused_port(_server, _from_port, _net_protocol);
  END IF;
  -- This iterative approach could be faster with crafty selects, but this is
  -- not performance sensitive, so we're just going for the simplest approach
  LOOP
    IF
      -- Must not be used on the given IP address
      NOT EXISTS (
        SELECT nb.port FROM net."Bind" nb WHERE
          nb.server = _server
          AND nb."ipAddress" = _ip_address
          AND nb.port = _port
          AND nb.net_protocol = _net_protocol
      )
      -- Must not be used by a different application protocol on a different IP address.
      -- This is to work within the SELinux constraint that a port number type is across all IP addresses.
      AND NOT EXISTS (
        SELECT nb.port FROM
          net."Bind" nb
          INNER JOIN net."IpAddress" ia ON nb."ipAddress" = ia.id
        WHERE
          nb.server = _server
          AND nb.port = _port
          AND nb.net_protocol = _net_protocol
          AND nb.app_protocol != _app_protocol
      )
      -- Must not be used by the wildcard IP on the server (as indicated by a null net_device
      AND NOT EXISTS (
        SELECT nb.port FROM
          net."Bind" nb
          INNER JOIN net."IpAddress" ia ON nb."ipAddress" = ia.id
        WHERE
          nb.server = _server
          AND ia.device IS NULL
          AND nb.port = _port
          AND nb.net_protocol = _net_protocol
      )
    THEN
      RETURN _port;
    END IF;
    EXIT WHEN _port >= 65535;
    _port := _port + 1;
  END LOOP;
  RAISE EXCEPTION 'No available port found for server: %/%:%/%', _server, _ip_address, _from_port, _net_protocol;
END;
$$ LANGUAGE plpgsql
VOLATILE
RETURNS NULL ON NULL INPUT;

COMMENT ON FUNCTION net.find_unused_port (
  integer,
  integer,
  "com.aoindustries.net"."Port",
  "com.aoindustries.net"."Protocol",
  text
) IS 'Find an available port on the given IP address starting at the provided port
number.  The port will:

1) Not be used on the given IP address.

2) Not be used on any wildcard IP address on the server.

3) Not be used on a different IP address with a different application protocol.
   This is to work within the SELinux constraint that a port number type is
   across all IP addresses.';
