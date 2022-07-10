
-- DDL as a separate sql file =====================================

-- Date and time of execution: 2022-07-09 19:38:17
CREATE VIEW view_application_name AS SELECT 
    CAST(SK_ID_CURR AS INTEGER) AS sk_id_curr, 
    CAST(TARGET AS BOOLEAN) AS target, 
    NAME_CONTRACT_TYPE, 
    CAST(AMT_INCOME_TOTAL AS REAL) AS amt_income_total, 
    CAST(AMT_CREDIT AS REAL) AS amt_credit, 
    CAST(AMT_GOODS_PRICE AS REAL) AS amt_goods_price
FROM application_train;

-- Date and time of execution: 2022-07-09 19:55:47
CREATE VIEW view_bureau AS SELECT
    CAST(SK_ID_CURR AS INTEGER) AS sk_id_curr, 
    CAST(SK_ID_BUREAU AS INTEGER) AS sk_id_bureau,
    CREDIT_ACTIVE AS credit_active, 
    CREDIT_TYPE AS credit_type, 
    CAST(AMT_CREDIT_SUM AS REAL) AS amt_credit_sum, 
    CAST(AMT_CREDIT_SUM_DEBT AS REAL) AS amt_credit_sum_debt, 
    CAST(AMT_CREDIT_MAX_OVERDUE AS REAL) AS amt_credit_max_overdue
FROM bureau;

