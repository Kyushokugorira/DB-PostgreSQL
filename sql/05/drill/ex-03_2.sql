SELECT
    COUNT(guild) AS "ギルド所属",
    COUNT(*) - COUNT(guild) AS "無所属"
FROM
    s_characters;