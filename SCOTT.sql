DROP TABLE cancer;

-- 1. csv 파일 다운로드 //완료
-- 2. csv 파일 OracleDB에 import //완료
-- 3. 가장 많이 발생한 함 종류를 암종, 발생자수 출력 //
SELECT * FROM cancer;
SELECT 암종, 발생자수, rank() OVER (ORDER BY 발생자수 DESC) FROM cancer;
SELECT 암종, 발생자수, rank() OVER (ORDER BY 발생자수 DESC) 순위 FROM cancer WHERE 암종 != '모든암(C00-C96)' AND rownum <= 1;
-- 4. 가장 많이 발생한 암 종류 1 ~ 5위까지 자료 출력 //
SELECT 암종, 발생자수, 분율, 조발생률, 연령표준화발생률, 
rank() OVER (ORDER BY 발생자수 DESC) 순위 FROM cancer WHERE 암종 != '모든암(C00-C96)' AND rownum <= 5;
-- 5. 분율이 10% 이상 인 자료 출력 //
SELECT * FROM cancer WHERE 분율 >= 10.0;
-- 6. 백혈병의 발생자수 출력 //
SELECT 암종, 발생자수 FROM cancer WHERE 암종 = '백혈병(C91-C95)'; 