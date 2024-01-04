-- Функція для отримання кількості коміксів, які написані певним письменником

CREATE OR REPLACE FUNCTION GetComicsCountByWriter(writer_id_param INT)
RETURNS INTEGER AS $$
DECLARE
  comics_count INTEGER;
BEGIN
  SELECT COUNT(*)
  INTO comics_count
  FROM Written
  WHERE writer_id = writer_id_param;

  RETURN comics_count;
END;
$$ LANGUAGE plpgsql;