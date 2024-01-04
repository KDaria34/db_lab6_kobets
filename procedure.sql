CREATE OR REPLACE PROCEDURE print_genres_for_title(title_name VARCHAR)
AS $$
DECLARE
    genre_type_val VARCHAR; -- Use a different name for the loop variable
BEGIN
    FOR genre_type_val IN SELECT genre_type FROM title_genre WHERE name = print_genres_for_title.title_name
    LOOP
        RAISE NOTICE 'Genre: %', genre_type_val;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

CALL print_genres_for_title('Taxi Driver');
