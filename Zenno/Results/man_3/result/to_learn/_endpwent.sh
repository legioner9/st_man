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
 
 
 
 endpwent (3)   endpwent  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  endpwent  (3)   ( Русские man: Библиотечные вызовы )   endpwent  (3)   ( Linux man: Библиотечные вызовы )   endpwent  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getpwent, setpwent, endpwent - получают запись из файла паролей
   
 СИНТАКСИС 

 #include < pwd.h > 
 #include < sys/types.h > 

 struct passwd *getpwent(void); 

 void setpwent(void); 

 void endpwent(void); 
 

   
 ОПИСАНИЕ 

Функция 
 getpwent() 

возвращает указатель на структуру, содержащую поля строки из файла 
 /etc/passwd .

При первом вызове возвращается первая запись; далее возвращаются последующие записи. 
 

Функция
 setpwent() 

устанавливает позицию чтения/записи в начало файла 
 /etc/passwd .

 

Функция
 endpwent() 

закрывает файл
 /etc/passwd .

 

Структура 
 passwd  

определена в 
 < pwd.h >  

следующим образом: 
 
 
 
struct passwd {
        char    *pw_name;       /* имя пользователя */
        char    *pw_passwd;     /* пароль пользователя */
        uid_t   pw_uid;         /* id пользователя */
        gid_t   pw_gid;         /* id группы */
        char    *pw_gecos;      /* настоящее имя */
        char    *pw_dir;        /* домашний каталог */
        char    *pw_shell;      /* программа-оболочка */
};

 

 

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция 
 getpwent() 

возвращает структуру 
 passwd  

или NULL, если записей больше нет или если произошла ошибка.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOMEM 

 
(недостаточно памяти для размещения структуры passwd).
 
   
 ФАЙЛЫ 

 
 /etc/passwd 

 
(файл базы данных паролей).
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVID 3, BSD 4.3
   
 СМ. ТАКЖЕ 

 fgetpwent (3),

 getpwnam (3),

 getpwuid (3),

 getpw (3),

 putpwent (3),

 passwd (5) 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ФАЙЛЫ 
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