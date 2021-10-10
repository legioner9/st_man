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
 
 
 
 putpwent (3)   putpwent  (3)   ( Solaris man: Библиотечные вызовы ) >>  putpwent  (3)   ( Русские man: Библиотечные вызовы )   putpwent  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

putpwent - записывает строку в формате файла паролей
   
 СИНТАКСИС 

 #include < pwd.h > 
 #include < stdio.h > 
 #include < sys/types.h > 

 int putpwent(const struct passwd * p , FILE * stream ); 
 

   
 ОПИСАНИЕ 

Функция  putpwent()  записывает строку в формате файла паролей из структуры
 p  в файловый поток  stream .
 

Структура  passwd  определена в файле  < pwd.h >  следующим образом:
 
 
 
struct passwd {
        char    *pw_name;       /* имя пользователя */
        char    *pw_passwd;     /* пароль */
        uid_t   pw_uid;         /* идентификатор пользователя */
        gid_t   pw_gid;         /* идентификатор группы */
        char    *pw_gecos;      /* настоящее имя пользователя */
        char    *pw_dir;        /* домашний каталог */
        char    *pw_shell;      /* программа-оболочка */
};

 

 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  putpwent()  возвращает 0 в случае удачного завершения вызова
или -1 в случае ошибки.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EINVAL 

 
- передан неверный аргумент (NULL).
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3
   
 СМ. ТАКЖЕ 

 fgetpwent (3),

 getpwent (3),

 setpwent (3),

 endpwent (3),

 getpwnam (3),

 getpwuid (3),

 getpw (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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