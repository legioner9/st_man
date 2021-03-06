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
 
 
 
 nscd (8)   nscd  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   nscd  (8)   ( FreeBSD man: Команды системного администрирования ) >>  nscd  (8)   ( Русские man: Команды системного администрирования )   nscd  (8)   ( Linux man: Команды системного администрирования ) 
   
 ИМЯ 

/usr/sbin/nscd - демон кэширования службы имён
   
 ОПИСАНИЕ 

Nscd - это демон, который предоставляет кэш для наиболее общих
запросов службы имен. По умолчанию, поведение демона кэша определяет
файл с настройками
 /etc/nscd.conf .

Смотри
 nscd.conf (5).

 
Nscd предоставляет кэширование для баз данных
 passwd (5),

 group (5),

и
 hosts (5) 

через стандартные интерфейсы libc, такие как
 getpwnam (3),

 getpwuid (3),

 getgrnam (3),

 getgrgid (3),

 gethostbyname (3),

и другие. Каждый кэш имеет для своих данных отдельное TLL (time-to-live
- время жизни); изменения в локальной базе данных
( /etc/passwd ,

и других) приводит к тому что кэш становится неправльным в течении
пятнадцати секунд. Заметим, что файл
 shadow 

специально не кэшируется.
Вызовы
 getspnam (3)

оставляют результат некэшированным.
 
   
 ОПЦИИ 

 
 --help 

 
выдать список все опций и что они делают.
 
 
   
 ЗАМЕЧАНИЯ 

Nscd ничего не знает о протоколах службы. Это также означает, что
если вы изменяете
 /etc/resolv.conf 

для DNS запросов, nscd продолжит использование старых данных,
если вы настроили в файле
 /etc/nsswitch.conf 

поиск узлов через использование DNS. В этом случае, вам нужно
перезапустить nscd.
 
   
 СМОТРИ ТАКЖЕ 

 nscd.conf (5),

 nsswitch.conf (5)

   
 АВТОР 

 nscd 

написал Thorsten Kukuk и Ulrich Drepper.
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ОПЦИИ 
 ЗАМЕЧАНИЯ 
 СМОТРИ ТАКЖЕ 
 АВТОР 
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