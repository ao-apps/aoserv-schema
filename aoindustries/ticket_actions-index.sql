create index ticket_actions_ticket_idx on ticket_actions (
  ticket
);
create index ticket_actions_administrator_idx on ticket_actions (
  administrator
);
create index ticket_actions_action_type_idx on ticket_actions (
  action_type
);
