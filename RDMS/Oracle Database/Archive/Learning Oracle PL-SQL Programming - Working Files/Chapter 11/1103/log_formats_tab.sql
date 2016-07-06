CREATE TABLE log_formats (
  date_and_time_txt VARCHAR2(100), 
  date_format VARCHAR2(100), 
  time_format VARCHAR2(100) );

INSERT INTO log_formats 
  (date_and_time_txt, date_format, time_format)
  VALUES
  ('Hey howdy!', 'Month DD, YYYY', 'HH:MI:SS AM');

