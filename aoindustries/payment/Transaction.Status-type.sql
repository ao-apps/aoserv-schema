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
COMMENT ON TYPE payment."Transaction.Status"
IS 'Matches enum com.aoindustries.creditcards.Transaction.Status';
