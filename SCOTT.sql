DROP TABLE cancer;

-- 1. csv ���� �ٿ�ε� //�Ϸ�
-- 2. csv ���� OracleDB�� import //�Ϸ�
-- 3. ���� ���� �߻��� �� ������ ����, �߻��ڼ� ��� //
SELECT * FROM cancer;
SELECT ����, �߻��ڼ�, rank() OVER (ORDER BY �߻��ڼ� DESC) FROM cancer;
SELECT ����, �߻��ڼ�, rank() OVER (ORDER BY �߻��ڼ� DESC) ���� FROM cancer WHERE ���� != '����(C00-C96)' AND rownum <= 1;
-- 4. ���� ���� �߻��� �� ���� 1 ~ 5������ �ڷ� ��� //
SELECT ����, �߻��ڼ�, ����, ���߻���, ����ǥ��ȭ�߻���, 
rank() OVER (ORDER BY �߻��ڼ� DESC) ���� FROM cancer WHERE ���� != '����(C00-C96)' AND rownum <= 5;
-- 5. ������ 10% �̻� �� �ڷ� ��� //
SELECT * FROM cancer WHERE ���� >= 10.0;
-- 6. �������� �߻��ڼ� ��� //
SELECT ����, �߻��ڼ� FROM cancer WHERE ���� = '������(C91-C95)'; 