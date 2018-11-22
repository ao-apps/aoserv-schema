select aosh.add_command(
  'add_majordomo_list',
  'email',
  'majordomo_lists',
  'adds a new Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'check_majordomo_list_name',
  'email',
  'majordomo_lists',
  'checks the format of a Majordomo list name',
  '<i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_majordomo_info_file',
  'email',
  'majordomo_lists',
  'gets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'get_majordomo_intro_file',
  'email',
  'majordomo_lists',
  'gets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_info_file',
  'email',
  'majordomo_lists',
  'sets the info file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'set_majordomo_intro_file',
  'email',
  'majordomo_lists',
  'sets the intro file for a Majordomo list',
  '<i>domain</i> <i>ao_server</i> <i>list_name</i> <i>file</i>',
  '1.0a100',
  null
);
