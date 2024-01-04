-- Виклик функції для отримання кількості коміксів певним письменником
DO $$ 
DECLARE
  writer_id_param INT := 9; -- writer_id
  comics_count_result INTEGER;
BEGIN
  comics_count_result := GetComicsCountByWriter(writer_id_param);
  RAISE NOTICE 'Кількість коміксів, написаних письменником %, дорівнює %', writer_id_param, comics_count_result;
END $$;

-- Виклик процедури для оновлення ціни коміксу з id = 1
CALL UpdateComicPrice(1, '$5.99');
SELECT comic_price FROM Comic WHERE comic_id = 1

-- Виклик тригера - оновлення дати в таблиці Written
UPDATE Written SET date = '2024-01-06' WHERE comic_id = 1;