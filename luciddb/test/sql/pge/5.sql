-- Query 5
SELECT AL5.CUST_SERV_ACCT_KEY, AL5.REVN_YR_MO,
 AL5.USG_VAL, AL5.USG_BILL_THERM, AL5.USG_BILL_KWH
FROM PGE.CUST_SERV_ACCT AL1,
 PGE.GEOG AL2,
 PGE.SERV_PLAN AL3,
 PGE.REVN_PRD AL4,
 PGE.REVN_DTL_RAND AL5
WHERE (AL5.REVN_YR_MO=AL4.REVN_YR_MO
 AND AL2.GEOG_KEY=AL5.GEOG_KEY
 AND AL3.SRVPLN_KEY=AL5.SRVPLN_KEY
 AND AL1.CUST_SERV_ACCT_KEY=AL5.CUST_SERV_ACCT_KEY)
 AND (AL1.CUST_SERV_ACCT_KEY IN (112621, 112631, 112633,
 112634, 112635, 112653, 112654, 112662, 112687, 112775,
 112878, 112954, 113010, 113014))
ORDER BY 1, 2
;