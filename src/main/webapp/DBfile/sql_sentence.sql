
--��� ���̺� ���� sql��  
--SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;

--���̺� �÷� �߰�
ALTER TABLE board ADD starcount number;

commit;

--���̺� �÷� �������� ����
ALTER TABLE board MODIFY starcount number DEFAULT 0;

commit;