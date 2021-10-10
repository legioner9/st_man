#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#---------------------------------------
:<<end_of_comments


 
 
 
 
 
Профиль:  Аноним  ( вход  |  регистрация ) 

 
 
 
 
 
 

 
 
 
 
  НОВОСТИ  ( + )
 
   КОНТЕНТ 
 
   WIKI 
 
    MAN'ы 
 
    ФОРУМ 
 
 Поиск  ( теги )
 
 
 

 

           
 
 

 
 
 
 
 
 
 
 [  новости  / +++  |  форум  |  wiki  |  теги 
|  
] 
 
 
 
 


 
 
 
 
 
 
 
 
 
 

 Интерактивная система просмотра системных руководств (man-ов) 
  
 
 
 

 
   Тема Набор Категория   
 

  
 Solaris man
 FreeBSD man
 Разные man
 Русские man
 Linux man
 POSIX man
 
 
	   All
	   1
	   2
	   3
	   4
	   5
	   6
	   7
	   8
	   9
 

 
 
  [ Cписок руководств  |  Печать ] 
 
 
 
 vzlist (8) >>  vzlist  (8)   ( Русские man: Команды системного администрирования ) 
   
 ИМЯ 

vzlist - вывод списка виртуальных сред.
   
 ОБЗОР 

vzlist [ -a ] [ -o   имя [, имя ...]]
  [ -s  [ - ] имя ] [ -h   шаблон ]
  [ -H ] [ -S ] [ -n ] [ -N  < -шаблон >] 
  [ идентификатор  [ идентификатор  ..] |  -1 ]
 

vzlist  -L 
   
 ОПИСАНИЕ 

Эта программа используется для получения списка виртуальных сред. По
умолчанию выводятся только работающие в данный момент виртуальные среды.
Для того, чтобы получить только идентификаторы VE (один на строку),
используйте  -1  в качестве значения идентификатора VE.
   
 ФЛАГИ 

 
 --all ,  -a 
показать все VE.
 --sort ,  -s 
указывает порядок сортировки. '-' перед значением параметра обозначает
сортировку в обратном направлении.
 --hostname ,  -h   < шаблон > 
показать только те VE, для которых имя хоста соответствует
указанному  шаблону .
Следующие символы подстановки могут быть использованы в шаблоне:  * ,
 ? ,  [] . 
Обратите внимание, что символы шаблона должны быть правильно экранированы,
чтобы предотвратить их интерпретацию командной оболочкой.
 --name ,  -n   
показывать имена VE.
 --name_filter ,  -N   < шаблон > 
выводить только те VE, имена которых соответствуют  шаблону .
 --no-header ,  -H 
не выводить заголовок
 --stopped -S 
показать только остановленные VE.
 --list -L 
показать все спецификаторы формата.
 
 
   
 СТАНДАРТНЫЕ СПЕЦИФИКАТОРЫ ФОРМАТА 

Следующие спецификаторы могут быть использованы для контролирования как формата
вывода, так сортировки.
 
 Суффикс Описание 
 
  .m наибольшее достигнутое значение (maxheld) 
  .b барьер (barrier) 
  .l квота (limit) 
  .f число ошибок (failcnt) 
  .s нестрогая квота (softlimit) 
  .h строгая квота (hardlimit) 
 


Пример:
 

         vzlist -o veid,kmemsize,kmemsize.l -s kmemsize 
 
 Полно Кратко 
 
 veid VEID 
 hostname HOSTNAME 
 name NAME 
 ip IP_ADDR 
 status STATUS 
 kmemsize KMEMSIZE 
 kmemsize.m KMEMSIZE.M 
 kmemsize.b KMEMSIZE.B 
 kmemsize.l KMEMSIZE.L 
 kmemsize.f KMEMSIZE.F 
 lockedpages LOCKEDP 
 lockedpages.m LOCKEDP.M 
 lockedpages.b LOCKEDP.B 
 lockedpages.l LOCKEDP.L 
 lockedpages.f LOCKEDP.F 
 privvmpages PRIVVMP 
 privvmpages.m PRIVVMP.M 
 privvmpages.b PRIVVMP.B 
 privvmpages.l PRIVVMP.L 
 privvmpages.f PRIVVMP.F 
 shmpages SHMP 
 shmpages.m SHMP.M 
 shmpages.b SHMP.B 
 shmpages.l SHMP.L 
 shmpages.f SHMP.F 
 numproc NPROC 
 numproc.m NPROC.M 
 numproc.b NPROC.B 
 numproc.l NPROC.L 
 numproc.f NPROC.F 
 physpages PHYSP 
 physpages.m PHYSP.M 
 physpages.b PHYSP.B 
 physpages.l PHYSP.L 
 physpages.f PHYSP.F 
 vmguarpages VMGUARP 
 vmguarpages.m VMGUARP.M 
 vmguarpages.b VMGUARP.B 
 vmguarpages.l VMGUARP.L 
 vmguarpages.f VMGUARP.F 
 oomguarpages OOMGUARP 
 oomguarpages.m OOMGUARP.M 
 oomguarpages.b OOMGUARP.B 
 oomguarpages.l OOMGUARP.L 
 oomguarpages.f OOMGUARP.F 
 numtcpsock NTCPSOCK 
 numtcpsock.m NTCPSOCK.M 
 numtcpsock.b NTCPSOCK.B 
 numtcpsock.l NTCPSOCK.L 
 numtcpsock.f NTCPSOCK.F 
 numflock NFLOCK 
 numflock.m NFLOCK.M 
 numflock.b NFLOCK.B 
 numflock.l NFLOCK.L 
 numflock.f NFLOCK.F 
 numpty NPTY 
 numpty.m NPTY.M 
 numpty.b NPTY.B 
 numpty.l NPTY.L 
 numpty.f NPTY.F 
 numsiginfo NSIGINFO 
 numsiginfo.m NSIGINFO.M 
 numsiginfo.b NSIGINFO.B 
 numsiginfo.l NSIGINFO.L 
 numsiginfo.f NSIGINFO.F 
 tcpsndbuf TCPSNDB 
 tcpsndbuf.m TCPSNDB.M 
 tcpsndbuf.b TCPSNDB.B 
 tcpsndbuf.l TCPSNDB.L 
 tcpsndbuf.f TCPSNDB.F 
 tcprcvbuf TCPRCVB 
 tcprcvbuf.m TCPRCVB.M 
 tcprcvbuf.b TCPRCVB.B 
 tcprcvbuf.l TCPRCVB.L 
 tcprcvbuf.f TCPRCVB.F 
 othersockbuf OTHSOCKB 
 othersockbuf.m OTHSOCKB.M 
 othersockbuf.b OTHSOCKB.B 
 othersockbuf.l OTHSOCKB.L 
 othersockbuf.f OTHSOCKB.F 
 dgramrcvbuf DGRAMRRB 
 dgramrcvbuf.m DGRAMRRB.M 
 dgramrcvbuf.b DGRAMRRB.B 
 dgramrcvbuf.l DGRAMRRB.L 
 dgramrcvbuf.f DGRAMRRB.F 
 numothersock NOTHSOCK 
 numothersock.m NOTHSOCK.M 
 numothersock.b NOTHSOCK.B 
 numothersock.l NOTHSOCK.L 
 numothersock.f NOTHSOCK.F 
 dcachesize DCACHESZ 
 dcachesize.m DCACHESZ.M 
 dcachesize.b DCACHESZ.B 
 dcachesize.l DCACHESZ.L 
 dcachesize.f DCACHESZ.F 
 numfile NFILE 
 numfile.m NFILE.M 
 numfile.b NFILE.B 
 numfile.l NFILE.L 
 numfile.f NFILE.F 
 numiptent NIPTENT 
 numiptent.m NIPTENT.M 
 numiptent.b NIPTENT.B 
 numiptent.l NIPTENT.L 
 numiptent.f NIPTENT.F 
 diskspace DQBLOCKS 
 diskspace.s DQBLOCKS.S 
 diskspace.h DQBLOCKS.H 
 diskinodes DQINODES 
 diskinodes.s DQINODES.S 
 diskinodes.h DQINODES.H 
 laverage LAVERAGE 
 cpulimit CPULIM 
 cpuunits CPUUNI 
 

   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

Возвращает 0 при успешном завершении.
   
 АВТОРСКИЕ ПРАВА 

Copyright (C) 2000-2007, SWsoft. Распространяется на условиях GNU GPL.
   
 ПЕРЕВОД 

Перевод с английского Виктор Ерёмин < ErV2005@rambler.ru > 2007
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ФЛАГИ 
 
 СТАНДАРТНЫЕ СПЕЦИФИКАТОРЫ ФОРМАТА 
 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 АВТОРСКИЕ ПРАВА 
 ПЕРЕВОД 
 
 
 
 
 
 Поиск по тексту MAN-ов:  
 
 
 
 
 
 
 
 
 
 
 


 
 


 
 
 
 
 
Спонсоры:
 
 
 
 
 
 
 
 
Хостинг:
 

 

 


 
 
 
 Закладки на сайте 
 Проследить за страницей 
 
 
Created 1996-2021 by  Maxim Chirkov 
 Добавить ,  Поддержать ,  Вебмастеру 
 
 
 
 


 
 
 






end_of_comments
#---------------------------------------

unset filename