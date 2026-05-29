# START HERE: StratifyAI Enterprise Foundation

This is a full SaaS foundation for an AI consulting software platform.

## Product name

**StratifyAI Enterprise**

## What is included

- Public marketing website
- Product name and SVG logo
- User account creation
- Login/logout
- Account profile endpoint
- Client/company workspace creation
- AI readiness assessment
- AI initiative recommendations
- Governance controls
- PDF report export
- Pricing page
- Stripe payment foundation
- Website download page
- Direct downloadable software ZIP inside the website
- Beginner local startup scripts

## First-time setup

Install these first:

1. Python 3.11 or newer
2. Node.js LTS

Then run the starter for your computer:

- Windows: double-click `START_WINDOWS.bat`
- Mac: double-click `START_MAC.command`
- Linux: run `./START_LINUX.sh`

Open the app:

```text
http://localhost:5173
```

Backend API docs:

```text
http://localhost:8000/docs
```

## Demo flow

1. Open the website.
2. Click **Create account**.
3. Create a test user.
4. Go to Dashboard.
5. Create a client workspace.
6. Run a sample AI assessment.
7. Download the PDF report.
8. Visit the Download page to download the full software ZIP.

## Payments

The payment system is wired for Stripe Checkout.

By default, `.env` uses demo payment mode:

```text
DEMO_PAYMENT_MODE=true
```

To take real payments, create a Stripe account, create a subscription price, and add:

```text
STRIPE_SECRET_KEY=sk_live_or_test_key
STRIPE_PRICE_ID=price_your_price_id
DEMO_PAYMENT_MODE=false
```

## Important production warning

This is a strong software foundation, but it is not automatically Fortune 500 production-certified. Before selling to large enterprises, add SSO/SAML, SOC 2 controls, external penetration testing, legal review, privacy review, real audit logging, tenant isolation, and enterprise deployment hardening.
