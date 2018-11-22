select aosh.add_command(
  'disable_httpd_site_bind',
  'web',
  'httpd_site_binds',
  'disables one network port of a web site',
  '<i>pkey</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_httpd_site_bind',
  'web',
  'httpd_site_binds',
  'enables one network port of a web site',
  '<i>pkey</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_bind_is_manual',
  'web',
  'httpd_site_binds',
  'sets the is_manual flag for one network port of a web site',
  '<i>pkey</i> <i>is_manual</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_httpd_site_bind_redirect_to_primary_hostname',
  'web',
  'httpd_site_binds',
  'sets the redirect_to_primary_hostname flag for one network port of a web site',
  '<i>pkey</i> <i>redirect_to_primary_hostname</i>',
  '1.19',
  null
);
