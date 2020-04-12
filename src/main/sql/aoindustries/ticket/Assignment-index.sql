create unique index "Assignment_uni" on ticket."Assignment" (
  ticket,
  reseller
);
create index "Assignment_reseller_fkey" on ticket."Assignment" (
  reseller
);
create index "Assignment_administrator_fkey" on ticket."Assignment" (
  administrator
);
