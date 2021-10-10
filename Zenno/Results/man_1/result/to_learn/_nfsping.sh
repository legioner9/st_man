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
 
 
 
 nfsping (1) >>  nfsping  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
 
 
 nfsping(1M) 
 (NFS) 
 nfsping(1M) 
 
 

 НАЗВАНИЕ 
 nfsping  - проверка статуса демонов NFS 

 СИНТАКСИС 
 
	/usr/sbin/nfsping -a 
	/usr/sbin/nfsping -s 
	/usr/sbin/nfsping -c 
	/usr/sbin/nfsping -o  имя 
 

 ОПИСАНИЕ 
 Команда  nfsping  позволяет любому пользователю проверить статус демонов 
NFS и узнать, работают ли они. 

       Коды возврата 
 Команда  nfsping  возвращает следующие значения: 

 
 0 	 демоны NFS работают 
 32 	 Ни один демон NFS не работает 
 33 	 Работает только демон  rpcbind 
 34 	 Система работает в режиме  сервера загрузки  (bootserver) 
 35 	 Система работает в режиме  сервера ПК  (pc server) 
 36 	 Система работает только в режиме сервера 
 37 	 Система работает только в режиме клиента 
 38 	 Система работает в режимах сервера загрузки и клиента 
 39 	 Система работает в режимах клиента и сервера ПК 
 40 	 Система работает в режимах сервера и клиента 
 41 	 Демон  rpcbind  не работает 
 42 	 Выдано сообщение о правильном использовании 
 43 	 Указано более одной опции 
 50 	 Не удалось получить сетевую конфигурацию для  udp 
 51 	 Демон статуса ( statd ) не работает 
 52 	 В опции  -o  указано недопустимое имя демона 
 

 ИСПОЛЬЗОВАНИЕ 
 Команда  nfsping  поддерживает следующие опции: 

 
 -a 
Проверяет, что все демоны NFS ( nfsd ,  biod ,  rpcbind ,  mountd , 
 lockd ,  statd ,  bootparamd  и  pcnfsd ) работают. 
 -s 
Проверяет, что работают демоны NFS  nfsd ,  rpcbind ,  mountd ,  lockd  и  statd . 
 -c 
Проверяет, что работают демоны NFS  biod ,  rpcbind ,  lockd  и  statd . 
 -o имя 
Проверяет, что работает демон NFS с указанным  именем . 
 

 Одновременно можно задавать только одну опцию. 

      Примеры 

 Команда  nfsping -a  выдает следующее: 
 nfsd is running
biod is running
rpcbind is running
mountd is running
lockd is running
statd is running
bootparamd is running
pcnfsd is running
 

 Команда  nfsping -o statd  выдает следующий результат: 
 nfsping: statd is running
 

 ССЫЛКИ 
 
	 biod(1M) ,
	 bootparamd(1M) ,
	 lockd(1M) ,
	 mountd(1M) ,
	 nfsd(1M) ,
	 pcnfsd(1M) , 
	 rpcbind(1M) ,
	 statd(1M) 
 

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