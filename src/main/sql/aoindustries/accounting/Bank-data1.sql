-- TODO: Review this and other data files for things that are AO-specific
-- TODO: Either delete completely or move into a separate project that is not shared publicly.
begin;
insert into accounting."Bank" values('compass', 'Compass Bank');
insert into accounting."Bank" values('southtrust', 'SouthTrust');
commit;
