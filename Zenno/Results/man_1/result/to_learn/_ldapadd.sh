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
 
 
 
 ldapadd (1)   ldapadd  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   ldapadd  (1)   ( Разные man: Команды и прикладные программы пользовательского уровня ) >>  ldapadd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 


   
 НАЗВАНИЕ 

ldapmodify, ldapadd - инструмент модификации и добавления записей LDAP
   
 СИНТАКСИС 

 ldapmodify 

[ -V [ V ]]

[ -d  debuglevel ]

[ -n ]

[ -v ]

[ -a ]

[ -c ]

[ -f  file ]

[ -S  file ]

[ -M [ M ]]

[ -x ]

[ -D  binddn ]

[ -W ]

[ -w  passwd ]

[ -y  passwdfile ]

[ -H  ldapuri ]

[ -h  ldaphost ]

[ -p  ldapport ]

[ -P  { 2 | 3 }]

[ -e  [ ! ] ext [ = extparam ]]

[ -E  [ ! ] ext [ = extparam ]]

[ -o  opt [= optparam ]]

[ -O  security-properties ]

[ -I ]

[ -Q ]

[ -N ]

[ -U  authcid ]

[ -R  realm ]

[ -X  authzid ]

[ -Y  mech ]

[ -Z [ Z ]]

 

 ldapadd 

[ -V [ V ]]

[ -d  debuglevel ]

[ -n ]

[ -v ]

[ -c ]

[ -f  file ]

[ -S  file ]

[ -M [ M ]]

[ -x ]

[ -D  binddn ]

[ -W ]

[ -w  passwd ]

[ -y  passwdfile ]

[ -H  ldapuri ]

[ -h  ldaphost ]

[ -p  ldapport ]

[ -P  { 2 | 3 }]

[ -e  [ ! ] ext [ = extparam ]]

[ -E  [ ! ] ext [ = extparam ]]

[ -o  opt [= optparam ]]

[ -O  security-properties ]

[ -I ]

[ -Q ]

[ -N ]

[ -U  authcid ]

[ -R  realm ]

[ -X  authzid ]

[ -Y  mech ]

[ -Z [ Z ]]

   
 ОПИСАНИЕ 

 ldapmodify  -

это интерфейс работы из командной строки для библиотечных вызовов
 ldap_add_ext (3),

 ldap_modify_ext (3),

 ldap_delete_ext (3)

и
 ldap_rename (3).

 ldapadd 

реализован как жёсткая ссылка на инструмент ldapmodify. При вызове по имени
 ldapadd 

параметр  -a  (добавление новых записей) включается автоматически.
 

 ldapmodify 

открывает соединение с сервером LDAP, выполняет подсоединение и модифицирует или добавляет записи.
Информация о записях считывается со стандартного потока ввода либо, если задан параметр  -f , из файла  file .
   
 ПАРАМЕТРЫ 

 
 -V [ V ]

 
Вывод информации о версии. При указании  -VV  выводится только информация о версии.
 -d  debuglevel 

 
Установить уровень отладки LDAP в  debuglevel . Чтобы этот параметр работал,
 ldapmodify 

должен быть скомпилирован с опцией LDAP_DEBUG.
 -n 

 
Демонстрируется, что будет сделано, но реальной модификации записей не выполняется.
Используется для отладки совместно с параметром  -v .
 -v 

 
Запуск в режиме подробного вывода, множество диагностических сообщений посылается на стандартный вывод.
 -a 

 
Добавлять новые записи. Поведение по умолчанию для
 ldapmodify  -

модифицировать существующие записи. При вызове по имени
 ldapadd ,

этот параметр всегда установлен.
 -c 

 
Режим продолжения операции. Выводятся сообщения об ошибках, но
 ldapmodify 

продолжает модификации. По умолчанию после сообщения об ошибке происходит завершение работы.
 -f  file 

 
Считывать информацию о модификации записей из файла  file  вместо стандартного потока ввода.
 -S  file 

 
Добавить или изменить записи, которые были пропущены из-за ошибок и записаны в файл  file ,
куда в качестве комментария добавлено выданное сервером сообщение об ошибке.
Наиболее полезно в сочетании с параметром  -c .
 -M [ M ]

 
Включить элемент управления Manage DSA IT.
 -MM 

делает этот элемент управления критичным.
 -x 

 
Использовать простую аутентификацию вместо SASL.
 -D  binddn 

 
Использовать указанное в  binddn  уникальное имя Distinguished Name
при подсоединении к каталогу LDAP.
При SASL-подсоединениях сервер будет игнорировать это значение.
 -W 

 
Запрашивать ввод пароля для простой аутентификации.
Используется для того, чтобы не указывать пароль в командной строке.
 -w  passwd 

 
Использовать указанное значение  passwd  в качестве пароля для простой аутентификации.
 -y  passwdfile 

 
Использовать полное содержимое файла  passwdfile  в качестве пароля для простой аутентификации.
 -H  ldapuri 

 
Указывает URI (возможно, несколько), ссылающийся на LDAP-сервер (серверы);
в URI допускаются только поля протокол/хост/порт;
в качестве значения параметр принимает список URI, разделённый пробелами или запятыми.
 -h  ldaphost 

 
Указывает альтернативный хост, на котором работает LDAP-сервер.
Устаревший параметр; используйте вместо него  -H .
 -p  ldapport 

 
Указывает альтернативный порт TCP, на котором ожидает соединений LDAP-сервер.
Устаревший параметр; используйте вместо него  -H .
 -P  { 2 | 3 }

 
Указывает, какую версию протокола LDAP использовать.
 -e  [ ! ] ext [ = extparam ]

 
 -E  [ ! ] ext [ = extparam ]

 
 
Указывает общие расширения с помощью  -e  и расширения модификации с помощью  -E .
Знак ' ! ' обозначает критичность расширения.
 
Общие расширения:
   [!]assert=<filter>    (фильтр RFC 4515)
  [!]authzid=<authzid>  ("dn:<dn>" или "u:<user>")
  [!]bauthzid           (элемент управления authzid RFC 3829)
  [!]chaining[=<resolve>[/<cont>]]
  [!]manageDSAit
  [!]noop
  ppolicy
  [!]postread[=<attrs>] (разделённый запятыми список атрибутов)
  [!]preread[=<attrs>]  (разделённый запятыми список атрибутов)
  [!]relax
  sessiontracking
  abandon,cancel,ignore (сигнал SIGINT посылает abandon/cancel,
  либо в ответ на него посылается ignore; если расширение помечено
  как критичное, сигнал SIGINT не принимается;
  ненастоящие элементы управления)
 

 
Расширения модификации:
   [!]txn[=abort|commit]
 

 -o  opt [= optparam ]

 
 
Указывает опции общего назначения.
 
Возможные опции:
   nettimeout=<timeout>  (в секундах, либо "none" или "max")
  ldif-wrap=<width>     (в символах, либо "no" для предотвращения разбиения строк)
 

 -O  security-properties 

 
Указывает параметры безопасности SASL.
 -I 

 
Включает интерактивный режим SASL. Запросы выводятся всегда. По умолчанию запросы выводятся только по мере необходимости.
 -Q 

 
Включает тихий режим SASL. Запросы не выводятся никогда.
 -N 

 
Указывает не использовать обратное разрешение DNS для получения канонического имени хоста SASL.
 -U  authcid 

 
Задаёт аутентификационный идентификатор для подсоединений SASL.
Форма идентификатора зависит от того, какой механизм аутентификации в действительности используется.
 -R  realm 

 
Задаёт realm аутентификационного идентификатора для подсоединений SASL.
Форма realm зависит от того, какой механизм аутентификации в действительности используется.
 -X  authzid 

 
Задаёт запрашиваемый авторизационный идентификатор для подсоединений SASL. Значение
 authzid 

должно быть в одном из следующих форматов:
 dn: <distinguished name> 

или
 u: <username> 

 -Y  mech 

 
Задаёт механизм SASL, который будет использоваться для аутентификации.
Если параметр не указан, программа выберет лучший из известных серверу механизмов.
 -Z [ Z ]

 
Запрос расширенной операции StartTLS (Transport Layer Security). При использовании
 -ZZ 

эта операция должна быть выполнена успешно.
 
   
 ФОРМАТ ВХОДНЫХ ДАННЫХ 

Содержимое файла  file  (или принимаемое со стандартного потока ввода,
если в командной строке не задан параметр  -f ), должно соответствовать формату, определённому в
 ldif (5)

(LDIF согласно RFC 2849).
   
 ПРИМЕРЫ 

Предполагается, что существует файл
 /tmp/entrymods 

со следующим содержимым:
 

     dn: cn=Modify Me,dc=example,dc=com
    changetype: modify
    replace: mail
    mail:  modme@example.com 
    -
    add: title
    title: Grand Poobah
    -
    add: jpegPhoto
    jpegPhoto:<  file:///tmp/modme.jpeg 
    -
    delete: description
    -
 

 

Команда
 

     ldapmodify -f /tmp/entrymods
 

 

заменит содержимое атрибута
 mail 

записи "Modify Me" на значение " modme@example.com ", добавит в эту запись атрибут
 title 

со значением "Grand Poobah" и содержимое файла "/tmp/modme.jpeg" в качестве значения атрибута
 jpegPhoto ,

а также полностью удалит атрибут
 description .

 

Предполагается, что существует файл
 /tmp/newentry 

со следующим содержимым:
 

     dn: cn=Barbara Jensen,dc=example,dc=com
    objectClass: person
    cn: Barbara Jensen
    cn: Babs Jensen
    sn: Jensen
    title: the world's most famous mythical manager
    mail:  bjensen@example.com 
    uid: bjensen
 

 

Команда
 

     ldapadd -f /tmp/newentry
 

 

добавит запись Barbara Jensen со значениями из файла
 /tmp/newentry. 

 

Предполагается, что существует файл
 /tmp/entrymods 

со следующим содержимым:
 

     dn: cn=Barbara Jensen,dc=example,dc=com
    changetype: delete
 

 

Команда
 

     ldapmodify -f /tmp/entrymods
 

 

удалит запись Barbara Jensen.
   
 ДИАГНОСТИКА 

Если ошибок не произошло, код завершения - ноль. При наличии ошибок код завершения будет ненулевым,
а в стандартный поток ошибок будет выведено диагностическое сообщение.
   
 СМОТРИТЕ ТАКЖЕ 

 ldapadd (1),

 ldapdelete (1),

 ldapmodrdn (1),

 ldapsearch (1),

 ldap.conf (5),

 ldap (3),

 ldap_add_ext (3),

 ldap_delete_ext (3),

 ldap_modify_ext (3),

 ldap_modrdn_ext (3),

 ldif (5).

   
 АВТОРЫ 

OpenLDAP Project < http://www.openldap.org/ >
   
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
 ФОРМАТ ВХОДНЫХ ДАННЫХ 
 ПРИМЕРЫ 
 ДИАГНОСТИКА 
 СМОТРИТЕ ТАКЖЕ 
 АВТОРЫ 
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