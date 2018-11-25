-- Matches enum com.aoindustries.creditcards.Transaction.Status
CREATE TYPE payment."Transaction.Status" AS ENUM (
  'PROCESSING',
  'LOCAL_ERROR',
  'IO_ERROR',
  'GATEWAY_ERROR',
  'AUTHORIZED',
  'CAPTURED',
  'DECLINED',
  'HOLD',
  'VOID',
  'CHARGEBACK'
);
