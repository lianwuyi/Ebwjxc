*---创建SQL数据库及数据表-----
 
dataname1=getpy(gsjc1)  && 将公司名称获取拼音首字母

*!*	*-保存到SQL数据库
*!*	DO WHILE .T. 
*!*	  DO 连接数据库.prg

  *****创建数据库【CREATE DATABASE+数据库名称】
  ln11=SQLExec(lnHandle,"CREATE DATABASE "+dataname1)
  
  If ln11<=0  && 查询数据不成功，断开所有数据连接
	 MESSAGEBOX ("创建数据库失败，请联系客服……",16+0+0,"提示")
	 RETURN TO MASTER && 返回到最高级程序的调用处 
  ENDIF

  *****创建数据表 mmk
*!*	  ln12=SQLExec(lnHandle,"CREATE TABLE mmk([注册号] char(10),[姓名] char(10),[密码] char(60),[工作职责] char(10),[菜单权限] char(10),;
  [仓库号] char(10),[仓库名称] char(50),[库存查询] char(10),[产品录入] INT(1)")) &&[产品查询] int,[客户录入] int,[客户查询] int,[供应商录入] int,;
 && [供应商查询] int,[入库录入] int,[入库打印] int,[入库查询] int,[出库录入] int,[出库打印] int,[出库查询] int,[转仓录入] int,[转仓查询] int,;
 && [盘点查录] int,[销售查询] int,[部门设置] int"))
  
 
  If ln12<=0                         && 查询数据不成功，断开所有数据连接
	 MESSAGEBOX ("创建MMK表失败，请联系客服……",16+0+0,"提示")
	 RETURN TO MASTER && 返回到最高级程序的调用处 
  ENDIF


*!*	  EXIT 
*!*	ENDDO

*!*	SQLDISCONNECT(0) && 断开所有数据连接
*!*	RELEASE lnHandle && 删除连接句柄变量

