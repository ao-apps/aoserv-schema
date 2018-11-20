select aosh.add_command(
  'add_httpd_site_url',
  'httpd',
  'httpd_site_urls',
  'adds a hostname to a web site',
  '<i>httpd_site_bind_pkey</i> <i>hostname</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_httpd_site_url',
  'httpd',
  'httpd_site_urls',
  'removes a hostname from a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_primary_httpd_site_url',
  'httpd',
  'httpd_site_urls',
  'sets the primary hostname for one specific IP address and port',
  '<i>pkey</i>',
  '1.0a100',
  null
);
