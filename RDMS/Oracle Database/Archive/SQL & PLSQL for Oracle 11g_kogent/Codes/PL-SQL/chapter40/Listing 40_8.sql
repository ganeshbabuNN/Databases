select name, xacts "active transactions"
    from v$rollname, v$rollstat
    where v$rollname.usn = v$rollstat.usn;
