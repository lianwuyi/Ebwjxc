Parameters cChina
Local pcPychr,i,j,c,Hz
Release pcPychr
Public pcPychr
pcPychr=''
Set Collate To 'Pinyin'
Pycode='������������������������کſ�߅�����������ϦѾ�х�' &&��B��ʼ��ÿ��ƴ�����������
For i=1 To Len(cChina)
    If Asc(Substr(cChina,i,1))>160
        hz=Substr(cChina,i,2)
        c=''
        s=1
        For j=1 To 52
            s1=Substr(Pycode,j,2)
            If hz<Substr(Pycode,j,2)
                c=Chr(96+S)
                Exit
            Endif
            j=j+1
            s=s+1
        Endfor
        pcPychr=pcPychr+Upper(c)
        i=i+1
    Else
        pcPychr=pcPychr+Upper(Substr(cChina,i,1))
    Endif
Endfor
Return pcPychr
**End**


*!* ?getpy('������')