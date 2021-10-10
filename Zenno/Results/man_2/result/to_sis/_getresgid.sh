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
 
 
 
 getresgid (2)   getresgid  (2)   ( FreeBSD man: Системные вызовы ) >>  getresgid  (2)   ( Русские man: Системные вызовы )   getresgid  (2)   ( Linux man: Системные вызовы ) 
   
 НАЗВАНИЕ 

getresuid, getresgid - считывает идентификаторы действительного (real), эффективного (effective) 
или сохраненного (saved) пользователя или группы.
   
 СИНТАКСИС 

 #define _GNU_SOURCE 

 

 #include < unistd.h > 

 
 int getresuid(uid_t * ruid , uid_t * euid , uid_t * suid ); 

 

 int getresgid(gid_t * rgid , gid_t * egid , gid_t * sgid ); 

   
 ОПИСАНИЕ 

 getresuid 

и
 getresgid 

(представленные в Linux 2.1.44)
считывают идентификатор действительного (real), эффективного (effective) 
или сохраненного (saved) пользователя (соответственно и идентификаторы
групп) текущего процесса.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении вызова возвращается ноль.
При ошибке возвращается -1, а переменной
 errno 

присваиваются соответствующие значения.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 EFAULT 

 
Один из аргументов указывает на адрес вне области адресного пространства,
принадлежащего вызывающей программе.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Этот вызов применяется только в Linux.
Определенный в glibc прототип с версии 2.3.2
обеспечивает определение _GNU_SOURCE.
   
 СМ. ТАКЖЕ 

 getuid (2),

 setuid (2),

 setreuid (2),

 setresuid (2).

 

 
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