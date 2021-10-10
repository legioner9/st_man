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
 
 
 
 samba (7) >>  samba  (7)   ( Русские man: Макропакеты и соглашения )   samba  (7)   ( Linux man: Макропакеты и соглашения ) Ключ  samba  обнаружен в базе ключевых слов. 
   
 ИМЯ 

Samba - подобный LanManager'у файл-сервер для UNIX
   
 ОБЗОР 

 Samba 

   
 ОПИСАНИЕ 

Пакет
 Samba 

представляет собой набор программ, которые реализуют SMB протокол для
UNIX систем. Этот протокол иногда называют LanManager или Netbios
протоколом.
   
 КОМПОНЕНТЫ 

Пакет Samba состоит из различных компонентов. Каждый компонент описывается
отдельной страницей руководства. Кроме того очень рекомендуется прочитать
ту документацию к пакету Samba, которая идет вместе со страницами руководства
к вышеоговоренным компонентам. Если страницы руководства содержат ошибки,
то, пожалуйста, пришлите мне заплату (patch).
 
Демон
 smbd (8)

предоставляет файлов сервис и сервис печати для SMB клиентов, таких как
Windows for Workgroups, Windows NT или LanManager. Конфигурационный файл
ддя этого демона описывается в 
 smb.conf (5).

 
Демон
 nmbd (8)

предоставляет сервис имен Netbios и поддержку просмотра сети. Он также
может быть запущен в интерактивном режиме для запросов на поиск других
демонов сервиса имен.
 
Программа
 smbclient (1)

реализует простого клинта в стиле ftp. Это полезно для доступа к SMB 
ресурсам на других серверах, совместимых с SMB (таких как WfWg) и также
может использоваться для печати из UNIX на принтер, присоединенный к
какому-либо SMB серверу (такому как PC с WfWg).
 
Утилита
 testparm (1)

позволяет вам протестировать ваш конфигурационный файл
 smb.conf (5).

 
Утилита
 smbstatus (1)

позволяет вам увидеть, кто в данный момент использует сервер
 smbd (8).

 
   
 ДОСТУПНОСТЬ 

Пакет Samba паспостраняется по лицензии GPL (Gnu Public License).
Копия этой лиценции идет вместе с этим пакетом. Вам разрешается
распостранять копии пакета Samba, но пожалуйста, распостраняйте их
целиком.
 
Последняя версия пакета Samba может быть получена с ftp-сервера
samba.anu.edu.au из каталога pub/samba/. Она также доступна на
различных сайтах-зеркалах в Internet.
 
Кроме того, вы можете найти полезную информацию о Samba в конференции
USENET под названием comp.protocols.smb, а также по списку рассылки Samba.
Подробности о том как подписать на список расслыки даются в файле README
который находится в пакете Samba.
 
Если вы имеете доступ к Web брацзеру (такому как Netscape или Mosaic),
то вы найдете множество полезной информации, включая список рассылки
на  http://samba.anu.edu.au/samba/ 
 
   
 АВТОР 

 
Главным автором пакета Samba является Andrew Tridgell. С ним можно связаться
по адресу e-mail:  samba-bugs@samba.anu.edu.au .
 
Кроме того есть множество соавторов Samba по всему миру. Частичный список
соавторов дан ниже, в секции CREDITS. Этот список, однако, устарел.
Информация об обновлениях пакета может быть получена из файла change-log
который идет вместе с исходными текстами Samba.
 
   
 СОТРУДНИЧЕСТВО 

 
Если вы хотите присоединится к проекту Samba, то я советую вам подписаться
на список рассылки Samba.
 
Если вы имеете заплаты (patch) или выявили баги, то вы можете прислать
их напрямую на адрес  samba-bugs@samba.anu.edu.au . Однако, заметим, что
из-за громадной популярности этого пакета я могу задержаться с ответом,
Я предпочитаю патчи в формате "diff -u".
 
   
 CREDITS 

 
Соавторами по данному проетку являются (в алфавитном порядке по адресам
email):
 
(ЗАМЕЧАНИЕ: Этот список сильно устарел)
 
  Adams, Graham
           ( gadams@ddrive.demon.co.uk ) 
  Allison, Jeremy
           ( jeremy@netcom.com ) 
  Andrus, Ross
           ( ross@augie.insci.com ) 
  Auer, Karl
           ( Karl.Auer@anu.edu.au ) 
  Bogstad, Bill
           ( bogstad@cs.jhu.edu ) 
  Boreham, Bryan
           ( Bryan@alex.com ) 
  Boreham, David
           ( davidb@ndl.co.uk ) 
  Butler, Michael
           ( imb@asstdc.scgt.oz.au ) 
  ???
          ( charlie@edina.demon.co.uk ) 
  Chua, Michael
           ( lpc@solomon.technet.sg ) 
  Cochran, Marc
          ( mcochran@wellfleet.com ) 
  Dey, Martin N
           ( mnd@netmgrs.co.uk ) 
  Errath, Maximilian
           ( errath@balu.kfunigraz.ac.at ) 
  Fisher, Lee
           ( leefi@microsoft.com ) 
  Foderaro, Sean
           ( jkf@frisky.Franz.COM ) 
  Greer, Brad
           ( brad@cac.washington.edu ) 
  Griffith, Michael A
           ( grif@cs.ucr.edu ) 
  Grosen, Mark
           ( MDGrosen@spectron.COM ) 
  ????
           ( gunjkoa@dep.sa.gov.au ) 
  Haapanen, Tom
           ( tomh@metrics.com ) 
  Hench, Mike
          ( hench@cae.uwm.edu ) 
  Horstman, Mark A
           ( mh2620@sarek.sbc.com ) 
  Hudson, Tim
           ( tim.hudson@gslmail.mincom.oz.au ) 
  Hulthen, Erik Magnus
           ( magnus@axiom.se ) 
  ???
          ( imb@asstdc.scgt.oz.au ) 
  Iversen, Per Steinar
           ( iversen@dsfys1.fi.uib.no ) 
  Kaara, Pasi
           ( ppk@atk.tpo.fi ) 
  Karman, Merik
           ( merik@blackadder.dsh.oz.au ) 
  Kiff, Martin
           ( mgk@newton.npl.co.uk ) 
  Kiick, Chris
           ( cjkiick@flinx.b11.ingr.com ) 
  Kukulies, Christoph
           ( kuku@acds.physik.rwth-aachen.de ) 
  ???
          ( lance@fox.com ) 
  Leighton, Luke
          ( lkcl@pires.co.uk ) 
  Lendecke, Volker
           ( lendecke@namu01.gwdg.de ) 
  ???
           ( lonnie@itg.ti.com ) 
  Mahoney, Paul Thomas
           ( ptm@xact1.xact.com ) 
  Mauelshagen, Heinz
           ( mauelsha@ez.da.telekom.de ) 
  Merrick, Barry G
           ( bgm@atml.co.uk ) 
  Mol, Marcel
           ( marcel@fanout.et.tudeflt.nl ) 
  ???
          ( njw@cpsg.com.au ) 
  ???
          ( noses@oink.rhein.de ) 
  Owens, John
           ( john@micros.com ) 
  Pierson, Jacques
           ( pierson@ketje.enet.dec.com ) 
  Powell, Mark
           ( mark@scot1.ucsalf.ac.uk ) 
  Reiz, Steven
           ( sreiz@aie.nl ) 
  Schlaeger, Joerg
           ( joergs@toppoint.de ) 
  S{rkel{, Vesa
           ( vesku@rankki.kcl.fi ) 
  Terpstra, John
          ( jht@aquasoft.com.au ) 
  Tridgell, Andrew
           ( samba-bugs@samba.anu.edu.au ) 
  Troyer, Dean
           ( troyer@saifr00.ateng.az.honeywell.com ) 
  Wakelin, Ross
           ( rossw@march.co.uk ) 
  Wessels, Stefan
           ( SWESSELS@dos-lan.cs.up.ac.za ) 
  Young, Ian A
           ( iay@threel.co.uk ) 
  van der Zwan, Paul
           ( paulzn@olivetti.nl ) 
 
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОМПОНЕНТЫ 
 ДОСТУПНОСТЬ 
 АВТОР 
 СОТРУДНИЧЕСТВО 
 CREDITS 
 
 
 
 
 
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