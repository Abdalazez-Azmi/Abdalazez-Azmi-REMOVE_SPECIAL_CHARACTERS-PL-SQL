CREATE OR REPLACE FUNCTION SIMPLE_CALCULATOR(P_NUM1 IN NUMBER,P_TYPE IN VARCHAR2 ,P_NUM2 IN NUMBER)
RETURN NUMBER
IS
V_RESULT NUMBER;
BEGIN
IF P_TYPE = '+' THEN 
V_RESULT := P_NUM1 + P_NUM2 ; 
ELSIF 
P_TYPE = '-' THEN 
V_RESULT := P_NUM1 - P_NUM2 ; 
ELSIF 
P_TYPE = '*' THEN 
V_RESULT := P_NUM1 * P_NUM2 ; 
ELSIF 
P_TYPE = '/' THEN 
V_RESULT := P_NUM1 / P_NUM2 ; 
END IF;
RETURN V_RESULT;
END;

-- TO EXECUTE FUN();
BEGIN
DBMS_OUTPUT.PUT_LINE(SIMPLE_CALCULATOR(&P_NUM1,'&P_TYPE',&P_NUM2));
END;