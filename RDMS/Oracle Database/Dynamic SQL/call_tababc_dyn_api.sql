BEGIN
  tababc_dyn_api.insert_row('A', 'B', 1);
  tababc_dyn_api.insert_row('D', 'E', 2);
  tababc_dyn_api.insert_row('G', 'H', 3);
END;
/

BEGIN
  tababc_dyn_api.update_row('X', 'B', 1);
END;
/

BEGIN
  tababc_dyn_api.delete_row('X', 'B', 1);
END;
/
