CREATE TYPE infrastructure."PhysicalServer.UpsType" AS ENUM (
  'none',
  'datacenter',
  'apc'
);
COMMENT ON TYPE infrastructure."PhysicalServer.UpsType" IS
'┌────────────┬──────────────────────────────────────────────────────────────────┐
│  Element   │                             Comment                              │
├────────────┼──────────────────────────────────────────────────────────────────┤
│ none       │ No UPS is supporting this device.                                │
│ datacenter │ The UPS is provided by the datacenter,                          ↵│
│            │ but cannot be monitored for clean shutdown.                      │
│ apc        │ The UPS is an APC model and can be monitored for clean shutdown. │
└────────────┴──────────────────────────────────────────────────────────────────┘

Matches enum com.aoindustries.aoserv.client.infrastructure.PhysicalServer.UpsType';
