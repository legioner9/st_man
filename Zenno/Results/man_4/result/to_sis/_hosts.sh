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
 
 
 
 hosts (4)   hosts  (4)   ( Solaris man: Специальные файлы /dev/* ) >>  hosts  (4)   ( Русские man: Специальные файлы /dev/* )   hosts  (5)   ( FreeBSD man: Форматы файлов )   hosts  (5)   ( Русские man: Форматы файлов )   hosts  (5)   ( Linux man: Форматы файлов ) 
 
 
 hosts(4) 
 hosts(4) 
 
 

 НАЗВАНИЕ 
 hosts  - база данных имен хостов 

 СИНТАКСИС 
 
	/etc/hosts
 

 ОПИСАНИЕ 

 Файл  hosts  связывает IP-адреса с именами хостов. В организациях, не 
использующих  службу доменных имен  (Domain Name Service - DNS), файл  hosts  
обычно создается на основе официальной базы данных хостов Internet, 
поддерживаемой в  центре управления сетевой информацией  (Network 
Information Control Center - NIC) (см.  gettable(1M)  
и  htable(1M) ). Если для 
построения файла  hosts  использована база данных NIC, могут потребоваться 
локальные изменения, чтобы добавить в нее неофициальные псевдонимы и/или 
неизвестные хосты. В организациях, использующих DNS, файл  hosts  обычно 
содержит информацию об именах и адресах только важных хостов в локальной 
сети. 

       Файлы 
 
 /var/yp/domainname/hosts.byaddr 
 Соответствующая карта NIS, содержащая имена хостов и IP-адреса. IP-адрес 
является ключом. 
 /var/yp/domainname/hosts.byname 
 То же, что и  hosts.byaddr , но ключом является имя хоста, а не IP-адрес. 
 

 ИСПОЛЬЗОВАНИЕ 

 Для каждого интерфейса хоста файл  hosts  содержит одну строку со следующей 
информацией: 

 
IP-адрес_хоста имя_хоста псевдонимы
 

 Поля разделяются произвольным количеством пробелов и/или символов 
табуляции. Символ ' # ' отмечает начало комментария; символы от начала 
комментария до конца строки не интерпретируются программами, 
просматривающими этот файл. 

 IP-адреса хостов указываются в общепринятой точечной записи, используя 
функцию  inet_addr  из библиотеки манипулирования адресами Internet, 
 inet(3N) . 
Имена и псевдонимы хостов могут содержать любые печатные символы, кроме 
разделителя полей, перевода строки или символа начала комментария. 

 Учтите, что при изменении IP-адреса или добавлении нового адреса в этот файл, 
необходимо выполнить сценарий командного интерпретатора следующим 
образом: 
 
	sh /etc/inet/listen.setup
 

 чтобы предоставить информацию мониторам портов о новом IP-адресе. 

 При использовании  сетевой информационной службы  (Network Information 
Service - NIS), она обращается к картам NIS  hosts.byaddr  или  hosts.byname  на 
сервере NIS, а не к  /etc/hosts . Однако при загрузке карты NIS не используются; 
вместо них происходит обращение к  /etc/hosts . 

 

 Вот типичная строка из файла hosts: 
 
	192.9.1.20 gaia mailhost	# John Smith
 

 ССЫЛКИ 
 
	 gethostent(3N) ,
	 gettable(1M) ,
	 htable(1M) ,
	 inet(3N) ,
	 netdir(3N) 
 

 Copyright 1994 Novell, Inc. 
Copyright 1999  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
 

 
 
 
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