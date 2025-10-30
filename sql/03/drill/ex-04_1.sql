SELECT
    id AS "ID",
    name || ' (' || job || ' Lv.' || level || ')' AS "summary"
FROM
    s_characters;
