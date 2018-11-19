select "schema".add_column('businesses', 'accounting', 0, 'accounting', false, true, false, 'the unique identifier for this business.', '1.0a100', null);
select "schema".add_column('businesses', 'contract_version', 1, 'string', true, false, false, 'the version number of the contract', '1.0a100', null);
select "schema".add_column('businesses', 'created', 2, 'time', false, false, false, 'the time the account was created', '1.0a100', null);
select "schema".add_column('businesses', 'canceled', 3, 'time', true, false, false, 'the time the account was deactivated', '1.0a100', null);
select "schema".add_column('businesses', 'cancel_reason', 4, 'string', true, false, false, 'the reason the account was canceled', '1.0a100', null);
select "schema".add_column('businesses', 'parent', 5, 'accounting', true, false, false, 'the parent business to this one', '1.0a100', null);
select "schema".add_column('businesses', 'can_add_backup_server', 6, 'boolean', false, false, false, 'the business may add servers to the backup system', '1.0a102', null);
select "schema".add_column(
    'businesses',
    'can_add_businesses',
    7,
    'boolean',
    false,
    false,
    false,
    'if <code>true</code> this business can create
and be the parent of other businesses',
    '1.0a100',
    null
);
select "schema".add_column('businesses', 'can_set_prices', 8, 'boolean', false, false, false, '', '1.0a100', '1.0a122');
select "schema".add_column('businesses', 'can_see_prices', 9, 'boolean', false, false, false, 'if <code>false</code>, prices are filtered', '1.0a103', null);
select "schema".add_column('businesses', 'disable_log', 10, 'fkey', true, false, false, 'indicates the business is disabled', '1.0a100', null);
select "schema".add_column('businesses', 'do_not_disable_reason', 11, 'string', true, false, false, 'a reason why we should not disable the account', '1.0a100', null);
select "schema".add_column(
    'businesses',
    'auto_enable',
    12,
    'boolean',
    false,
    false,
    false,
    'allows the account to be automatically reenabled
on payment',
    '1.0a100',
    null
);
select "schema".add_column(
    'businesses',
    'bill_parent',
    13,
    'boolean',
    false,
    false,
    false,
    'if <code>true</code>, the parent business will
be charged for all resources used by this
account',
    '1.0a100',
    null
);
