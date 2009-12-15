create index monthly_charges_accounting_idx on monthly_charges (
  accounting
);
create index monthly_charges_source_accounting_idx on monthly_charges (
  source_accounting
);
create index monthly_charges_type_idx on monthly_charges (
  "type"
);
create index monthly_charges_created_by_idx on monthly_charges (
  created_by
);
