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
 
 
 
 ldif (5) >>  ldif  (5)   ( Русские man: Форматы файлов )   ldif  (5)   ( Linux man: Форматы файлов ) 


   
 НАЗВАНИЕ 

ldif - Формат обмена данными LDAP.
   
 ОПИСАНИЕ 

Формат обмена данными LDAP (LDAP Data Interchange Format, LDIF) используется для представления
сведений о записях LDAP и сведений об изменениях каталога LDAP в текстовой форме.
С LDIF работают инструменты LDAP:
 ldapadd (1)

принимает на вход, а
 ldapsearch (1) 

выводит LDIF-сведения о записях, 
 ldapmodify (1)

принимает на вход LDIF-сведения об изменениях.
 

В этой man-странице приведено описание основных моментов LDIF.
Формальная спецификация LDIF дана в RFC 2849.
   
 СВЕДЕНИЯ О ЗАПИСЯХ 

 

LDIF-сведения о записях используются для представления записей каталога.
Общая форма сведений о записи:
 

         dn: <distinguished name>
        <attrdesc>: <attrvalue>
        <attrdesc>: <attrvalue>
        <attrdesc>:: <base64-encoded-value>
        <attrdesc>:< <URL>
        ...
 

 

Значение атрибута может быть указано как текст UTF-8, либо как данные, закодированные в base64,
либо для указания места расположения значения атрибута может быть предоставлен URI.
 

Строка может быть продолжена путём помещения в начало следующей строки
одного символа пробела или табуляции, например:
 

         dn: cn=Barbara J Jensen,dc=exam
         ple,dc=com
 

 

Строки, начинающиеся с символа решётки ('#'), игнорируются.
 

Несколько значений одного атрибута указываются в отдельных строках, например:
 

         cn: Barbara J Jensen
        cn: Babs Jensen
 

 

Если значение атрибута содержит непечатный символ, или начинается с пробела или двоеточия ':',
за полем <attrtype> следуют двойное двоеточие и значение, закодированное в нотации base64.
Например, значение " begins with a space" будет закодировано так:
 

         cn:: IGJlZ2lucyB3aXRoIGEgc3BhY2U=
 

 

Если значение атрибута располагается в файле, за полем <attrtype> следуют знаки ':<'
и URI со схемой file:. Например, значение, содержащееся в файле /tmp/value, будет указано так:
 

         cn:<  file:///tmp/value 
 

Могут также поддерживаться другие схемы URI (ftp, http).
 

Несколько записей в одном файле LDIF отделяются друг от друга пустыми строками.
   
 ПРИМЕР СВЕДЕНИЙ О ЗАПИСИ 

Вот пример LDIF-файла, содержащего три записи:
 

         dn: cn=Barbara J Jensen,dc=example,dc=com
        cn: Barbara J Jensen
        cn: Babs Jensen
        objectclass: person
        description:<  file:///tmp/babs 
        sn: Jensen

        dn: cn=Bjorn J Jensen,dc=example,dc=com
        cn: Bjorn J Jensen
        cn: Bjorn Jensen
        objectclass: person
        sn: Jensen

        dn: cn=Jennifer J Jensen,dc=example,dc=com
        cn: Jennifer J Jensen
        cn: Jennifer Jensen
        objectclass: person
        sn: Jensen
        jpegPhoto:: /9j/4AAQSkZJRgABAAAAAQABAAD/2wBDABALD
         A4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQ
         ERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P/2wBDARESEhgVG
        ...
 

 

Обратите внимание, что значение атрибута description записи Barbara Jensen
считывается из  file:///tmp/babs,  а значение атрибута jpegPhoto записи Jennifer Jensen
закодировано с использованием base64.
   
 СВЕДЕНИЯ ОБ ИЗМЕНЕНИЯХ 

LDIF-сведения об изменениях используются для представления запросов на изменение
каталога. Каждое сведение об изменении начинается со строки, указывающей
уникальное имя изменяемой записи:
 

         dn: <distinguishedname>
 

 

         changetype: <[modify|add|delete|modrdn]>
 

 

Наконец, даётся собственно информация об изменении, формат которой зависит от того,
какого рода изменение указано выше. Для  changetype   modify 
форматом будет один или несколько из приведённых далее фрагментов:
 

         add: <attributetype>
        <attrdesc>: <value1>
        <attrdesc>: <value2>
        ...
        -
 

 

Либо, для модификации replace:
 

         replace: <attributetype>
        <attrdesc>: <value1>
        <attrdesc>: <value2>
        ...
        -
 

 

Если строки со значениями атрибута для замещения не заданы, будут удалены все значения
атрибута  attributetype  (при его наличии в записи).
 

Либо, для модификации delete:
 

         delete: <attributetype>
        <attrdesc>: <value1>
        <attrdesc>: <value2>
        ...
        -
 

 

Если строки со значениями атрибута для удаления не заданы, будут удалены все значения
атрибута  attributetype .
 

Фомат для  changetype   add :
 

         <attrdesc1>: <value1>
        <attrdesc1>: <value2>
        ...
        <attrdescN>: <value1>
        <attrdescN>: <value2>
 

 

Формат для  changetype   modrdn  или  moddn :
 

         newrdn: <newrdn>
        deleteoldrdn: 0 | 1
        newsuperior: <DN>
 

 

Здесь значение 1 в строке deleteoldrdn указывает, что значения атрибутов, формировавшие
прежний rdn, должны быть удалены из записи, а значение 0 - что эти значения должны быть
оставлены в записи в качестве неотличительных значений атрибутов. Строка newsuperior
является опциональной. Если она задана, в ней указывается новая вышестоящая запись,
к которой будет перемещена изменяемая запись.
 

Для  changetype   delete  никакой дополнительной информации указывать не требуется.
 

Имейте ввиду, что значения атрибутов могут быть представлены в закодированном в base64 виде,
либо взяты из файлов, так же, как и в сведениях о записях. Строки в сведениях об изменениях
могут быть разбиты на несколько по тем же правилам, что и в сведениях о записях.
   
 ПРИМЕР СВЕДЕНИЙ ОБ ИЗМЕНЕНИЯХ 

В следующем LDIF-файле присутствуют сведения об изменениях каждого типа:
 

         dn: cn=Babs Jensen,dc=example,dc=com
        changetype: add
        objectclass: person
        objectclass: extensibleObject
        cn: babs
        cn: babs jensen
        sn: jensen

        dn: cn=Babs Jensen,dc=example,dc=com
        changetype: modify
        add: givenName
        givenName: Barbara
        givenName: babs
        -
        replace: description
        description: the fabulous babs
        -
        delete: sn
        sn: jensen
        -

        dn: cn=Babs Jensen,dc=example,dc=com
        changetype: modrdn
        newrdn: cn=Barbara J Jensen
        deleteoldrdn: 0
        newsuperior: ou=People,dc=example,dc=com

        dn: cn=Barbara J Jensen,ou=People,dc=example,dc=com
        changetype: delete
 

 
   
 ВЫРАЖЕНИЕ INCLUDE 

Разборщик LDIF был расширен: добавлена поддержка выражения
 include 

для ссылки на другие файлы LDIF. Выражение
 include 

должно отделяться от других сведений пустой строкой. Файл, на который делается ссылка,
указывается с использованием URI со схемой file:. Всё содержимое данного файла
встраивается в оригинальный файл, как если бы оно было его составной частью.
Также могут поддерживаться URI с другими схемами. Пример:
 

         dn: dc=example,dc=com
        objectclass: domain
        dc: example

        include:  file:///tmp/example.com.ldif 

        dn: dc=example,dc=org
        objectclass: domain
        dc: example
 

Данный функционал не является составной частью спецификации LDIF, данной в RFC 2849,
однако ожидается, что он появится в будущих версиях этой спецификации.
Он поддерживается командами
 ldapadd (1),

 ldapmodify (1)

и
 slapadd (8).

 
   
 СМОТРИТЕ ТАКЖЕ 

 ldap (3),

 ldapsearch (1),

 ldapadd (1),

 ldapmodify (1),

 slapadd (8),

 slapcat (8),

 slapd-ldif (5).

 

"Формат обмена данными LDAP", Good, G., RFC 2849.
   
 ПРИЗНАНИЕ ЗАСЛУГ 



 Программное обеспечение OpenLDAP 

разработано и поддерживается проектом OpenLDAP < http://www.openldap.org/ >.
 Программное обеспечение OpenLDAP 

является производным от релиза 3.3 LDAP Мичиганского Университета.

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 СВЕДЕНИЯ О ЗАПИСЯХ 
 ПРИМЕР СВЕДЕНИЙ О ЗАПИСИ 
 СВЕДЕНИЯ ОБ ИЗМЕНЕНИЯХ 
 ПРИМЕР СВЕДЕНИЙ ОБ ИЗМЕНЕНИЯХ 
 ВЫРАЖЕНИЕ INCLUDE 
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