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
 
 
 
 rpc (5)   rpc  (3)   ( Solaris man: Библиотечные вызовы )   rpc  (3)   ( FreeBSD man: Библиотечные вызовы )   rpc  (3)   ( Русские man: Библиотечные вызовы )   rpc  (3)   ( Linux man: Библиотечные вызовы )   rpc  (4)   ( Solaris man: Специальные файлы /dev/* )   rpc  (5)   ( FreeBSD man: Форматы файлов ) >>  rpc  (5)   ( Русские man: Форматы файлов )   rpc  (5)   ( Linux man: Форматы файлов ) Ключ  rpc  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

rpc - база данных номеров программ rpc 
   
 СИНТАКСИС 

 /etc/rpc 

   
 ОПИСАНИЕ 

Файл
 rpc 

содержит имена rpc-программ, которые можно
использовать вместо их номеров.
В каждой строке содержится следующая информация:
 
 
название сервера rpc-программы
 

 
номер rpc-программы
 

 
алиасы (псевдонимы)
 
 

Элементы могут отделяться друг от друга любым количеством пробелов
и/или символов табуляции.
Символ ``#'' означает начало комментария; все символы, находящиеся
правее него в строке, игнорируются.
 

Ниже приведен пример файла  /etc/rpc  из дистрибутива
исходных текстов Sun RPC:
 
#
# rpc 88/08/01 4.0 RPCSRC; from 1.12   88/02/07 SMI
#
 portmapper          100000    portmap sunrpc
rstatd              100001    rstat rstat_svc rup perfmeter
rusersd             100002    rusers
nfs                 100003    nfsprog
ypserv              100004    ypprog
mountd              100005    mount showmount
ypbind              100007
walld               100008    rwall shutdown
yppasswdd           100009    yppasswd
etherstatd          100010    etherstat
rquotad             100011    rquotaprog quota rquota
sprayd              100012    spray
3270_mapper         100013
rje_mapper          100014
selection_svc       100015    selnsvc
database_svc        100016
rexd                100017    rex
alis                100018
sched               100019
llockmgr            100020
nlockmgr            100021
x25.inr             100022
statmon             100023
status              100024
bootparam           100026
ypupdated           100028    ypupdate
keyserv             100029    keyserver
tfsd                100037 
nsed                100038
nsemntd             100039
 


   
 ФАЙЛЫ 

 
 /etc/rpc 

 
база данных номеров программ rpc
 
   
 СМ. ТАКЖЕ 

 getrpcent (3)
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ФАЙЛЫ 
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