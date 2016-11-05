create or replace trigger setmaxtrg before insert on t
begin
	select nvl(max(a),0) into cnt_pkg.cnt from t;
end;
/
