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
 
 
 
 olduname (2) >>  olduname  (2)   ( Русские man: Системные вызовы )   olduname  (2)   ( Linux man: Системные вызовы ) 
   
 ИМЯ 

oldfstat, oldlstat, oldstat, oldolduname, olduname - устаревшие системные вызовы
   
 ОБЗОР 

Устаревшие системные вызовы.
   
 ОПИСАНИЕ 

Ядро Linux 2.0 реализовывает эти вызовы для поддержки старых программ.
Эти вызовы возвращают структуры, которые увеличились с момента их
первой реализации, но старые программы должны продолжать получать старые
маленькие структуры.
 

В настоящий момент программы должны быть связаны с текущими версиями
библиотек и никогда не использовать эти вызовы.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Эти вызовы являются уникальными для Linux и не должны использоваться в
новых программах.
   
 СМОТРИ ТАКЖЕ 

 fstat (2),

 lstat (2),

 stat (2),

 uname (2),

 unimplemented (2)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМОТРИ ТАКЖЕ 
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