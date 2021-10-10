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
 
 
 
 perror (3)   perror  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   perror  (3)   ( Solaris man: Библиотечные вызовы )   perror  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  perror  (3)   ( Русские man: Библиотечные вызовы )   perror  (3)   ( Linux man: Библиотечные вызовы )   perror  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

perror - выводит сообщение о системной ошибке
   
 СИНТАКСИС 

 #include < stdio.h > 

 
 void perror(const char  *s ); 

 
 #include < errno.h > 

 
 const char * sys_errlist []; 

 

 int   sys_nerr ; 

   
 ОПИСАНИЕ 

Процедура
 perror() 

выводит в стандартный поток ошибки сообщения, описывая ошибку,
произошедшую при последнем системном вызове или вызове библиотечной
функции. Сначала (если
 s 

не равно NULL и
* s 

не равно NULL) выводится строка
 s ,

затем двоеточие, пробел и сообщение, завершающееся переводом строки.
Для большего удобства параметы строки должны содержать имя функции,
вызвавшей ошибку. Номер ошибки извлекается из внешней переменной
 errno ,

которая устанавливается в случае ошибки, но не "очищается" в случае
нормального завершения работы. Глобальный список ошибок
 sys_errlist [],

упорядоченный в соответствии с
 errno ,

может быть использован для вывода сообщений об ошибке без перевода
строки. Наибольший номер в таблице имеет
 sys_nerr  -1.

Будьте осторожны при непосредственном использовании этого массива. Новые
элементы не могут быть вписаны в
 sys_errlist [].

Если системный вызов завершается ошибкой, то возвращается -1 и переменная 
 errno 

устанавливается равной коду ошибки (эти величины могут быть найдены в
 < errno.h > ).

Многие системные функции работают именно так.
Функция
 perror() 

позволяет отображать коды ошибок в понятном человеку виде. Заметьте, что
 errno 

не является определенной после нормального завершения системного вызова:
этот вызов может изменить переменную кода ошибки, даже если завершился удачно
(например, потому, что он использовал другие функции, завершившиеся ошибкой).
Таким образом, если за вызовом, завершившимся ошибкой,
непосредственно не следует
 perror ,

то величина
 errno 

должна быть сохранена.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

ANSI C, BSD 4.3, POSIX, X/OPEN
   
 СМ. ТАКЖЕ 

 strerror (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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