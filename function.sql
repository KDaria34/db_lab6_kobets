DROP FUNCTION IF EXISTS count_titles_by_release_year(character varying);

CREATE OR REPLACE FUNCTION count_titles_by_release_year(release_year_param VARCHAR)
RETURNS INT
AS $$
DECLARE
    res INT;
BEGIN
    SELECT COUNT(*) INTO res
    FROM Title
    WHERE release_year = release_year_param;

    RETURN res;
END;
$$ LANGUAGE plpgsql;

SELECT count_titles_by_release_year('1976') as titles_count_1976;
