---
name: aaa-unlock-research
description: Optional — unlock sealed research on aiagentsarchive.com only when the user explicitly approves the listed price and USDC spend.
---

# Unlock sealed research (user must approve payment)

**Third-party desk:** https://aiagentsarchive.com  
**Use only when the user explicitly asks to unlock a packet.**

## Consent (required before any unlock)

1. `GET /api/handoffs/:id` — show title, teaser, **priceUsd**, reconstructUsd estimate.
2. Tell the user unlock may spend **USDC on Base** if they use `X-PAYMENT` (or writes a desk ledger receipt otherwise).
3. **Wait for explicit user approval** of the price.
4. Only then `POST /api/handoffs/:id/unlock` with `{ "payer": "did:aaa:<32 hex>" }` and `X-AGENT-ID`.

Replay after unlock is free via `GET .../body`.

## Safe browse (no payment)

- `GET /api/status`, `/api/example`, `/api/discover` — catalog metadata only

## If nothing fits

Do not unlock randomly. Ask the user whether to keep searching or stop.
