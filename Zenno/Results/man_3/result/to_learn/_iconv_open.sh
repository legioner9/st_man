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
 
 
 
 iconv_open (3)   iconv_open  (3)   ( Solaris man: Библиотечные вызовы ) >>  iconv_open  (3)   ( Русские man: Библиотечные вызовы )   iconv_open  (3)   ( Linux man: Библиотечные вызовы )   iconv_open  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

iconv_open - определяет параметр для изменения кодировки набора символов
   
 СИНТАКСИС 

 #include < iconv.h > 

 iconv_t iconv_open(const char*  tocode , const char*  fromcode ); 
 

   
 ОПИСАНИЕ 

Функция  iconv_open  создает параметр, предназначенный
для преобразования кодировки последовательности байтов
 fromcode  в кодировку  tocode .
 

Значения, допустимые для кодировок  fromcode  и  tocode ,
и поддерживаемые комбинации зависят от операционной системы.
В случае с библиотекой GNU C разрешенные значения перечисляются командой
 iconv --list , а также поддерживаются все комбинации перечисленных значений.
 

Полученный параметр перекодирования может использоваться функцией
 iconv  необходимое количество раз. Он остается неизменным до тех пор,
пока не будет уничтожен функцией  iconv_close .
 

Параметр перекодирования указывает на статус процесса перекодировки.
После создания параметра функцией  iconv_open  статус остается начальным. 
Использование  iconv  меняет статус процесса
(подразумевается, что параметр перекодирования не может
использоваться одновременно при выполнении нескольких изменений кодировки).
Чтобы вернуть прежний статус, необходимо
использовать функцию  iconv  с параметром  inbuf , равным NULL.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функция  iconv_open  возвращает созданный параметр перекодирования.
В случае ошибок меняется значение переменной  errno  и возвращается (iconv_t)(-1).
   
 НАЙДЕННЫЕ ОШИБКИ 

Среди прочих могут произойти и такие ошибки:
 
 EINVAL 

 
(перевод кодировки  fromcode  в кодировку  tocode  не поддерживается данной реализацией);
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

UNIX98
   
 СМ. ТАКЖЕ 

 iconv (3),

 iconv_close (3),

 iconv (1)

 

 
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