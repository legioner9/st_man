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
 
 
 
 slapo-unique (5) >>  slapo-unique  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapo-unique - наложение обеспечения уникальности атрибутов для slapd
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Наложение обеспечения уникальности атрибутов может быть использовано с базами данных таких механизмов
манипуляции данными, как
 slapd-bdb (5)

для соблюдения уникальности значений некоторых или всех атрибутов в заданном диапазоне записей. По
умолчанию этот диапазон соответствует всем объектам поддерева базы данных, для которой настраивается
наложение обеспечения уникальности.
 

Для обеспечения уникальности при выполнении операций
 add ,

 modify 

или
 modrdn 

осуществляется поиск по поддереву с целью проверки того, что значения всех атрибутов, присутствующих
в этих операциях, являются уникальными в данном диапазоне. Например, если для атрибута
 uid 

была настроена проверка соблюдения уникальности, то по заданному поддереву будет осуществлён поиск
других записей, содержащих то же самое значение в атрибуте
 uid .

Если хотя бы одна запись будет найдена, запрос будет отклонен.
 

Этот поиск выполняется от имени rootdn целевой базы данных во избежание ограничений на просмотр всей
требуемой информации со стороны ACL. Соответственно, в базе данных должно быть настроено rootdn.
   
 КОНФИГУРАЦИЯ 

Следующие директивы конфигурации
 slapd.conf 

применяются к наложению обеспечения уникальности атрибутов. Они должны указываться после директивы
 overlay .

 
 unique_uri <[strict ][ignore ]URI[URI...]...> 

 
Задаёт базу поиска, атрибуты, диапазон и фильтр поиска для проверки уникальности. Внутри одной области
ограничений могут быть заданы несколько URI для комплексного отбора объектов. Несколько директив
 unique_uri 

или атрибутов
 olcUniqueURI 

создадут независимые области ограничений, каждую со своим независимым списком URI и настройками ignore/strict.
 
Ключевые слова
 strict 

и
 ignore 

должны быть заключены в кавычки (") вместе с идущим следом URI.
 
Синтаксис LDAP URI является подмножеством синтаксиса, определённого в
 RFC 4516 ,

и представляет собой следующую форму:
 
 ldap:///[base  dn]?[attributes...]?scope[?filter]
 
По умолчанию
 base dn 

соответствует контексту именования той базы данных, к которой применяется наложение. Определяемые явно
base dn должны находиться внутри поддерева этого контекста именования.
 
Если не указан компонент
 attributes ,

URI применяется ко всем неоперационным атрибутам.
 
Компонент
 scope 

по существу является обязательным, поскольку диапазон поиска по умолчанию для LDAP URI -
 base ,

что не подходит для определения уникальности, так как в группе, состоящей из одного объекта,
уникальность соблюдается всегда. Подходящие варианты поискового диапазона:
 sub 

(для поиска по поддереву) и
 one 

для поиска на один уровень ниже относительно базы поиска.
 
Задание компонента
 filter 

приведёт к тому, что область ограничений будет накладывать ограничения уникальности только на те
объекты, которые соответствуют этому фильтру. Например, URI
 ldap:///?cn?sub?(sn=e*) 

требует соблюдения уникальности значений атрибута
 cn 

для всех объектов поддерева базы данных, у которых значения атрибута
 sn 

начинаются на букву e.
 
Существует возможность обеспечить уникальность всех неоперационных атрибутов, за исключением тех,
которые перечислены в URI, перед которым присутствует ключевое слово
 ignore .

Если такая настройка не задана, значения всех неоперационных (не являющихся системными) атрибутов
должны быть уникальны. Имейте ввиду, что в список
 attributes 

URI
 ignore 

в общем случае должны попасть атрибуты
 objectClass ,

 dc ,

 ou 

и
 o ,

поскольку, с одной стороны, их значения, скорее всего, не должны быть уникальными, а с другой, все
они являются неоперационными атрибутами.
 
Существует возможность задать область ограничений со строгой проверкой уникальности, указав перед
URI ключевое слово
 strict. 

По умолчанию проверка уникальности не распространяется на null-значения. Включение режима
 strict 

распространяет концепцию уникальности на null-значения, то есть в пределах поддерева только одному
атрибуту будет разрешено иметь null-значение. Строгая проверка применяется ко всем URI в пределах
одной области ограничений, но если задаётся несколько областей ограничений, то одни из них могут быть
со строгой проверкой уникальности, а другие - нет.
 
 

Нельзя одновременно задавать и URI, и устаревшие параметры конфигурации slapo-unique. Устаревшие
параметры конфигурации управляют частями настроек единственной области ограничений в виде поддерева,
при поиске по которому нельзя применить фильтрацию.
 
 unique_base <basedn> 

 
Этот устаревший параметр конфигурации следует преобразовать в компонент URI
 base dn 

в приведённой выше директиве
 unique_uri .

 unique_ignore <attribute...> 

 
Этот устаревший параметр конфигурации следует преобразовать в директиву
 unique_uri 

с ключевым словом
 ignore ,

как описано выше.
 unique_attributes <attribute...> 

 
Этот устаревший параметр конфигурации следует преобразовать в компонент URI
 attributes 

директивы
 unique_uri ,

как описано выше.
 unique_strict  <attribute...> 

 
Этот устаревший параметр конфигурации следует преобразовать в директиву
 unique_uri 

с ключевым словом
 strict ,

как описано выше.
 
   
 ПРЕДОСТЕРЕЖЕНИЯ 

 

 unique_uri 

нельзя использовать совместно с конфигурацией в старом стиле, и наоборот. С помощью
 unique_uri 

можно реализовать всё то, что позволяла сделать старая система конфигурации.
 

В код наложения намеренно не включены атрибуты по умолчанию для URI
 ignore  ldap:///... ,

чтобы обеспечить максимальную гибкость при выполнении требований, специфичных для конкретных систем.
 

Репликация, а также операции с элементом управления
 manageDsaIt ,

позволяют обойти данное ограничение. Поэтому для поддержания уникальности значений в реплицируемом DIT
важно, чтобы на всех серверах, принимающих и обрабатывающих операции записи, было настроено это наложение.
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5).

 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 ПРЕДОСТЕРЕЖЕНИЯ 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 
 
 
 
 
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