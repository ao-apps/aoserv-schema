select "schema".add_column('email', 'sendmail_smtp_stats', 'pkey',                 'pkey',    false,  true, false, 'a generated unique key', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'package',              'package', false, false, false, 'the package that owns this entry', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'date',                 'date',    false, false, false, 'the date of the statistics', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'ao_server',            'fkey',    false, false, false, 'the pkey of the server processing the emails', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_in_count',       'int',     false, false, false, 'the number of emails received', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_in_count',      'int',     false, false, false, 'the number of emails beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_in_bandwidth',   'long',    false, false, false, 'the amount of bandwidth consumed', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_in_bandwidth',  'long',    false, false, false, 'the amount of bandwidth beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_out_count',      'int',     false, false, false, 'the number of emails sent', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_out_count',     'int',     false, false, false, 'the number of emails beyond the package limit', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'email_out_bandwidth',  'long',    false, false, false, 'the amount of bandwidth consumed', '1.0a100', '1.30');
select "schema".add_column('email', 'sendmail_smtp_stats', 'excess_out_bandwidth', 'long',    false, false, false, 'the amount of bandwidth beyond the package limit', '1.0a100', '1.30');
