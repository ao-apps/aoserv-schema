create index ticket_actions_ticket_idx on ticket_actions (
  ticket
);
create index ticket_actions_administrator_idx on ticket_actions (
  administrator
);
create index ticket_actions_action_type_idx on ticket_actions (
  action_type
);
create index ticket_actions_old_accounting_idx on ticket_actions (
  old_accounting
);
create index ticket_actions_new_accounting_idx on ticket_actions (
  new_accounting
);
create index ticket_actions_old_priority_idx on ticket_actions (
  old_priority
);
create index ticket_actions_new_priority_idx on ticket_actions (
  new_priority
);
create index ticket_actions_old_type_idx on ticket_actions (
  old_type
);
create index ticket_actions_new_type_idx on ticket_actions (
  new_type
);
create index ticket_actions_old_status_idx on ticket_actions (
  old_status
);
create index ticket_actions_new_status_idx on ticket_actions (
  new_status
);
create index ticket_actions_old_assigned_to_idx on ticket_actions (
  old_assigned_to
);
create index ticket_actions_new_assigned_to_idx on ticket_actions (
  new_assigned_to
);
create index ticket_actions_old_category_idx on ticket_actions (
  old_category
);
create index ticket_actions_new_category_idx on ticket_actions (
  new_category
);
