-- Matches enum com.aoindustries.creditcards.AuthorizationResult.ApprovalResult
CREATE TYPE payment."AuthorizationResult.ApprovalResult" AS ENUM (
  'APPROVED',
  'DECLINED',
  'HOLD'
);
