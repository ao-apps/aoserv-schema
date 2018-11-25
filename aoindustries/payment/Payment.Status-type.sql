CREATE TYPE payment."Payment.Status" AS ENUM (
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
COMMENT ON TYPE payment."Payment.Status"
IS 'Matches enum com.aoindustries.creditcards.Transaction.Status';
