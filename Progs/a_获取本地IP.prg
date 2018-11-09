RELEASE ip1
PUBLIC  ip1

*!*获取本地ip
CLEAR
oService = Getobject("winmgmts:")
oClasses = oService.ExecQuery("select * from Win32_NetworkAdapterConfiguration where IPEnabled = 1")
FOR EACH oClass IN oClasses
*!*	    ?
*!*	    ? "网络适配器....." + NVL(oClass.Description, "<NULL>")
*!*	    ? "硬件地址(MAC).." + NVL(oClass.MACAddress, "<NULL>")
*!*	    ? "IP地址........." + NVL(oClass.IPAddress[0], "<NULL>")
   ip1 =NVL(oClass.IPAddress[0], "<NULL>")
ENDFOR
