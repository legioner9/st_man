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
 
 
 
 setsockopt (2)   setsockopt  (2)   ( FreeBSD man: Системные вызовы ) >>  setsockopt  (2)   ( Русские man: Системные вызовы )   setsockopt  (2)   ( Linux man: Системные вызовы )   setsockopt  (3)   ( Solaris man: Библиотечные вызовы )   setsockopt  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 ИМЯ 

getsockopt, setsockopt - получить или установить флаги на сокете
   
 ОБЗОР 

 #include < sys/types.h > 

 

 #include < sys/socket.h > 

 
 int getsockopt(int  s , int  level , int  optname , 

 void * optval , socklen_t * optlen ); 

 
 int setsockopt(int  s , int  level , int  optname , 

 const void * optval , socklen_t  optlen ); 

   
 ОПИСАНИЕ 

 getsockopt 

и
 setsockopt 

манипулируют
 флагами ,

установленными на сокете.  Флаги могут существовать на нескольких
уровнях протоколов; они всегда присутствуют на самом верхнем из них.
 
При манипулировании флагами сокета должен быть указан уровень, на
котором находится этот флаг, и имя этого флага.  Для манипуляции
флагами на уровне сокета
 level 

задается как
 SOL_SOCKET .

Для манипуляции флагами на любом другом уровне этим функциям
передается номер соответствующего протокола, управляющего флагами.
Например, для указания, что флаг должен интерпретироваться протоколом 
 TCP ,

в параметре
 level 

должен передаваться номер протокола
 TCP ;

смотри описание
 getprotoent (3).

 
Параметры
 optval 

и
 optlen 

используются в функции 
 setsockopt 

для доступа к значениям флагов.  Для
 getsockopt 

они задают буфер, в который нужно поместить запрошенное значение.  Для
 getsockopt 

параметр
 optlen 

передается по ссылке.  При вызове он содержит размер буфера, на
который указывает параметр
 optval ,

а после вызова -- реальный размер возвращенного значения.  Если
значение флага не используется, то параметр
 optval 

может быть
 NULL .

 
 optname 

и все указанные флаги без изменений передаются для интерпретации
соответствующему модулю протоколов.  Файл
 < sys/socket.h > 

содержит определения флагов уровня сокета, описанные ниже.  Флаги на
других уровнях протоколов различаются по формату и по имени.
Обращайтесь к соответствующим пунктам секции 4 руководства.
 
Большинство флагов уровня сокета используют тип
 int 

для параметра
 optval .

Для функции
 setsockopt ,

параметр должен быть ненулевым, чтобы установить флаг логического
типа, или нуль, чтобы сбросить этот флаг.
 
 

Описание доступных флагов сокетов находится в 
 socket (7)

и соответствующих протоколам страницах руководства.
 
   
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 

В случае успеха возвращается ноль.  При ошибке возвращается -1, а 
значение
 errno 

устанавливается должным образом.
 
   
 ОШИБКИ 

 
 
 EBADF 

 
Неверный файловый дескриптор
 s .

 ENOTSOCK 

 
Аргумент
 s  --

это файл, а не сокет.
 ENOPROTOOPT 

 
Неизвестный на данном уровне флаг.
 EFAULT 

 
Адрес, на который указывает параметр
 optval 

не находится в разрешенной части адресного пространства процесса.  Для
 getsockopt ,

эта ошибка может также появиться, если 
 optlen 

также выходит за пределы адресного пространства процесса.
 EINVAL 

 
Неправильное значение
 optlen 

в setsockopt
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

SVr4, 4.4BSD (эти системные вызовы впервые появились в  4.2BSD).  SVr4
документирует дополнительные коды ошибок ENOMEM и ENOSR, но не
документирует флаги
 SO_SNDLOWAT ,  SO_RCVLOWAT ,  SO_SNDTIMEO ,  SO_RCVTIMEO .

 
   
 ЗАМЕЧАНИЕ 

Третий аргумент вызова
 bind 

в действительности имеет тип
 int 

(это именно так в BSD 4.*, libc4 и libc5).  
При разработке стандарта POSIX случилось некоторое недопонимание, и 
появился тип
 socklen_t .

Рабочая версия стандарта ещё не содержит этого типа, но glibc2 уже
следует ему и имеет тип
 socklen_t .

Смотри также
 accept (2).

 
   
 ОШИБКИ В РЕАЛИЗАЦИИ 

Некоторые флаги сокетов должны обрабатываться на более низких уровнях
системы.
   
 СМОТРИ ТАКЖЕ 

 ioctl (2),  socket (2),  getprotoent (3),  protocols (5)

 
 socket (7),  unix (7),  tcp (7), 

   
 ПЕРЕВОД 

Copyright (C) Alexey Mahotkin < alexm@hsys.msk.ru > 1999,
Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМОЕ ЗНАЧЕНИЕ 
 ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 ЗАМЕЧАНИЕ 
 ОШИБКИ В РЕАЛИЗАЦИИ 
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