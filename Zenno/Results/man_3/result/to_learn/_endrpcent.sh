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
 
 
 
 endrpcent (3)   endrpcent  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  endrpcent  (3)   ( Русские man: Библиотечные вызовы )   endrpcent  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

getrpcent, getrpcbyname, getrpcbynumber - получают запись RPC
   
 СИНТАКСИС 

 #include < netdb.h >

struct rpcent *getrpcent()

struct rpcent *getrpcbyname(name)
char *name;

struct rpcent *getrpcbynumber(number)
int number;

setrpcent (stayopen)
int stayopen;

endrpcent ()
 

   
 ОПИСАНИЕ 

 

 getrpcent() ,

 getrpcbyname() 

и 
 getrpcbynumber() 

возвращают указатель на объект с описанной ниже структурой, содержащей поля
строки из базы данных номеров программы rpc; база данных находится в файле
 /etc/rpc .

 
 

 struct  rpcent {
        char    *r_name;        /* имя сервера для этой программы rpc */
        char    **r_aliases;    /* список псевдонимов */
        long    r_number;       /* номер программы rpc */
};
 

 

 

Полями структуры являются: 
 

 
 r_name 

 
Имя сервера для этой программы rpc. 
 r_aliases 

 
Оканчивающийся нулем список альтернативных имен программы rpc. 
 r_number 

 
Hомер программы rpc для этой службы. 

 
 

 

 getrpcent() 

считывает следующую строку файла, открывая его, если это необходимо. 
 

 getrpcent() 

открывает файл и переходит в его начало. Если флаг 
 stayopen 

не равен нулю, то файл сетевой базы данных не будет закрываться после каждого
вызова 
 getrpcent() 

(прямого или косвенного, с помощью одного из других вызовов ``getrpc'').
 

 endrpcent 

закрывает файл.
 

 getrpcbyname() 

и 
 getrpcbynumber() 

производят последовательный поиск имени с начала файла, пока не будет найдено
соответствующее имя программы rpc или номер программы или
пока не будет достигнут конец файла. 
   
 ФАЙЛЫ 


 
 /etc/rpc 

 

 
   
 СМ. ТАКЖЕ 

 rpc (5),

 rpcinfo (8),

 ypserv (8)

   
 ДИАГНОСТИКА 

 

При ошибке или 
 EOF 
возвращается 
 NULL. 
   
 НАЙДЕННЫЕ ОШИБКИ 

 

Вся информация содержится в статической области и должна копироваться, если
требуется ее сохранение.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 ДИАГНОСТИКА 
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