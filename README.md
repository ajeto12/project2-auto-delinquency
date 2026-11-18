# What drives auto loan delinquency across U.S. states?

**Question:** Do states with higher unemployment or lower income have more auto loans that are seriously delinquent (90+ days late)?

**Data:** 2025 Q4 auto delinquency and auto debt per person (NY Fed Consumer Credit Panel), 2025 state unemployment (BLS LAUS), and median household income (Census ACS, table B19013). 50 states, with DC tested separately.

**Finding:** Income is the strongest driver of delinquency. States with $10K higher median income have about 0.6 points lower delinquency, and each extra point of unemployment adds about 0.6 points (R² 0.39, excluding DC). Results hold with robust standard errors. These are state-level associations, not causal effects.

**Files:** [results.md](results.md) (full write-up) · [01_regression.R](01_regression.R) (models) · [02_robustness.R](02_robustness.R) (DC check, heteroskedasticity test, robust SEs) · data/states.csv