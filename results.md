# What drives state auto loan delinquency? (2025 Q4)

## Answer
States with lower median income have higher auto delinquency:
about 1.5 points more per $25K less income, holding unemployment fixed.
Higher unemployment also predicts more delinquency (~0.6 points per 1-point rise).

## Results
| | All 51 | No DC (main) |
|---|---|---|
| unemp | 1.14 (0.28) | 0.59 (0.20) |
| income_k | -0.041 (0.017) | -0.059 (0.012) |
| R² | 0.29 | 0.39 |
| N | 51 | 50 |
(standard errors in parentheses)

# Dropping DC keeps both coefficients' signs and significance. Unemployment effect roughly halves (1.14 to 0.59). Income effect strengthens (-0.041 to -0.059)

# Our main model omits DC because it compares a single urban city to entire states. It inflated unemployment's slope

## Diagnostics
- Multicollinearity: VIFs under 1.4, so no problem.
- Heteroskedasticity: Breusch-Pagan p = 0.51, so no evidence of uneven misses; HC1 robust SEs give the same conclusions.

## Limits
- We only have 51 rows (with DC), so there is noise in the estimates
- Data is one-year snapshot of delinquency in 2025
- Omitted variables such as credit scores, loan terms and car prices

## Why a lender cares
Each 1-point rise in a state’s unemployment rate goes with about 0.6 points more auto delinquency, and each $10K less median income with about 0.6 points more. A lender can use this to set loan-loss reserves and pricing by state, and pair it with an unemployment forecast like Project 1 to see risk coming before it shows up in late payments.