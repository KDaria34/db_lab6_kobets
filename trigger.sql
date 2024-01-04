CREATE OR REPLACE FUNCTION log_new_title()
RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE '*** ALERT ***';
    RAISE NOTICE 'НОВИЙ ТАЙТЛ ДОДАНИЙ ДО БАЗИ ДАНИХ ФІЛЬМІВ:';
    RAISE NOTICE 'Назва: %, Тип: %, Рік випуску: %', NEW.name, NEW.title_type, NEW.release_year;
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER new_title_trigger
AFTER INSERT
ON Title FOR EACH ROW EXECUTE FUNCTION log_new_title();

INSERT INTO Title (name, title_type, release_year) VALUES ('Inception', 'MOVIE', '2010');
