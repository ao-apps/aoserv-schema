begin;
insert into ticket."ActionType" values('set_business', false); -- Was SB
insert into ticket."ActionType" values('set_contact_emails', false); -- Was SE
insert into ticket."ActionType" values('set_contact_phone_numbers', false); -- Was SP
insert into ticket."ActionType" values('set_client_priority', false); -- Was CP
insert into ticket."ActionType" values('set_summary', false);
insert into ticket."ActionType" values('add_annotation', false); -- Was WK
insert into ticket."ActionType" values('set_type', true);
insert into ticket."ActionType" values('set_status', false); -- Was AH, AK, BO, CH, CK, CO, RE
insert into ticket."ActionType" values('set_admin_priority', true); -- Was AP
insert into ticket."ActionType" values('assign', true); -- Was AS
insert into ticket."ActionType" values('set_category', false); -- Was TY
insert into ticket."ActionType" values('set_internal_notes', true);
commit;

-- These are no longer used:
-- OP	Ticket opened
-- DL	Ticket deadline changed
-- TC	Relevent technology changed
