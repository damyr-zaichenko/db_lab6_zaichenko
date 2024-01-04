-- Тригер для виведення повідомлення про оновлення

CREATE OR REPLACE FUNCTION log_update_message()
RETURNS TRIGGER AS $$
BEGIN
  RAISE NOTICE 'Оновлено запис в таблиці Written з ID = %', NEW.comic_id;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER LogUpdateMessageTrigger
AFTER UPDATE ON Written
FOR EACH ROW
EXECUTE FUNCTION log_update_message();
