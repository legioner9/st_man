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
 
 
 
 set_aumessage_mode (3) >>  set_aumessage_mode  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

set_message_mode - установка приемника сообщений
   
 СИНТАКСИС 



 
#include < libaudit.h >
 
 
 
 void  set_message_mode  (message_t  mode );


 
 
   
 ОПИСАНИЕ 

 
 

 set_message_mode  устанавливает место, куда направляются сообщения. Если  mode =0 (по умолчанию), то информационные сообщения посылаются в stderr. Если  mode =1, то информационные сообщения посылаются в syslog.
 
   
 ПРИМЕР 

 
 
/* Направлять сообщения в syslog */
set_message_mode(MSG_SYSLOG)

 

 
   
 СМ. ТАКЖЕ 

 
 auditd (8),

 audit_open (3).

 
   
 АВТОР 

Дебора Веларде (Debora Velarde).
 
   
 ПЕРЕВОД 

Перевод с английского Vsevolod Khalizev < vkhalizev@gmail.com > 2007

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРИМЕР 
 СМ. ТАКЖЕ 
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