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
 
 
 
 audit_log_user_command (3) >>  audit_log_user_command  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

audit_log_user_command - регистрация команд пользователя
   
 СИНТАКСИС 

 #include < libaudit.h > 

 
 int audit_log_user_command(int audit_fd, int type, const char *command, const char *tty, int result); 

 
   
 ОПИСАНИЕ 

Эта функция регистрирует сообщения в контрольной системе, используя предопределённый формат сообщения.
Используется для проверки строк команд. Эта функция должна использоваться всеми приложениями, нуждающимися в проверке команд. 
Параметры функции следующие:
 
 audit_fd - дескриптор, возвращаемый audit_open
type - тип сообщения. Например: AUDIT_USYS_CONFIG, AUDIT_USER_LOGIN
command - проверяемая команда
tty - tty пользователя. Если NULL, то будет предпринята попытка определения.
result - 1 ("успешно") или 0 ("ошибка")

Возвращает порядковое значение больше 0 при успешном выполнении или <= 0 при ошибке.
 
   
 ОБРАБОТКА ОШИБОК 

 
Эта функция возвращает значение -1 при ошибке. Используйте errno для получения большей информации.
 
   
 СМ. ТАКЖЕ 

 
 audit_log_user_message (3),

 audit_log_user_comm_message (3),

 audit_log_acct_message (3),

 audit_log_user_avc_message (3),

 audit_log_semanage_message (3).

 
   
 АВТОР 

Стив Граб (Steve Grubb)
 
   
 ПЕРЕВОД 

Перевод с английского russians < pawel5000@gmail.com > 2007

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОБРАБОТКА ОШИБОК 
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