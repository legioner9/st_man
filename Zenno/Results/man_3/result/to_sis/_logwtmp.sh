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
 
 
 
 logwtmp (3)   logwtmp  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  logwtmp  (3)   ( Русские man: Библиотечные вызовы )   logwtmp  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

updwtmp, logwtmp - добавляет запись к текущему файлу wtmp
   
 СИНТАКСИС 

 #include < utmp.h > 

 void updwtmp(const char * wtmp_file , const struct utmp * ut ); 
 
 void logwtmp(const char * line , const char * name , const char * host ); 
 

   
 ОПИСАНИЕ 

 updwtmp () добавляет структуру
 ut 

к файлу wtmp.
 

 logwtmp () создает структуру utmp, используя
 line ,  name ,  host ,

текущее время и текущий идентификатор процесса.
После этого вызывается  updwtmp () для того, чтобы добавить эту структуру к файлу.
   
 ДОСТУПНОСТЬ 

Обе функции доступны в glibc2, но недоступны в libc5. Однако,
 logwtmp 

существует в старой библиотеке libbsd. Сейчас в libutil включена функция
 logwtmp 

(хотя вам будет нужно добавить параметр
 -lutil 

в командную строку компилятора для ее использования.)
   
 ФАЙЛЫ 

 
 /var/log/wtmp 

 
- база данных прошлых пользовательских соединений.
 
   
 СМ. ТАКЖЕ 

 wtmp (5).

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ДОСТУПНОСТЬ 
 ФАЙЛЫ 
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