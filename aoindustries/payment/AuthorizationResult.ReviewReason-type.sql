-- Matches enum com.aoindustries.creditcards.AuthorizationResult.ReviewReason
CREATE TYPE payment."AuthorizationResult.ReviewReason" AS ENUM (
  'RISK_MANAGEMENT',
  'ACCEPTED_MERCHANT_REVIEW',
  'ACCEPTED_AUTHORIZED_MERCHANT_REVIEW'
);
