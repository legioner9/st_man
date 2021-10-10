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
 
 
 
 audit_request_status (3) >>  audit_request_status  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

audit_request_status - получить статус системы аудита
   
 СИНТАКСИС 

 
 #include < libaudit.h > 

 
int audit_request_status (int fd);
 
   
 ОПИСАНИЕ 

 
 

audit_request_status запрашивает ядро для получения структуры статуса системы аудита с различными параметрами. Структура audit_status:
 
 


 
struct audit_status {
   __u32   mask;           /* битовая маска допустимых параметров */
   __u32   enabled;        /* 1 = включена, 0 = отключена */
   __u32   failure;        /* действие Failure-to-log */
   __u32   pid;            /* pid процесса демона auditd */
   __u32   rate_limit;     /* лимит сообщений (в секунду) */
   __u32   backlog_limit;  /* лимит сообщений в очереди */
   __u32   lost;           /* потеряно сообщений */
   __u32   backlog;        /* количество сообщений в очереди */
};
 



 

 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

 
При ошибке возвращает значение <= 0. Иначе - порядковый номер сообщения netlink. В функции может произойти любая ошибка, появляющаяся в функции sendto.
 
   
 СМ. ТАКЖЕ 

 
 audit_open (3),

 audit_get_reply (3),

 auditd (8).

 
   
 АВТОР 

Стив Граб (Steve Grubb)
 
   
 ПЕРЕВОД 

Перевод с английского russians < pawel5000@gmail.com > 2007

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
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