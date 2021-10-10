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
 
 
 
 getdirentries (3)   getdirentries  (2)   ( FreeBSD man: Системные вызовы ) >>  getdirentries  (3)   ( Русские man: Библиотечные вызовы )   getdirentries  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getdirentries - возвращает элементы каталога в формате,
не зависящем от файловой системы
   
 СИНТАКСИС 

 #define _BSD_SOURCE 

or
 #define _SVID_SOURCE 

 

 #include < dirent.h > 

 
 ssize_t getdirentries(int  fd , char * buf , size_t  nbytes 

 , off_t * basep ); 

   
 ОПИСАНИЕ 

Считывает элементы каталога, указанного в
 fd 

области
 buf .

Считывается, по большей части,
 nbytes 

байтов. Чтение начинается со смещения
* basep 

и после чтения 
* basep 

обновляется в соответствии с новой позицией.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 getdirentries 

возвращает количество считанных байтов или ноль, если достигнут конец
каталога. Если произошла ошибка, возвращается -1, и устанавливается
соответствующим образом глобальная переменная
 errno .

   
 НАЙДЕННЫЕ ОШИБКИ 

Подробности приведены в исходном коде библиотек Linux.
   
 СМ. ТАКЖЕ 

 open (2),

 lseek (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
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