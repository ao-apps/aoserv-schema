create index "MonthlyCharge_accounting_fkey" on billing."MonthlyCharge" (
  accounting
);
create index "MonthlyCharge_package_fkey" on billing."MonthlyCharge" (
  package
);
create index "MonthlyCharge_type_fkey" on billing."MonthlyCharge" (
  "type"
);
create index "MonthlyCharge_rate.currency_fkey" on billing."MonthlyCharge" (
  "rate.currency"
);
create index "MonthlyCharge_created_by_fkey" on billing."MonthlyCharge" (
  created_by
);
