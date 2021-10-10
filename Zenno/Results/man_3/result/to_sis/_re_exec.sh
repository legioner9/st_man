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
 
 
 
 re_exec (3)   re_exec  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  re_exec  (3)   ( Русские man: Библиотечные вызовы )   re_exec  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

re_comp, re_exec - функции проверки регулярных выражений BSD
   
 СИНТАКСИС 

 #include < sys/types.h > 

 

 #include < regex.h > 

 
 char *re_comp(char * regex ); 

 

 int re_exec(char * string ); 

   
 ОПИСАНИЕ 

 re_comp 

используется для проверки синтаксиса регулярного выражения
 regex .

Обработанный шаблон располагается в статической области, или буфере шаблонов,
который записывается заново каждый раз при вызове
 re_comp .

Если
 regex 

указывает на
 NULL ,

то никаких операций не производится и буфер шаблонов остается неизменным.
Функция
 re_exec 

используется для выявления того, что строка, на которую указывает
 string ,

совпадает с предварительно обработанным
 regex .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 re_comp 

возвращает
 NULL 

в случае удачной проверки
 regex  

или указатель на соответствующее сообщение об ошибке.
 re_exec 

возвращает 1 в случае, если строка соответствует шаблону, иначе возвращается 0.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 regex (7),

 GNU regex manual 

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
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