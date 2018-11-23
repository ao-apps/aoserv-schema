create index "PhysicalServer_rack_fkey" on infrastructure."PhysicalServer" (
  rack
);
create index "PhysicalServer_processor_type_fkey" on infrastructure."PhysicalServer" (
  processor_type
);
