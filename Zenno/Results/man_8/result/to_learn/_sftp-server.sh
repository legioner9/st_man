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
 
 
 
 sftp-server (8)   sftp-server  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   sftp-server  (8)   ( Solaris man: Команды системного администрирования )   sftp-server  (8)   ( FreeBSD man: Команды системного администрирования ) >>  sftp-server  (8)   ( Русские man: Команды системного администрирования )   sftp-server  (8)   ( Linux man: Команды системного администрирования ) BSD mandoc 
   
 ИМЯ 



 sftp-server 

 - подсистема сервера SFTP

   
 ОБЗОР 

 sftp-server 

[- f  подсистема_журналирования 



]

[- l  уровень_журналирования 



]

   
 ОПИСАНИЕ 

 


это программа обменивается данными с клиентом через стандартный
ввод и вывод, используя при этом протокол SFTP.
 


не должен вызываться непосредственно. Его должна вызывать программа
 sshd (8)


при соответствующем значении параметра 
 Subsystem 

 
 

Ключи командной строки 
 


следует указывать в директиве
 Subsystem 

 
См. 
sshd_config5.


 

Допустимые ключи:
 
 

 -f  подсистема_журналирования 



 
Код источника сообщений для 
 


который следует использовать при взаимодействии с протоколом syslog.
Допустимые значения: DAEMON, USER, AUTH, LOCAL0, LOCAL1, LOCAL2,
LOCAL3, LOCAL4, LOCAL5, LOCAL6, LOCAL7.
Значение по умолчанию - AUTH.
 -l  уровень_журналирования 



 
Уровень сообщений для журналирования
 . 

Допустимыми являются значения: 
QUIET, FATAL, ERROR, INFO, VERBOSE, DEBUG, DEBUG1, DEBUG2 и DEBUG3.
При значении INFO и VERBOSE в протокол заносятся операции которые
 


выполняет относительно клиентов.
Значения DEBUG и DEBUG1 эквивалентны.
DEBUG2 и DEBUG3 выводят максимум подробностей.
Значение по умолчанию: ERROR.
 
 

   
 СМ. ТАКЖЕ 

 sftp (1),


 ssh (1),


sshd_config5,


 sshd (8)


 
T. Ylonen
S. Lehtinen
 "SSH File Transfer Protocol" 
draft-ietf-secsh-filexfer-00.txt
January 2001
work in progress material
 

   
 ИСТОРИЯ 

 


впервые появился в
Ox 2.8 .

   
 АВТОР 

An Markus Friedl Aq  markus@openbsd.org 

 
   
 ПЕРЕВОД 

Николай Шафоростов < shafff@ukr.net > 2007>
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 СМ. ТАКЖЕ 
 ИСТОРИЯ 
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