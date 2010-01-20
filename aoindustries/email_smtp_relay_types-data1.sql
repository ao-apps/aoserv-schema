COPY "email_smtp_relay_types" FROM stdin;
allow	OK
allow_relay	RELAY
deny	REJECT
deny_spam	550 Your mailer \\(%h\\) has been reported as sending unsolicited email and has been blocked - please contact AO Industries via \\(205\\)454-2556 or support@aoindustries.com
\.
