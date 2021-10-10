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
 
 
 
 getnetent (3)   getnetent  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  getnetent  (3)   ( Русские man: Библиотечные вызовы )   getnetent  (3)   ( Linux man: Библиотечные вызовы )   getnetent  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getnetent, getnetbyname, getnetbyaddr, setnetent, endnetent - получают
сетевую запись 
   
 СИНТАКСИС 

 #include < netdb.h > 

 struct netent *getnetent(void); 

 struct netent *getnetbyname(const char * name ); 

 struct netent *getnetbyaddr(long  net , int  type ); 

 void setnetent(int  stayopen ); 

 void endnetent(void); 
 

   
 ОПИСАНИЕ 

Функция 
 getnetent() 

читает следующую строку из файла 
 /etc/networks 

и возвращает структуру 
 netent ,

содержащую поля этой строки. При необходимости открывается файл 
 /etc/networks .

 

Функция 
 getnetbyname() 

возвращает структуру 
 netent 

для строки из 
 /etc/networks ,

совпадающей с именем сети
 name .

 

Функция 
 getnetbyaddr() 

возвращает структуру 
 netent 

для строки, совпадающей с номером сети 
 net  

типа
 type .

 

Функция 
 setnetent() 

открывает файл 
 /etc/networks  

и переходит в его начало. Если 
 stayopen  

является true (1) (истинным), то этот файл не будет закрываться между вызовами 
 getnetbyname() 

и
 getnetbyaddr() .

 

Функция
 endservent() 

закрывает
 /etc/networks .

 

Структура 
 netent 

определена в 
 < netdb.h >  

следующим образом:
 
 
 
struct netent {
        char    *n_name;          /* официальное имя сети */
        char    **n_aliases;      /* список псевдонимов */
        int     n_addrtype;       /* тип сетевого адреса */
        unsigned long int n_net;  /* номер сети */
}

 

 

 

Полями структуры 
 netent  

являются: 
 
 n_name 

 
(официальное имя сети);
 n_aliases 

 
(оканчивающийся нулем список альтернативных имен сети);
 n_addrtype 

 
(тип сетевого адреса; всегда AF_INET);
 n_net 

 
(номер сети в сетевом порядке байтов).
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции 
 getnetent() ,

 getnetbyname()  

и 
 getnetbyaddr() 

возвращают структуру 
 netent 

или NULL, если возникла ошибка или достигнут конец файла.
   
 ФАЙЛЫ 

 
 /etc/networks 

 
файл базы данных сетей
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 getprotoent (3),

 getservent (3),

 networks (5)

 

RFC 1101
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ФАЙЛЫ 
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