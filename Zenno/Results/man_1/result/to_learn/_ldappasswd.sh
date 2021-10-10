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
 
 
 
 ldappasswd (1)   ldappasswd  (1)   ( Разные man: Команды и прикладные программы пользовательского уровня ) >>  ldappasswd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 


   
 НАЗВАНИЕ 

ldappasswd - изменение пароля записи LDAP
   
 СИНТАКСИС 

 ldappasswd 

[ -V [ V ]]

[ -d  debuglevel ]

[ -n ]

[ -v ]

[ -A ]

[ -a  oldPasswd ]

[ -t  oldpasswdfile ]

[ -S ]

[ -s  newPasswd ]

[ -T  newpasswdfile ]

[ -x ]

[ -D  binddn ]

[ -W ]

[ -w  passwd ]

[ -y  passwdfile ]

[ -H  ldapuri ]

[ -h  ldaphost ]

[ -p  ldapport ]

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

[ user ]

   
 ОПИСАНИЕ 

 ldappasswd  -

инструмент установки пароля пользователю LDAP.
 ldappasswd 

использует расширенную операцию LDAPv3 Password Modify (RFC 3062).
 

 ldappasswd 

устанавливает пароль для записи, ассоциированной с пользователем, выполнившим подсоединение
(либо с дополнительно указанным пользователем [ user ]).

Если новый пароль не указан в командной строке и пользователь не ввёл его при запросе ввода,
серверу будет предложено сгенерировать пароль для пользователя.
 

 ldappasswd 

не предназначен для замены
 passwd (1),

не следует устанавливать его для использования в этом качестве.
   
 ПАРАМЕТРЫ 

 
 -V [ V ]

 
Вывод информации о версии. При указании  -VV  выводится только информация о версии.
 -d  debuglevel 

 
Установить уровень отладки LDAP в  debuglevel . Чтобы этот параметр работал,
 ldappasswd 

должен быть скомпилирован с опцией LDAP_DEBUG.
 -n 

 
Не устанавливать пароль. (Может быть полезен при использовании совместно с  -v  или  -d ).
 -v 

 
Делает вывод более подробным. Параметр может быть указан несколько раз.
 -A 

 
Запрашивать ввод старого пароля.
Используется для того, чтобы не указывать пароль в командной строке.
 -a  oldPasswd 

 
Задать в качестве значения старого пароля  oldPasswd .
 -t  oldPasswdFile 

 
Задать в качестве значения старого пароля содержимое файла  oldPasswdFile .
 -S 

 
Запрашивать ввод нового пароля.
Используется для того, чтобы не указывать пароль в командной строке.
 -s  newPasswd 

 
Задать в качестве значения нового пароля  newPasswd .
 -T  newPasswdFile 

 
Задать в качестве значения нового пароля содержимое файла  newPasswdFile .
 -x 

 
Использовать простую аутентификацию вместо SASL.
 -D  binddn 

 
Использовать указанное в  binddn  уникальное имя Distinguished Name
при подсоединении к каталогу LDAP.
При SASL-подсоединениях сервер будет игнорировать это значение.
 -W 

 
Запрашивать ввод пароля для подсоединения.
Используется для того, чтобы не указывать пароль в командной строке.
 -w  passwd 

 
Использовать указанное значение  passwd  в качестве пароля для подсоединения.
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
 -e  [ ! ] ext [ = extparam ]

 
 -E  [ ! ] ext [ = extparam ]

 
 
Указывает общие расширения с помощью  -e  и расширения изменения пароля с помощью  -E .
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
 

 
Расширения изменения пароля:
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
 u: <username> .

 -Y  mech 

 
Задаёт механизм SASL, который будет использоваться для аутентификации.
Если параметр не указан, программа выберет лучший из известных серверу механизмов.
 -Z [ Z ]

 
Запрос расширенной операции StartTLS (Transport Layer Security). При использовании  -ZZ 
эта операция должна быть выполнена успешно.
 
   
 СМОТРИТЕ ТАКЖЕ 

 ldap_sasl_bind (3),

 ldap_extended_operation (3),

 ldap_start_tls_s (3).

   
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