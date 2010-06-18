create unique index package_definition_businesses_uni on package_definition_businesses (
  accounting,
  package_definition
);
create index package_definition_businesses_package_definition_idx on package_definition_businesses (
  package_definition,
  approved
);
