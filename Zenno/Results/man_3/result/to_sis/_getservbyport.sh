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
 
 
 
 getservbyport (3)   getservbyport  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  getservbyport  (3)   ( Русские man: Библиотечные вызовы )   getservbyport  (3)   ( Linux man: Библиотечные вызовы )   getservbyport  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getservent, getservbyname, getservbyport, setservent, endservent -
получают запись о сервисе
   
 СИНТАКСИС 

 #include < netdb.h > 

 struct servent *getservent(void); 

 struct servent *getservbyname(const char * name , const char * proto ); 

 struct servent *getservbyport(int  port , const char * proto ); 

 void setservent(int  stayopen ); 

 void endservent(void); 
 

   
 ОПИСАНИЕ 

Функция 
 getservent() 

считывает следующую строку из файла 
 /etc/services 

и возвращает структуру 
 servent ,

содержащую поля этой строки. Если необходимо, файл 
 /etc/services 

открывается.
 

Функция 
 getservbyname() 

возвращает структуру 
 servent 

для строки из 
 /etc/services ,

совпадающей с именем сервиса
 name 

и использующей протокол
 proto .

Если   proto  равен NULL,
то подойдет любой протокол.
 

Функция 
 getservbyport() 

возвращает структуру 
 servent  

для строки, совпадающей с портом 
 port ,

указанным в сетевом порядке расположения байтов и использующим протокол
 proto .

Если   proto  равен NULL,
то подойдет любой протокол.
 

Функция 
 setservent() 

открывает файл 
 /etc/services  

и переходит в его начало. Если значение 
 stayopen  

является истинным (1), то файл не будет закрываться между вызовами 
 getservbyname() 

и 
 getservbyport() .

 

Функция 
 endservent() 

закрывает 
 /etc/services .

 

Структура 
 servent  

определена в файле
 < netdb.h >  

следующим образом: 
 
 
 
struct servent {
        char    *s_name;        /* официальное имя сервиса */
        char    **s_aliases;    /* список псевдонимов */
        int     s_port;         /* номер порта */
        char    *s_proto;       /* используемый протокол */
}

 

 

 

Полями структуры
 servent  

являются:
 
 s_name 

 
(официальное имя сервиса);
 s_aliases 

 
(оканчивающийся нулем список альтернативных имен сервисов);
 s_port 

 
(номер порта сервиса, указанный в сетевом порядке байтов);
 s_proto 

 
(имя протокола, используемого с этим сервисом).
 
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции
 getservent() ,

 getservbyname() 

и
 getservbyport() 

возвращают структуру 
 servent 

или NULL, если достигнут конец файла или произошла ошибка.
   
 ФАЙЛЫ 

 
 /etc/services 

 
(файл базы данных сервисов).
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

BSD 4.3
   
 СМ. ТАКЖЕ 

 getprotoent (3),

 getnetent (3),

 services (5)

 

 
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