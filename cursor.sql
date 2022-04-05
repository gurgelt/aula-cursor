SET SERVEROUTPUT ON

DECLARE
    CURSOR CUR_TESTE IS 
        SELECT * FROM DEPT;
BEGIN
    FOR REG_TESTE IN (select deptno + 1 mais, dname, loc from dept) LOOP
        DBMS_OUTPUT.PUT_LINE(REG_TESTE.mais || ' ' || 
                             REG_TESTE.DNAME || ' ' || 
                             REG_TESTE.LOC);
    END LOOP;
END;

--SELECT DEPTNO + 1 mais from DEPT;