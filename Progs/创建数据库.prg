*---����SQL���ݿ⼰���ݱ�-----
 
dataname1=getpy(gsjc1)  && ����˾���ƻ�ȡƴ������ĸ

*!*	*-���浽SQL���ݿ�
*!*	DO WHILE .T. 
*!*	  DO �������ݿ�.prg

  *****�������ݿ⡾CREATE DATABASE+���ݿ����ơ�
  ln11=SQLExec(lnHandle,"CREATE DATABASE "+dataname1)
  
  If ln11<=0  && ��ѯ���ݲ��ɹ����Ͽ�������������
	 MESSAGEBOX ("�������ݿ�ʧ�ܣ�����ϵ�ͷ�����",16+0+0,"��ʾ")
	 RETURN TO MASTER && ���ص���߼�����ĵ��ô� 
  ENDIF

  *****�������ݱ� mmk
*!*	  ln12=SQLExec(lnHandle,"CREATE TABLE mmk([ע���] char(10),[����] char(10),[����] char(60),[����ְ��] char(10),[�˵�Ȩ��] char(10),;
  [�ֿ��] char(10),[�ֿ�����] char(50),[����ѯ] char(10),[��Ʒ¼��] INT(1)")) &&[��Ʒ��ѯ] int,[�ͻ�¼��] int,[�ͻ���ѯ] int,[��Ӧ��¼��] int,;
 && [��Ӧ�̲�ѯ] int,[���¼��] int,[����ӡ] int,[����ѯ] int,[����¼��] int,[�����ӡ] int,[�����ѯ] int,[ת��¼��] int,[ת�ֲ�ѯ] int,;
 && [�̵��¼] int,[���۲�ѯ] int,[��������] int"))
  
 
  If ln12<=0                         && ��ѯ���ݲ��ɹ����Ͽ�������������
	 MESSAGEBOX ("����MMK��ʧ�ܣ�����ϵ�ͷ�����",16+0+0,"��ʾ")
	 RETURN TO MASTER && ���ص���߼�����ĵ��ô� 
  ENDIF


*!*	  EXIT 
*!*	ENDDO

*!*	SQLDISCONNECT(0) && �Ͽ�������������
*!*	RELEASE lnHandle && ɾ�����Ӿ������

