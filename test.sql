SET SERVEROUTPUT ON

BEGIN
    DBMS_OUTPUT.PUT_LINE('Running PL/SQL sum test...');
END;
/

DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 20;
    total NUMBER;
BEGIN
    total := num1 + num2;

    IF total = 30 THEN
        DBMS_OUTPUT.PUT_LINE('PASS: Sum is 30');
    ELSE
        DBMS_OUTPUT.PUT_LINE('FAIL: Expected 30 but got ' || total);
        RAISE_APPLICATION_ERROR(-20001, 'Incorrect sum');
    END IF;
END;
