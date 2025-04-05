CREATE OR REPLACE FUNCTION cal_fgts (
    sal NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN sal * 0.08;
END;

SELECT
    cal_fgts(1500)
FROM
    dual;


set serveroutput on;

CREATE OR REPLACE PROCEDURE calc_fgts IS
    valor NUMBER;
BEGIN
    valor := cal_fgts(1500);
    dbms_output.put_line('O valor do calculo é: ' || valor);
END;

exec calc_fgts();