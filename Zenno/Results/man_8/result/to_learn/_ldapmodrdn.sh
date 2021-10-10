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
 
 
 
 ldapmodrdn (8)   ldapmodrdn  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   ldapmodrdn  (1)   ( Разные man: Команды и прикладные программы пользовательского уровня )   ldapmodrdn  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) >>  ldapmodrdn  (8)   ( Русские man: Команды системного администрирования ) 
{{header}}
{{translator-igorchubin}}
Оригинал: [ http://linux.die.net/man/1/ldapmodrdn   ldapmodrdn (1)]
 
Эта страница является переводом официальной man-страницы программы ldapmodrdn, предназначенной для переименования 
записей в LDAP-каталоге. 
   
 Имя 

 

ldapmodrdn - инструмент для переименования записей LDAP
 
   
 Синтаксис 

 

ldapmodrdn [-r] [-n] [-v] [-c] [-M[M]] [-d debuglevel] [-D binddn] [-W] [-w passwd] [-y passwdfile] [-H ldapuri] 
[-h ldaphost] [-p ldapport] [-P 2|3] [-O security-properties] [-I] [-Q] [-U authcid] [-R realm] [-x] [-X authzid] 
[-Y mech] [-Z[Z]] [-f file] [dn rdn] 
   
 Описание 

 

ldapmodrdn это интерфейс к библиотечному вызову  ldap_modrdn2 (3), доступный из командной строки.
 
ldapmodrdn соединяется с LDAP-сервером, привязывается к нему и модифицирует RDN записи. Информация считывается со 
стандарнтого потока ввода, из файла (если задан ключ .RS
 -f
 


)
или из командной строки (dn и rdn).
 
   
 Опции 

 

 
 
 -r 

 
 

  Удалить старые RDN значения записи. По умолчанию старые значения остаются.
 -n 

 
 

  Показать что должно быть сделано, но не выполнять поиск на самом деле. Может быть полезно в сочетании с опцией .RS
 -v
 


  для отладки.
 -v 

 
 

  Запустить в разговорчивом (verbose) режиме; диагностические сообщения должны выводиться на стандартный поток вывода. 
 -c 

 
 

  Режим непрерывного исполнения. Ошибки выводятся, но  ldapmodrdn  продолжает модификацию. По умолчанию, ldapmodrdn 
завершается при первой ошибке. .TP
 -M[M] 

 

  Включить контроль DSA IT. -MM делает контроль критичным.
 -d debuglevel 

 
 

  Установить уровень отладки LDAP равным  debuglevel . Программа ldapsearch должна быть откомпилирована с опцией 
 
 LDAP_DEBUG
 

 

, иначе эта опция не будет иметь эффекта.
 -f file 

 
 

   Считать информацию, необходимую для модификации, из файла, а не из стандартного потока вывода или командной строки. .TP
 -x 

 

     Использовать простую аутентификацию вместо SASL. 
 -D  binddn 

 
 

     Привязаться к каталогу от имени  binddn . 
 -W 

 
 

  Спросить пароль в командной строке в ходе простой аутентификации.
 -w  passwd 

 
 

  Использовать  passwd  как пароль в ходе простой аутентификации.
 -y  passwdfile 

 
 

  Взять всю необходимую для простой аутентификации информацию из файла  passwdfile .
 -H  ldapuri 

 
 

     Указать URI LDAP-сервера; допускаются только поля протокол/хост/порт; в качестве аргумента ожидается список URI, 
разделённых пробелами или запятыми. .TP
 -h  ldaphost 

 

     Указать хост, на котором работает LDAP-сервер. Не рекомендуется использовать. Используйте вместо этого .RS
 -H
 


  
 -p  ldapport 

 
 

     Указать TCP-порт, на котором работает LDAP-сервер. Не рекомендуется использовать. Используйте вместо этого .RS
 -H
 


  
 -P 2|3 

 
 

     Указать, какую версию протокола LDAP использовать. 
 -O security-properties 

 
 

     Задать параметры безопасности SASL. 
 -I 

 
 

     Включить интерактивный режим SASL. Всегда спрашивать. По умолчанию: спрашивать только при необходимости. .TP
 -Q 

 

     Включить молчаливый (quiet) режим SASL. Никогда не спрашивать. 
 -U  authcid 

 
 

  Задать аутентификационный ID для SASL. Форма ID зависит от того, какой механизм аутентификации в действительности используется. 
 -R  realm 

 
 

  Задать realm аутентификационного ID для SASL. Форма realm зависит от того, какой механизм аутентификации в действительности 
используется. .TP
 -X  authzid 

 

  Задать запрашиваемые авторизационный ID для SASL. authzid может быть в одной из форм: dn:<distinguished name> или u:<username> 
 -Y  mech 

 
 

  Указать какой SASL-механизм использовать для аутентификации. Если не указан, программа выберет лучший механизм из 
тех, что знает сервер. .TP
 -Z[Z] 

 

  Расширенный режим StartTLS (Transport Layer Security). Если задать -ZZ, тогда операция обязательно должна быть успешной. 
 
 
   
 Входной формат 

 

Если заданы аргументы командной строки (dn и rdn), RDN записи с DN равным 
 
 dn
 

 

  изменится и станет равным 
 
 rdn
 

 

 
В противном случае, содержимое файла (или стандартного потока ввода, если 
 
 -f
 

 

  не используется) должно включать
в себя одну или больше записей.
 
 

   *  Distinguished Name (DN)
 

   *  Relative Distinguished Name (RDN)
 
Одна или несколько пустых строк разделяют пары DN/RDN между собой.
 
   
 Примеры 

 

 
Если предположить, то что файл 
 
 /tmp/entrymods
 

 

  существует и имеет следующее содержимое:
 
 
     cn=Modify Me,dc=example,dc=com
    cn=The New Me

 

 

команда:
 
 
     ldapmodrdn -r -f /tmp/entrymods

 

 

изменит RDN записи "Modify Me" с "Modify Me" на "The New Me", а старый cn, "Modify Me" будет удалён. 
   
 Диагностика 

 

Код завершения равен 0, если ошибок не было. Если ошибки были, код завершения отличен от 0 и на стандартный поток ошибок отправляются 
диагностические сообщения. 
   
 См.также 

 

 ldapadd (1),  ldapdelete (1),  ldapmodify (1),  ldapsearch (1),  ldap.conf (5),  ldap (3),  ldap_modrdn2 (3)
 
   
 Автор 

 

The OpenLDAP Project < http://www.openldap.org/ >
 
   
 Благодарности 

 

OpenLDAP разрабатывается и спопровождается в рамках проекта The OpenLDAP Project ( http://www.openldap.org/).  OpenLDAP 
базируется на University of Michigan LDAP 3.3 Release. 
   
  Перевод  

 

 
 

   *  Игорь Чубин <igor ar chub.in>
 

 
   Index 
 
 Имя 
 Синтаксис 
 Описание 
 Опции 
 Входной формат 
 Примеры 
 Диагностика 
 См.также 
 Автор 
 Благодарности 
  Перевод  
 
 
 
 
 
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