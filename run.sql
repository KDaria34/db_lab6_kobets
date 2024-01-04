
SELECT count_titles_by_release_year('1979') as titles_count_1979;

CALL print_genres_for_title('The Blue Lagoon');

INSERT INTO Title (name, title_type, release_year) VALUES ('Pokémon', 'SHOW', '1997');
