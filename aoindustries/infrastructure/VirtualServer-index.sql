create index "VirtualServer_minimum_processor_type_fkey" on infrastructure."VirtualServer" (
  minimum_processor_type
);
create index "VirtualServer_minimum_processor_architecture_fkey" on infrastructure."VirtualServer" (
  minimum_processor_architecture
);
