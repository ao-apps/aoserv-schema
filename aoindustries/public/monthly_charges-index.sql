create index monthly_charges_accounting_idx on monthly_charges (
  accounting
);
create index monthly_charges_package_idx on monthly_charges (
  package
);
create index monthly_charges_type_idx on monthly_charges (
  "type"
);
create index monthly_charges_created_by_idx on monthly_charges (
  created_by
);
