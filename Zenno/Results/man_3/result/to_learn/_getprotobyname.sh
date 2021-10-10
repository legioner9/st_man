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
 
 
 
 getprotobyname (3)   getprotobyname  (3)   ( Solaris man: Библиотечные вызовы )   getprotobyname  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  getprotobyname  (3)   ( Русские man: Библиотечные вызовы )   getprotobyname  (3)   ( Linux man: Библиотечные вызовы )   getprotobyname  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getprotoent, getprotobyname, getprotobynumber, setprotoent,
endprotoent - получают запись из файла протоколов
   
 СИНТАКСИС 

 #include < netdb.h > 

 struct protoent *getprotoent(void); 

 struct protoent *getprotobyname(const char * name ); 

 struct protoent *getprotobynumber(int  proto ); 

 void setprotoent(int  stayopen ); 

 void endprotoent(void); 
 

   
 ОПИСАНИЕ 

Функция 
 getprotoent()  

считывает следующую строку из файла 
 /etc/protocols 

и возвращает структуру
 protoent ,

содержащую поля этой строки. Если необходимо, файл 
 /etc/protocols 

открывается.
 

Функция 
 getprotobyname() 

возвращает структуру
 protoent  

для строки из 
 /etc/protocols ,

совпадающую с именем протокола
 name. 

 

Функция 
 getprotobynumber() 

возвращает структуру 
 protoent 

для строки, совпадающей с номером протокола 
 number. 

 

Функция 
 setprotoent() 

открывает файл 
 /etc/protocols 

и переходит в его начало. Если 
 stayopen 

является true (1) (истинным), то файл не будет закрываться между вызовами 
 getprotobyname() 

или 
 getprotobynumber() .

 

Функция
 endprotoent() 

закрывает файл
 /etc/protocols .

 

Структура 
 protoent 

определена в 
 < netdb.h > 

следующим образом:
 
 
 
struct protoent {
        char    *p_name;        /* официальное имя протокола */
        char    **p_aliases;    /* список псевдонимов */
        int     p_proto;        /* номер протокола */
}

 

 

 

Полями структуры 
 protoent 

являются:
 
 p_name 

 
(официальное имя протокола);
 p_aliases 

 
(оканчивающийся нулем список альтернативных имен для протокола);
 p_proto 

 
(номер протокола).
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции 
 getprotoent() ,

 getprotobyname() 

и
 getprotobynumber() 

возвращают структуру 
 protoent 

или NULL, если произошла ошибка или достигнут конец файла.
   
 ФАЙЛЫ 


 
 /etc/protocols 

 
(файл базы данных протоколов).

 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 getservent (3),

 getnetent (3),

 protocols (5)

 

 
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