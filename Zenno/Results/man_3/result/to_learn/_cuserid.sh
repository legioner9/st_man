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
 
 
 
 cuserid (3)   cuserid  (3)   ( Solaris man: Библиотечные вызовы )   cuserid  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  cuserid  (3)   ( Русские man: Библиотечные вызовы )   cuserid  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getlogin, cuserid - получает имя пользователя 
   
 СИНТАКСИС 

 #include < unistd.h > 

 
 char * getlogin ( void ); 

 
 #include < stdio.h > 

 
 char * cuserid(char * string ); 

   
 ОПИСАНИЕ 

 getlogin  

возвращает указатель на строку, содержащую имя пользователя, вошедшего в
систему c терминала, который является управляющим для процесса. Если эту информацию 
получить невозможно, этой функцией возвращается пустой указатель. 
Строка выделяется статически и может быть заново записана при последующих вызовах этой
функции или 
 cuserid .

 

 cuserid 

возвращает указатель на строку, содержащую имя пользователя, связанное с
идентификатором эффективного пользователя процесса. Если 
 string  

не является "пустым" указателем, то это должен быть массив,
который способен вместить как минимум 
 L_cuserid 

символов; строка возвращается в этом массиве. В противном случае возвращается
указатель на строку в фиксированной области. Эта строка выделена статически и
может быть записана вновь при последующих вызовах этой функции или функции 
 getlogin .

 

Макрос 
 L_cuserid 

является целочисленной константой, показывающей длину массива, который
может понадобиться для хранения имени пользователя.
 L_cuserid  

описана в
 stdio.h .

 

Эти функции позволяют программе точно определить работающего пользователя (
 cuserid )

или пользователя, вошедшего в систему в течение этого сеанса (
 getlogin ).

Функции могут различаться, если запускаются программы с установленным битом setuid.
 

В большинстве случаев для определения пользователя полезнее использовать
переменную окружения
 LOGNAME ,

потому что пользователь может установить 
 LOGNAME  

каким угодно.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOMEM 

 
(недостаточно памяти для размещения структуры passwd).
 
   
 ФАЙЛЫ 

 /etc/passwd      файл базы данных паролей
 
 /var/run/utmp    (традиционно  /etc/utmp ;
                        в некоторых версиях libc использовались  /var/adm/utmp )
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX.1.  В System V имеется функция 
 cuserid ,

использующая идентификатор реального пользователя вместо 
идентификатора эффективного пользователя. Функция 
 cuserid 

была включена в версию POSIX 1988 года, но не упомянута в версии 1990.
   
 НАЙДЕННЫЕ ОШИБКИ 

К сожалению, зачастую довольно просто "обмануть" getlogin(). Иногда она вообще не
работает из-за того, что какая-то программа перепутала содержимое файла
utmp. Часто функция возвращает только первые 8 символов имени. Пользователь,
вошедший в систему с терминала, который является управляющим для нашей
программы, необязательно будет пользователем, запустившим программу. Избегайте
использования getlogin() из соображений безопасности.
 

Hикто точно не знает, как работает cuserid(), поэтому избегайте ее использования в
переносимых программах, а вместо нее используйте getpwuid(geteuid()), если  
это необходимо. 
Еще раз: HЕ ИСПОЛЬЗУЙТЕ cuserid().
   
 СМ. ТАКЖЕ 

 geteuid (2),

 getuid (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 НАЙДЕННЫЕ ОШИБКИ 
 ФАЙЛЫ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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