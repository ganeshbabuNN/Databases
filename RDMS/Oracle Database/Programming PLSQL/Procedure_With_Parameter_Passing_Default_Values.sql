Create or replace PROCEDURE logit( v_message IN VARCHAR2 DEFAULT 'Hello World!')
AS
  v_date DATE := SYSDATE;
BEGIN
  DBMS_OUTPUT.put_line(
        v_message ||
        ' The date and time is ' ||
        to_char(v_date, 'Day') || ' on ' ||
        to_char(v_date, 'FMDD Month, YYYY') ||
        ' @ ' ||
        to_char(v_date, 'HH24:MI:SS')
        );
END;
/

--call
begin
  logit;
end;

--calling with passing some value
begin
  logit('D');
end;
