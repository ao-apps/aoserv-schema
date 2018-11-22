select aosh.add_command(
  'add_httpd_site_authenticated_location',
  'web',
  'httpd_site_authenticated_locations',
  'adds an authenticated location to a web site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>is_regular_expression</i> <i>auth_name</i> {""|<i>auth_group_file</i>} {""|<i>auth_user_file</i>} <i>require</i> {""|<i>handler</i>}',
  '1.81.13',
  null
);
select aosh.add_command(
  'set_httpd_site_authenticated_location_attributes',
  'web',
  'httpd_site_authenticated_locations',
  'updates an authenticated location on a web site',
  '<i>site_name</i> <i>ao_server</i> <i>path</i> <i>is_regular_expression</i> <i>auth_name</i> {""|<i>auth_group_file</i>} {""|<i>auth_user_file</i>} <i>require</i> {""|*|<i>handler</i>}',
  '1.81.13',
  null
);
