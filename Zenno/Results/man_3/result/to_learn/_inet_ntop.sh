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
 
 
 
 inet_ntop (3)   inet_ntop  (3)   ( Solaris man: Библиотечные вызовы )   inet_ntop  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  inet_ntop  (3)   ( Русские man: Библиотечные вызовы )   inet_ntop  (3)   ( Linux man: Библиотечные вызовы )   inet_ntop  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

inet_ntop - разделяет структуру сетевого адреса
   
 СИНТАКСИС 

 #include < sys/types.h > 
 #include < sys/socket.h > 
 #include < arpa/inet.h > 

 const char *inet_ntop(int  af , const void * src , 
                       char * dst , size_t  cnt ); 
 

   
 ОПИСАНИЕ 

Данная функция преобразует структуру сетевого адреса
 src 

в строку символов с сетевым адресом (типа
 af ),

которая затем копируется в символьный буфер
 dst ;

размер этого буфера составляет
 cnt 

байтов.
 

Возможности функции
 inet_ntop (3)

несколько шире, чем функции
 inet_ntoa (3),

так как первая может поддерживать несколько типов адресов, и использование
 inet_ntoa (3)

будет считаться устаревшим и ненужным (по сравнению с
 inet_ntop (3)).

На текущий момент поддерживаются следующие типы адресов:
 
 AF_INET 

 
 src 

указывает на
 struct in_addr 

(в формате сетевого порядка расположения байтов),
которая преобразуется в IPv4-сетевой адрес в формате " ddd.ddd.ddd.ddd ".
Буфер
 dst 

должен быть размером, по меньшей мере, равным
 INET_ADDRSTRLEN 

байтам.
 AF_INET6 

 
 src 

указывает на
 struct in6_addr 

(в формате сетевого порядка расположения байтов),
которая преобразуется в представление этого адреса в наиболее
верном формате IPv6. Буфер
 dst 

должен быть размером, по меньшей мере, равным
 INET6_ADDRSTRLEN 

байтам.
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

 inet_ntop 

возвращает ненулевой указатель на
 dst .

В случае ошибок возвращается NULL, а также
 errno 

присваивается значение
 EAFNOSUPPORT ,

если значение
 af 

не было установлено равным корректному типу адреса
или равным
 ENOSPC ,

если полученная после преобразования строка превышает размер
 dst 

(заданный параметром
 cnt ).

   
 СМ. ТАКЖЕ 

 inet_pton (3)

   
 НАЙДЕННЫЕ ОШИБКИ 

 AF_INET6 

преобразует IPv6-отображающий адрес IPv4 в формат IPv6.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СМ. ТАКЖЕ 
 НАЙДЕННЫЕ ОШИБКИ 
 
 
 
 
 
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