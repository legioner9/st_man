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
 
 
 
 rpcinfo (8)   rpcinfo  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   rpcinfo  (8)   ( FreeBSD man: Команды системного администрирования ) >>  rpcinfo  (8)   ( Русские man: Команды системного администрирования )   rpcinfo  (8)   ( Linux man: Команды системного администрирования ) BSD mandoc 
Red Hat Linux

   
 НАЗВАНИЕ 

 rpcinfo 

 - выдает информацию о RPC

   
 СИНТАКСИС 

 rpcinfo 

- p 

[ host 

]

 rpcinfo 

[- n  portnum 



]

- u  host 



 program 

[ version 

]

 rpcinfo 

[- n  portnum 



]

- t  host  



 program 

[ version 

]

 rpcinfo 

- b 

 program version 

 rpcinfo 

- d 

 program version 

   
 ОПИСАНИЕ 

 rpcinfo 

выполняет вызов
 RPC 

на
 RPC 

сервере и выдает информацию о том, что было обнаружено.
   
 ПАРАМЕТРЫ 

 
 

 -p 


 
Попробовать использовать машину
 host 

 
и выдать список всех зарегистрированных
 RPC 

- программ. Если
 host 

ну определен, то он становится по умолчанию значением, возвращаемым
 hostname (1).


 -u 


 
Выполнить вызов
 RPC 

к процедуре 0 из программы
 program 

на указанный
 host 

используя
 UDP 

 
и выдать информацию о получении ответной реакции.
 -t 


 
Выполнить вызов
 RPC 

к процедуре 0 из программы
 program 

на указанный 
 host 

используя
 TCP 

 
и выдать информацию о получении ответной реакции.
 -n 


 
Использовать
 portnum 

как номер порта для параметров
- t 

и
- u 

вместо номера порта, выданного диспетчером портов.
 -b 


 
Отправить широковещательное сообщение
 RPC 

для процедуры 0 указанной программы
 program 

и версии
 version 

используя
 UDP 

и выдать информацию об ответившых машинах.
 -d 


 
Удалить регистрацию для сервиса
 RPC 

для указанной программы
 program 

и версии
 version 

 
Данный параметр может быть задан только суперпользователем.
 
 

 

Аргумент
 program 

может быть либо названием, либо номером.
 

Если указана версия
 version 

, то
 rpcinfo 

попытается вызвать эту версию указанной программы
 program 

 
Иначе
 rpcinfo 

попытается найти все зарегистрированные номера версий для указанной программы
 program 

вызовом версии 0 (которая, как ожидается, не существует, а если она существует, то
 rpcinfo 

попытается получить эту информацию вызовом версии с очень большим номером)
и попытается вызвать каждую зарегистрированную версию.
Примечание: номер версии требуется для параметров
- b 

и
- d 

   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Для показа всех
 RPC 

- сервисов на локальной машине используйте:
 


 example% rpcinfo -p 
 

Для показа всех
 RPC 

- сервисов, зарегистрированных на машине с названием
 klaxon 

используйте:
 


 example% rpcinfo -p klaxon 
 

Для показа всех машин в локальной сети, на которых 
работает сервис "Желтые страницы" используйте:
 


 example% rpcinfo -b ypserv 'version' | uniq 
 

где 'version' есть текущая версия "Желтых Страниц" полученная 
из результатов предыдущего примечания
- p 

выше.
 

Для удаления регистрации для версии 1 сервиса 
 walld 

используйте:
 


 example% rpcinfo -d walld 1 
   
 СМ. ТАКЖЕ 

 rpc (5),


 portmap (8)


 
 "RPC Programming Guide" 
 

   
 НАЙДЕННЫЕ ОШИБКИ 

В выпусках до SunOS 3.0 сетевая файловая система (Network File System - NFS) 
не регистрировала себя через диспетчер портов;
 rpcinfo 

нельзя использовать для вызовов
 RPC 

на сервер
 NFS 

на машинах, работающих на таких версиях системы.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 СМ. ТАКЖЕ 
 НАЙДЕННЫЕ ОШИБКИ 
 
 
 
 
 
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