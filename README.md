
EDA Report — Revenue Drivers & Risk Signals in 1,200 Orders
DecodeLabs Data Analytics Internship 

1. Problem Statement
This report presents an Exploratory Data Analysis (EDA) of 1,200 e-commerce orders spanning January 2023 to June 2025. The objective is to uncover patterns, trends, and anomalies that translate into actionable business intelligence. Three core questions guide this analysis: What drives order value? Are there seasonal revenue patterns? And what operational risk signals exist in the data?
The dataset was pre-cleaned, missing CouponCode values were imputed, floating-point pricing errors corrected, and dates standardised to ISO 8601 format  ensuring this EDA is built on a verified, production-ready foundation.

2. Methodology
All analysis was performed in Google Sheets using Pivot Tables, summary formulas, and helper columns. Visualisations were built in Power BI Desktop. 

3. Key Findings
3.1 The mean TotalPrice ($1,053.97) is $230 higher than the median ($823.62). This confirms a right-skewed distribution.
3.2 Chair leads total revenue ($199,820) but only marginally over Printer ($195,613). More importantly, Laptop and Monitor both achieve the highest average order value ($1,111) despite having fewer transactions.
3.3 Q2 (April–June) is consistently the strongest revenue quarter across all three years, driven by a recurring June peak. Note that 2025 data only covers Q1 and Q2, so the full-year comparison is partial.

3.4 The combined Cancelled and Returned rate is 41.4% of all orders. Only 19.3% of orders have a confirmed Delivered status. 
3.5 Instagram leads at 259 orders (21.6%) and Cash (248) was the most used payment method. 
3.6 Three-quarters of all orders (74.25%) are placed without any coupon.
4. Recommendations
R1 — Urgently investigate the 41.4% cancel/return rate (High Priority) This is the single biggest revenue leak in the business. A breakdown by product and payment method would identify whether specific categories or checkout flows are driving the problem. Even a 10% reduction in this rate would recover approximately $52,000 in annual revenue.
R2 — Capitalise on the Q2 seasonal peak (High Priority) Q2 is consistently the strongest quarter every year. Marketing budgets should be front-loaded into April and May to build momentum heading into the June peak. Conversely, Q1 and Q3 need promotional support to reduce the seasonal troughs.
R3 — Address the declining revenue trend (High Priority) Year-on-year quarterly revenue has been declining since 2023. This could be explained by the partial 2025 data, but the 2024 figures also underperformed 2023 in most quarters. Customer acquisition, retention, or market factors need investigation before this becomes a serious concern.
R4 — Create a B2B / Wholesale pricing tier (Medium Priority) The 8 outlier bulk orders confirm unmet B2B demand. A dedicated wholesale tier with structured bulk pricing would formalise and grow this segment rather than leaving it to chance.
R5 — Prioritise Laptop and Monitor in premium campaigns (Medium Priority) Both categories achieve the highest average order values ($1,111) despite lower transaction volumes. Targeted premium marketing like bundles, loyalty offers, financing options which could increase purchase frequency in this high-value segment.
R6 — Always report median, not mean, for order value (Low Priority) The $230 gap between mean and median means the business may be making decisions based on an inflated view of typical customer spend. Standardise on median ($824) for internal reporting.

5. Conclusion
This EDA reveals a business with strong multi-channel diversification and a clear seasonal revenue pattern centred on Q2, but with two critical risks that require immediate attention: a 41.4% order failure rate (cancellations + returns) and a declining year-on-year revenue trajectory. The data also surfaces a hidden B2B opportunity in bulk orders and a premium segment in Laptop and Monitor categories that is currently underleveraged. Addressing the operational risks while capitalising on these growth opportunities represents the clearest path to improved business performance.

Prepared by: Amos Pius | DecodeLabs Data Analytics Internship | Dataset: 1,200 orders | Tools: Google Sheets (Analysis) · Power BI (Visualisation)





