RELEASE ip1
PUBLIC  ip1

*!*��ȡ����ip
CLEAR
oService = Getobject("winmgmts:")
oClasses = oService.ExecQuery("select * from Win32_NetworkAdapterConfiguration where IPEnabled = 1")
FOR EACH oClass IN oClasses
*!*	    ?
*!*	    ? "����������....." + NVL(oClass.Description, "<NULL>")
*!*	    ? "Ӳ����ַ(MAC).." + NVL(oClass.MACAddress, "<NULL>")
*!*	    ? "IP��ַ........." + NVL(oClass.IPAddress[0], "<NULL>")
   ip1 =NVL(oClass.IPAddress[0], "<NULL>")
ENDFOR
