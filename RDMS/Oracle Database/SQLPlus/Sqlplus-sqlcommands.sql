A[PPEND] text 
*------------*
- adds specified text to the end of the current line of the SQL buffer. 
-To separate text from the preceding character with a space , enter two spaces between APPEND and text.
-To Append text that ends with a semilcolon , end the command with two semicolon as SQL plus interprets a single semicolon as a command terminator

-C[HANGE] /old/new 
*----------------*
-changes the text specified by old or new in the current line

DEL [n|n m|n *|n LAST|*| n|* LAST[LAST]
*-------------------------------------*
-Deletes one or more lines of the buffer and the asterix [*] indicates the current line
-The space can be omitted between DEL and n or *, but not between DEL and LAST.Enter DEL with no clauses to delete the current line of the buffer

L[IST][n|n m|n *|n LAST|*| n|* LAST|LAST]
*---------------------------------------*
-List one ore more lines of the buffers

STORE {SET} FileName[.ext][CRE[ATE]REP][LACE]|APP[END]]
*-----------------------------------------------------*
-save the attributes of the current SQL plus environment into the sytem file

UNDEF[FINE] Variable...
*---------------------*
-Deletes given user variables that is defined either explicitly[with the DEFINE Command] or Implicitly [With an argument to the START Command].

PRI[NT] [Variable...]
*-------------------*
-Displays the current values of bind variables

.[PERIOD]
*-------*
-Terminates a substitutions variable followed by a character that woould otherwise be part of the variable name.

R[UN] or /
*---------*
-Runs the statement stored in the buffer.Even the slash[/] can be used to run the statements

X
*-*
-Makes the line specified by the line number x the current line