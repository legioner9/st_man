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
 
 
 
 named.restart (8) >>  named.restart  (8)   ( Русские man: Команды системного администрирования ) 
 
   
 НАЗВАНИЕ 

 
named.restart - остановить и перезапустить сервер имен
 
   
 ОПИСАНИЕ 

 
Эта команда посылает сигнал SIGKILL работающему серверу имен,
после чего запускает новый сервер.
 
   
 ОШИБКИ 

 
Не проверяет, действительно ли запущен сервер доменных имен, и
может использовать для этой цели файл блокировки с PID, который
мог остаться после аварийного завершения совершенно другого
процесса.
 
После посылки сигнала не ждет действительного завершения
процесса старого сервера перезапуском нового; поскольку
старому серверу серверу нужно некоторое время для завершения,
то процесс нового сервера может даже не запуститься из-за
конфликта с еще не умершим старым сервером. В итого Вы можете
оказаться в ситуации, когда сервер имен не запущен вообще.
 
   
 СМ. ТАКЖЕ 

 
 named (8) 
,  named.reload (8) 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ОШИБКИ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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