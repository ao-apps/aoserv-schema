CREATE TYPE account."Profile.EmailFormat" AS ENUM (
  'HTML',
  'HTML_ONLY',
  'TEXT'
);
COMMENT ON TYPE account."Profile.EmailFormat" IS
'┌───────────┬───────────────────────────────────┐
│  Element  │              Comment              │
├───────────┼───────────────────────────────────┤
│ HTML      │ HTML allowing embedded images.    │
│ HTML_ONLY │ HTML without any embedded images. │
│ TEXT      │ Plaintext only.                   │
└───────────┴───────────────────────────────────┘

Matches enum com.aoindustries.aoserv.client.account.Profile.EmailFormat';
