SELECT DISTINCT 
CAST(COGIPF_USERID as VARCHAR(255)) as UserID,  
CAST(COGIPF_USERNAME as VarChar(255)) as Username
FROM [c10_audit].[dbo].[COGIPF_USERLOGON] t
WHERE COGIPF_LOCALTIMESTAMP = 
(
    SELECT
    MAX(COGIPF_LOCALTIMESTAMP)
    FROM [c10_audit].[dbo].[COGIPF_USERLOGON] t1
    WHERE t1.COGIPF_USERID = t.COGIPF_USERID
)
AND [COGIPF_USERNAME] NOT IN ('','not available')
AND [COGIPF_USERID] NOT IN ('','null')