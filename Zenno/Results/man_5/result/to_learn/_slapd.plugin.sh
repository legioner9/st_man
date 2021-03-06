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
 
 
 
 slapd.plugin (5) >>  slapd.plugin  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapd.plugin - конфигурация подключаемых модулей (плагинов) для slapd, автономного демона LDAP.
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Файл
 slapd.conf (5)

содержит информацию по настройке демона
 slapd (8).

Этот конфигурационный файл также используется инструментами SLAPD:
 slapadd (8),

 slapcat (8) 

и
 slapindex (8).

 

Файл
 slapd.conf 

состоит из набора параметров глобальной конфигурации, применяемых к
 slapd 

в целом (в том числе ко всем базам данных всех механизмов манипуляции данными),
за которым следует ноль или более определений баз данных механизмов манипуляции данными,
содержащих информацию, специфичную для конкретного механизма манипуляции данными.
 

Общий формат
 slapd.conf :

 

     # комментарий - эти параметры применяются ко всем базам данных
    <параметры глобальной конфигурации>
    # определение и параметры конфигурации первой базы данных
    database <тип первого механизма манипуляции данными>
    <параметры конфигурации, специфичные для первого механизма>
    # определение и параметры конфигурации следующей базы данных
    ...
 

 

Если slapd скомпилирован с опцией  --enable-slapi , то он поддерживает подключаемые модули
(плагины) в соответствии с API  Netscape's Directory Server Plug-Ins . В настоящий момент
реализована 4-я версия API с некоторыми расширениями из 5-ой версии.
 

Информация о плагинах может содержаться как в разделе глобальных настроек, так и в разделе настроек
конкретной базы данных. Плагины, связанные с конкретной базой данных, вызываются раньше глобальных
плагинов. В данной man-странице описываются установки конфигурации
 slapd (8),

влияющие на загрузку  плагинов  SLAPI.
 

Аргументы в угловых скобках <> должны быть заменены актуальными значениями.
 

Структура директив plugin:
 
 plugin <type> <lib_path> <init_function> [<arguments>] 

 
Загружает плагин указанного типа для текущей базы данных.
 
 

Значением аргумента
 <type> 

может быть либо
 preoperation ,

то есть плагин выполняется перед обработкой операции с указанной базой данных, либо
 postoperation ,

то есть плагин выполняется после того, как операция с указанной базой данных была обработана, либо
 extendedop ,

то есть плагин используется при выполнении расширенной операции, либо
 object .

Последнее указывает на использование плагина для различных целей, таких как обработка ACL,
вычисляемых атрибутов и перезаписи поисковых фильтров.
 

Аргумент
 <libpath> 

определяет путь к загружаемому объекту плагина; если задан относительный путь, поиск объекта будет
осуществляться по аналогии с динамически загружаемыми пакетами (используется libtool ltdl).
 

Аргумент
 <init_function> 

определяет название функции, которая должна быть вызвана при первоначальной загрузке плагина.
Эта функция должна зарегистрировать те функции, которые плагин предоставляет для выполнения своих
операций. Обратите внимание, что именно эта функция инициации, а не тип плагина (указываемый в
первом аргументе), определяет когда и для каких операций плагин будет задействован.
Функции инициации может быть передан опциональный список аргументов
 <arguments> .

 
 pluginlog <file> 

 
Указывает альтернативный путь для файла журнала плагина (по умолчанию - /usr/local/var/errors).
 modulepath <pathspec> 

 
В этом параметре задаются пути загрузки для динамически подгружаемых модулей, как описано в man-странице
 slapd.conf (5);

однако, поскольку в основе как динамически подгружаемых модулей, так и плагинов SLAPI лежит одна и
та же библиотека (libtool ltdl), значение этого параметра также определяет путь для поиска плагинов.
Обычно при поиске первыми просматриваются пути, определённые пользователем, затем пути, указанные в
переменной окружения  LTDL_LIBRARY_PATH  (если она определена), наконец, просматриваются
специфичные для системы пути динамической загрузки (например, на Linux они  указываются в переменной
окружения  LD_LIBRARY_PATH ). Необходимо внимательно изучать документацию по ltdl, поскольку
последовательность выбора источника путей при поиске очень зависит от системы.
В общем случае, отдельные пути в списках разделены двоеточиями.
 
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию
 /usr/local/var/errors 
файл журнала плагинов по умолчанию.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd (8),

 

"Руководство администратора OpenLDAP" ( http://www.OpenLDAP.org/doc/admin/,   http://pro-ldap.ru/tr/admin24/). 
   
 ПРИЗНАНИЕ ЗАСЛУГ 



 Программное обеспечение OpenLDAP 

разработано и поддерживается проектом OpenLDAP < http://www.openldap.org/ >.
 Программное обеспечение OpenLDAP 

является производным от релиза 3.3 LDAP Мичиганского Университета.

 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 ФАЙЛЫ 
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