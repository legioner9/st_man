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
 
 
 
 statd (1)   statd  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  statd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   statd  (8)   ( Linux man: Команды системного администрирования ) 
 
 
 statd(1M) 
 statd(1M) 
 
 

 НАЗВАНИЕ 
 statd  - мониторинг статуса сети 

 СИНТАКСИС 
 
	/usr/lib/nfs/statd
 

 ОПИСАНИЕ 
 Команда  statd  запускает  демон мониторинга статуса  (status monitor daemon). 
Он взаимодействует с  lockd(1M)  для обеспечения функций восстановления 
после сбоев для служб блокировки NFS. 

       Файлы 
 
	 /etc/sm 
	 /etc/sm.bak 
	 /etc/state 
 

 ИСПОЛЬЗОВАНИЕ 
 Демон  statd  автоматически вызывается на уровне выполнения 3. 

 Учтите, что сбой на сайте выявляется только после восстановления работы 
сайта. 

 При запуске NFS демон  statd  будет выдавать уведомления на системную консоль о не 
работающих в настоящий момент машинах, вовлеченных в блокировку файлов 
или записей NFS перед перезапуском. Этих сообщений можно избежать, удалив 
все файлы из каталогов  /etc/sm  и  /etc/sm.bak  перед перезапуском NFS. Типичное 
сообщение выглядит так: 
 
rpc.statd: cannot talk to statd at  хост 
 

 Только привилегированный пользователь может выполнять эту команду. 

 ССЫЛКИ 
 
	 lockd(1M) ,
	 nfsping(1M) 
 

 Copyright 1994 Novell, Inc. 
Copyright 1999  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
 

 
 
 
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