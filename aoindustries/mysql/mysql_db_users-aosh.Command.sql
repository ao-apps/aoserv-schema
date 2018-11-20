select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i>',
  '1.0a100',
  '1.0a110'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i>',
  '1.0a111',
  '1.3'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i>',
  '1.4',
  '1.53'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i> <i>can_event</i> <i>can_trigger</i>',
  '1.54',
  '1.81.1'
);
select aosh.add_command(
  'add_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'grants a MySQL user permission to access a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i> <i>can_select</i> <i>can_insert</i> <i>can_update</i> <i>can_delete</i> <i>can_create</i> <i>can_drop</i> <i>can_reference</i> <i>can_index</i> <i>can_alter</i> <i>can_create_temp_table</i> <i>can_lock_tables</i> <i>can_create_view</i> <i>can_show_view</i> <i>can_create_routine</i> <i>can_alter_routine</i> <i>can_execute</i> <i>can_event</i> <i>can_trigger</i>',
  '1.81.2',
  null
);
select aosh.add_command(
  'remove_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'removes a MySQL user''s access to a MySQL database',
  '<i>database_name</i> <i>ao_server</i> <i>username</i>',
  '1.0a100',
  '1.3'
);
select aosh.add_command(
  'remove_mysql_db_user',
  'mysql',
  'mysql_db_users',
  'removes a MySQL user''s access to a MySQL database',
  '<i>database_name</i> <i>mysql_server</i> <i>ao_server</i> <i>username</i>',
  '1.4',
  null
);
select aosh.add_command(
  'wait_for_mysql_db_user_rebuild',
  'mysql',
  'mysql_db_users',
  'waits for any pending or current MySQL permission config rebuilds to complete',
  '<i>ao_server</i>',
  '1.0a100',
  null
);
