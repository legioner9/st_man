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
 
 
 
 slappasswd (8) >>  slappasswd  (8)   ( Русские man: Команды системного администрирования )   slappasswd  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

slappasswd - утилита паролей OpenLDAP
   
 СИНТАКСИС 

[ -v ]

[ -u ]

[ -g | -s   secret | -T  file ]

[ -h  hash ]

[ -c  salt-format ]

[ -n ]

[ -o  option [ = value ]]

 

   
 ОПИСАНИЕ 

 

 slappasswd 

применяется для генерации значения атрибута userPassword.
Может использоваться с
 ldapmodify (1),

для подготовки значения конфигурационной директивы
 rootpw 

файла
 slapd.conf (5)

или атрибута
 olcRootPW 

в конфигурации
 slapd-config (5).

   
 ПАРАМЕТРЫ 

 
 -v 

 
включает режим подробного вывода.
 -u 

 
Генерировать значение атрибута userPassword согласно RFC 2307 (поведение по умолчанию).
Будущие версии этой программы могут по умолчанию генерировать альтернативные синтаксисы.
Этот параметр предоставляется для совместимости с будущими версиями.
 -s  secret 

 
Задаёт секретную последовательность для хэширования. Если этот параметр, а также параметры
 -g 

и
 -T 

отсутствуют, утилита запросит у пользователя ввести секретную последовательность для хэширования.
Параметры
 -s ,

 -g 

и
 -T 

являются взаимоисключающими.
 -g 

 
Сгенерировать секретную последовательность. Если этот параметр, а также параметры
 -s 

и
 -T 

отсутствуют, утилита запросит у пользователя ввести секретную последовательность для хэширования.
Параметры
 -s ,

 -g 

и
 -T 

являются взаимоисключающими.
Если указывается этот параметр, в качестве схемы пароля используется
 {CLEARTEXT} .

Параметры
 -g 

и
 -h 

являются взаимоисключающими.
 -T  file 

 
Хэшировать содержимое указанного файла. Если этот параметр, а также параметры
 -g 

и
 -s 

отсутствуют, утилита запросит у пользователя ввести секретную последовательность для хэширования.
Параметры
 -s ,

 -g 

и
 -T 

являются взаимоисключающими.
 -h  scheme 

 
В параметре  -h  может быть указана одна из следующих схем RFC 2307:
 {CRYPT} ,

 {MD5} ,

 {SMD5} ,

 {SSHA} 

или
 {SHA} .

значение по умолчанию -
 {SSHA} .

 
Обратите внимание, что в связи с наличием символов
 { 

и
 } ,

может потребоваться защитить имена схем от разрешения
интерпретатором команд пользователя.
 
 {SHA} 

и
 {SSHA} 

используют алгоритм SHA-1 (FIPS 160-1), последний из них с "солью".
 
 {MD5} 

и
 {SMD5} 

используют алгоритм MD5 (RFC 1321), последний из них с "солью".
 
 {CRYPT} 

использует
 crypt (3).

 
 {CLEARTEXT} 

указывает на то, что новый пароль добавляется в атрибут userPassword
в виде открытого текста. Если используется отличное от
 {CLEARTEXT} 

значение, данный параметр несовместим с параметром
 -g .

 -c  crypt-salt-format 

 
Определяет формат "соли" при вызове
 crypt (3)

при генерации паролей {CRYPT}. Передаваемая с параметром строка должна быть в формате
 sprintf (3)

и может включать одно (и только одно) преобразование
 %s .

Данное преобразование будет замещено строкой случайных символов из набора
[A-Za-z0-9./].
Например,
' %.2s '

требует предоставления двух символов "соли", а
' $1$%.8s '

сообщает некоторым версиям  crypt (3) использовать алгоритм MD5 и
предоставлять 8 случайных символов "соли". Значение по умолчанию -
' %s ' , 

требующее предоставлять 31 символ "соли".
 -n 

 
Не выводить символ новой строки. Полезно при передаче пароля напрямую в команду.
 -o  option [ = value ]

 
Определяет опцию
 option 

с необязательным значением
 value .

Возможные опции/значения общего назначения:
 
 

               module-path=<pathspec> (смотрите ` modulepath ' в  slapd.conf (5))
              module-load=<filename> (смотрите ` moduleload ' в  slapd.conf (5))

Используя эти опции, Вы можете подгрузить динамически загружаемые
модули хэширования паролей.
   
 ОГРАНИЧЕНИЯ 

Практика хранения хэшированных паролей в атрибуте userPassword нарушает
стандарт спецификации схемы данных (RFC 4519) и может препятствовать совместимости.
Для хранения хэшированных паролей был определён новый тип атрибута authPassword
(RFC 3112), но его поддержка в
 slapd (8)

ещё не реализована.
 

Также следует иметь ввиду, что поведение
 crypt (3)

зависит от платформы.
   
 СООБРАЖЕНИЯ БЕЗОПАСНОСТИ 

Использование хэшированных паролей не защищает пароли при их передаче
в рамках сессии протокола LDAP. При использовании простого подсоединения LDAP
должны применяться TLS или другие методы защиты от прослушивания.
 

Значения хэшированных паролей должны быть защищены так же, как если бы это были
пароли в открытом виде.
   
 СМОТРИТЕ ТАКЖЕ 

 ldappasswd (1),

 ldapmodify (1),

 slapd (8),

 slapd.conf (5),

 slapd-config (5),

 RFC 2307 ,

 RFC 4519 ,

 RFC 3112 

 

"Руководство администратора OpenLDAP" ( http://www.OpenLDAP.org/doc/admin/,   http://pro-ldap.ru/tr/admin24/). 
   
 ПРИЗНАНИЕ ЗАСЛУГ 



 Программное обеспечение OpenLDAP 

разработано и поддерживается проектом OpenLDAP < http://www.openldap.org/ >.
 Программное обеспечение OpenLDAP 

является производным от релиза 3.3 LDAP Мичиганского Университета.

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ОГРАНИЧЕНИЯ 
 СООБРАЖЕНИЯ БЕЗОПАСНОСТИ 
 СМОТРИТЕ ТАКЖЕ 
 ПРИЗНАНИЕ ЗАСЛУГ 
 
 
 
 
 
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