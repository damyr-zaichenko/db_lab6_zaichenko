-- Процедура для оновлення ціни коміксу за його ідентифікатором

CREATE OR REPLACE PROCEDURE UpdateComicPrice(comic_id_param INT, new_price_param VARCHAR(20))
LANGUAGE plpgsql AS $$
BEGIN
  UPDATE Comic
  SET comic_price = new_price_param
  WHERE comic_id = comic_id_param;
END;
$$;