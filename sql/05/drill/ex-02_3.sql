START TRANSACTION;

-- 更新前のレコードを確認 (省略)
SELECT
    id,
    name,
    guild,
    job,
    buff,
    CASE
        WHEN guild IS NULL AND
        job NOT IN ('Wizard', 'Priest') THEN 'Yes'
        ELSE 'No'
    END AS "is_target"
FROM
    s_characters
ORDER BY
    id;

-- 更新処理
UPDATE s_characters
SET
    job = 'Mage'
WHERE
    guild IS NULL AND
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

-- 更新後のレコードを確認 (省略)
SELECT
    id,
    name,
    guild,
    job,
    buff,
    CASE
        WHEN guild IS NULL AND
        job NOT IN ('Wizard', 'Priest') THEN 'Yes'
        ELSE 'No'
    END AS "is_target"
FROM
    s_characters
ORDER BY
    id;