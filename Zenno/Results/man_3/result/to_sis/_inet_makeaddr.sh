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
 
 
 
 inet_makeaddr (3)   inet_makeaddr  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  inet_makeaddr  (3)   ( Русские man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

inet_aton, inet_addr, inet_network, inet_ntoa, inet_makeaddr, inet_lnaof,
inet_netof - работа с адресами интернет
   
 СИНТАКСИС 

 #include < sys/socket.h > 
 #include < netinet/in.h > 
 #include < arpa/inet.h > 

 int inet_aton(const char * cp , struct in_addr * inp ); 

 in_addr_t inet_addr(const char * cp ); 

 in_addr_t inet_network(const char * cp ); 

 char *inet_ntoa(struct in_addr  in ); 

 struct in_addr inet_makeaddr(int  net , int  host ); 

 in_addr_t inet_lnaof(struct in_addr  in ); 

 in_addr_t inet_netof(struct in_addr  in ); 
 

   
 ОПИСАНИЕ 

 inet_aton()  преобразовывает обычный вид IP-адреса  cp 
(из номеров и точек) в двоичный код и сохраняет его в структуре,
на которую указывает  inp .  inet_aton  возвращает ненулевое значение,
если адрес правильный, и возвращает ноль, если он неверен.
 

Функция  inet_addr()  преобразует обычный вид IP-адреса  cp  
(из номеров и точек) в двоичный код в сетевом порядке расположения байтов.
Если входящий адрес неверен, то возвращается INADDR_NONE (обычно -1).
Это -  устаревший  способ, поскольку уже существует
 inet_aton , описанный выше;
способ также считается устаревшим, потому что -1 фактически является 
правильным адресом
(255.255.255.255), а  inet_aton  четко определяет, есть ошибка
в адресе или нет.
 

Функция  inet_network()  извлекает сетевой номер
в хостовом порядке расположения байтов
из адреса  cp , записанном в виде номеров и точек.
Если входящий адрес неверен, то возвращается -1.
 

Функция  inet_ntoa()  преобразует IP-адрес  in ,
заданный в сетевом порядке расположения байтов, в стандартный строчный вид,
из номеров и точек.
Строка располагается в статически размещенном буфере;
последующие вызовы перепишут его данные.
 

Функция  inet_makeaddr()  создает IP-адрес в сетевом порядке расположения байтов,
комбинируя номер сети  net  с локальным адресом  host  в сети  net 
(оба в хостовом порядке расположения байтов).
 

Функция  inet_lnaof()  возвращает часть адреса для локального хоста
из IP-адреса  in .  Адрес локального хоста возвращается в хостовом порядке
размещения байтов.
 

Функция  inet_netof()  возвращает сетевую часть IP-адреса  in .
Сетевой номер возвращается в виде байтов, порядок которых определяется
системой локального хоста.
 

Структура  in_addr , используемая в функциях  inet_ntoa() ,
 inet_makeaddr() ,  inet_lnoaf()  и  inet_netof() ,
определена в  netinet/in.h  таким образом:
 
 
 
struct in_addr {
        unsigned long int s_addr;
}

 

 

 

Заметим, что для i80x86 хостовый порядок расположения байтов
означает размещение сначала наименьшего значащего байта, а
сетевой порядок расположения байтов (используемый в интернет)
подразумевает размещение в начале наибольшего значимого байта.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 gethostbyname (3),

 getnetent (3),

 inet_ntop (3),

 inet_pton (3),

 hosts (5),

 networks (5)

 

 
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