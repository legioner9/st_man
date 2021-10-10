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
 
 
 
 ldapmodrdn (1)   ldapmodrdn  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   ldapmodrdn  (1)   ( Разные man: Команды и прикладные программы пользовательского уровня ) >>  ldapmodrdn  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   ldapmodrdn  (8)   ( Русские man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

ldapmodrdn - инструмент переименования записей LDAP
   
 СИНТАКСИС 

 ldapmodrdn 

[ -V [ V ]]

[ -d  debuglevel ]

[ -n ]

[ -v ]

[ -r ]

[ -s  newsup ]

[ -c ]

[ -f  file ]

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

[ dn  rdn ]

   
 ОПИСАНИЕ 

 ldapmodrdn  -

это интерфейс работы из командной строки для библиотечного вызова
 ldap_rename (3).

 

 ldapmodrdn 

открывает соединение с сервером LDAP, выполняет подсоединение и модифицирует RDN записей.
Информация о записях считывается со стандартного потока ввода, из файла  file , если задан параметр
- f ,

либо из указанной в командной строке пары  dn  и  rdn .
   
 ПАРАМЕТРЫ 

 
 -V [ V ]

 
Вывод информации о версии. При указании  -VV  выводится только информация о версии.
 -d  debuglevel 

 
Установить уровень отладки LDAP в  debuglevel . Чтобы этот параметр работал,
 ldapmodrdn 

должен быть скомпилирован с опцией LDAP_DEBUG.
 -n 

 
Демонстрируется, что будет сделано, но реального изменения записей не выполняется.
Используется для отладки совместно с параметром  -v .
 -v 

 
Запуск в режиме подробного вывода, множество диагностических сообщений посылается на стандартный вывод.
 -r 

 
Удалить старые значения RDN из записи. По умолчанию старые значения сохраняются.
 -s  newsup 

 
Указывает новую родительскую запись.
(То есть в результате целевая запись перемещается и делается дочерней по отношению к новой родительской).
Эта опция не поддерживается в LDAPv2.
 -c 

 
Режим продолжения операции. Выводятся сообщения об ошибках, но ldapmodrdn
продолжает модификации. По умолчанию после сообщения об ошибке происходит завершение работы.
 -f  file 

 
Считывать информацию о модификации записей из файла  file ,
а не со стандартного потока ввода или командной строки.
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

 
 
Указывает общие расширения с помощью  -e  и расширения modrdn с помощью  -E .
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
 

 
Расширения modrdn:
   (none)
 

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

 
Запрос расширенной операции StartTLS (Transport Layer Security). При использовании  -ZZ 
эта операция должна быть выполнена успешно.
 
   
 ФОРМАТ ВХОДНЫХ ДАННЫХ 

Если в командной строке заданы аргументы  dn  и  rdn , RDN записи, указанной по DN ( dn ),
будет заменён на значение  rdn .
 

В противном случае, в содержимом файла  file  (или стандартного потока ввода, если параметр  -f 
не задан) должна быть одна или более записей вида:
 

     Distinguished Name (DN)
    Relative Distinguished Name (RDN)
 

 

Для разделения каждой пары DN/RDN может использоваться одна или несколько пустых строк.
 
   
 ПРИМЕРЫ 

Предполагается, что существует файл
 /tmp/entrymods 

со следующим содержимым:
 

     cn=Modify Me,dc=example,dc=com
    cn=The New Me
 

 

Команда
 

     ldapmodrdn -r -f /tmp/entrymods
 

 

поменяет RDN записи "Modify Me" с "Modify Me" на "The New Me", а старое значение атрибута cn ("Modify Me") будет удалено.
 

   
 ДИАГНОСТИКА 

Если ошибок не произошло, код завершения - ноль. При наличии ошибок код завершения будет ненулевым,
а в стандартный поток ошибок будет выведено диагностическое сообщение.
   
 СМОТРИТЕ ТАКЖЕ 

 ldapadd (1),

 ldapdelete (1),

 ldapmodify (1),

 ldapsearch (1),

 ldap.conf (5),

 ldap (3),

 ldap_rename (3).

   
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