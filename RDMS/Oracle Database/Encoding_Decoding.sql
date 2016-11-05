--encoding
SELECT TRANSLATE('Ganesh babu', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ', '1234567890!@#$%^&*()-=_+;,.') 
"Encoded Message" FROM DUAL;
--decoding
SELECT TRANSLATE('7anesh.babu', '1234567890!@#$%^&*()-=_+;,.', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ ') 
"Decoded Message" FROM DUAL;