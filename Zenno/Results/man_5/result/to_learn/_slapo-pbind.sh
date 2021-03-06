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
 
 
 
 slapo-pbind (5) >>  slapo-pbind  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapo-pbind - наложение прокси-подсоединений для slapd
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Наложение
 slapd (8)

 pbind 

перенаправляет запросы Simple Bind, адресованные к локальной базе данных, на удалённый LDAP-сервер.
Соединение с удалённым сервером управляется с помощью экземпляра механизма манипуляции данными ldap.
 
 

Наложение
 pbind 

использует подмножество директив конфигурации механизма манипуляции данными  ldap .
Они подробно описаны в man-странице
 slapd-ldap (5).

 
Примечание: данное наложение встроено в механизм манипуляции данными  ldap ;
оно не является отдельным модулем.
 
 
 overlay pbind 

 
Эта директива добавляет наложение прокси-подсоединений к текущей базе данных механизма манипуляции
данными. Наложение прокси-подсоединений может быть использовано с любым механизмом манипуляции
данными, но главным образом оно предназначено для использования с механизмами, управляющими
локальными хранилищами.
 
 uri <ldapurl> 

 
Определяет URI LDAP-сервера, который должен использоваться.
 
 tls <параметры TLS> 

 
Определяет использование TLS.
 
 network-timeout <время> 

 
Задаёт сетевой таймаут.
 
 quarantine <параметры карантина> 

 
Включает карантин для URI, вернувших ответ
 LDAP_UNAVAILABLE .

 
 
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5),

 slapd-ldap (5),

 slapd (8).

   
 АВТОР 

Howard Chu
 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 АВТОР 
 
 
 
 
 
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