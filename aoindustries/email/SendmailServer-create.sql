create sequence email."SendmailServer_pkey_seq" cycle;
grant all    on email."SendmailServer_pkey_seq" to aoadmin;
grant select on email."SendmailServer_pkey_seq" to aoserv_app;

create table email."SendmailServer" (
  pkey integer
    default nextval('email."SendmailServer_pkey_seq"')
    primary key,
  ao_server integer
    not null,
  "name" text
    check ("name" is null or length("name") > 0),
  package integer
    not null,
  hostname text
    check(
      hostname is null
      or (
        hostname=lower(hostname) -- Must be all lowercase
        and hostname!='default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
      )
    ),
  server_certificate integer not null,
  client_certificate integer not null,
  allow_plaintext_auth boolean not null
    -- See also SendmailServer.DEFAULT_ALLOW_PLAINTEXT_AUTH
    default false,
  max_queue_children integer
    -- See also SendmailServer.DEFAULT_MAX_QUEUE_CHILDREN
    default 100
    check (
      max_queue_children is null
      or max_queue_children > 0
    ),
  nice_queue_run integer
    -- See also SendmailServer.DEFAULT_NICE_QUEUE_RUN
    default 10
    check (
      nice_queue_run is null
      or nice_queue_run > 0
    ),
  delay_la integer
    -- See also SendmailServer.DEFAULT_DELAY_LA
    default 40
    check (
      delay_la is null
      or delay_la > 0
    ),
  queue_la integer
    -- See also SendmailServer.DEFAULT_QUEUE_LA
    default 50
    check (
      queue_la is null
      or queue_la > delay_la
    ),
  refuse_la integer
    -- See also SendmailServer.DEFAULT_REFUSE_LA
    default 80
    check (
      refuse_la is null
      or refuse_la > queue_la
    ),
  max_daemon_children integer
    -- See also SendmailServer.DEFAULT_MAX_DAEMON_CHILDREN
    default 1000
    check (
      max_daemon_children is null
      or max_daemon_children > 0
    ),
  bad_rcpt_throttle integer
    -- See also SendmailServer.DEFAULT_BAD_RCPT_THROTTLE
    default 10
    check (
      bad_rcpt_throttle is null
      or bad_rcpt_throttle > 0
    ),
  connection_rate_throttle integer
    -- See also SendmailServer.DEFAULT_CONNECTION_RATE_THROTTLE
    default 100
    check (
      connection_rate_throttle is null
      or connection_rate_throttle > 0
    ),
  max_message_size integer
    -- See also SendmailServer.DEFAULT_MAX_MESSAGE_SIZE
    default 100000000
    check (
      max_message_size is null
      or max_message_size > 0
    ),
  min_free_blocks integer
    -- See also SendmailServer.DEFAULT_MIN_FREE_BLOCKS
    default 65536
    check (
      min_free_blocks is null
      or min_free_blocks > 0
    ),
  "clientAddrInet"  integer,
  "clientAddrInet6" integer
);
grant all    on email."SendmailServer" to aoadmin;
grant select on email."SendmailServer" to aoserv_app;
