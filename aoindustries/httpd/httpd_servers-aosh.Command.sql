select aosh.add_command(
  'get_httpd_server_concurrency',
  'httpd',
  'httpd_servers',
  'gets the current concurrency of an HTTP server instance',
  '<i>ao_server</i> {""|<i>name</i>}',
  '1.81.11',
  null
);
