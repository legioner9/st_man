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
 
 
 
 debconf-copydb (1) >>  debconf-copydb  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   debconf-copydb  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

 
debconf-copydb - копирует базу данных debconf
   
 КРАТКИЙ ОБЗОР 

 


  debconf-copydb бд_источник бд_приёмник [--pattern=шаблон] [--owner-pattern=шаблон] [--config=Foo:bar]

 


   
 ОПИСАНИЕ 

 
 debconf-copydb  копирует элементы из существующей базы данных debconf в
другую, возможно новую базу данных. Базы данных могут иметь разный формат;
если это так, то автоматически выполняется конвертирование.
   
 ПАРАМЕТРЫ 

 
 
 бд_источник 
 
Имя базы данных источника. Обычно, база уже описана в файле debconf.conf
(или .debconfrc).
 бд_приёмника 
 
Имя базы данных приёмника. Оно может быть описано в файле debconf.conf или
.debconfrc или вы можете объявить его в командной строке (смотрите далее).
 -p   шаблон ,  --pattern   шаблон 
 
Если этот параметр указан, будут скопированы только те элементы из
 бд_источника , чьи имена удовлетворяют шаблону.
 --owner-pattern   шаблон 
 
Если этот параметр указан, будут скопированы только те элементы из
 бд_источника , владельцы которых удовлетворяют шаблону.
 -c   foo:bar ,  --config   Foo:bar 
 
Устанавливает параметр Foo в значение bar. Это похоже на написание:


 



   Foo: bar

 



 


в файле debconf.conf, возможно, за исключением того, что вы не будете
использовать пробел в командной строке (или укажите в кавычках: ``Foo:
bar''). Вообще, это должно указываться несколько раз, чтобы построить полную
строфу конфигурации. Так как для разделения строф в debconf.conf
используются пустые строки, эта программа предполагает, что ``Name:dbname''
означает начало новой строфы.
 
   
 ПРИМЕРЫ 

 


   debconf-copydb configdb backup

 


 

Копирует всё из configdb в backup, предполагается, что база данных backup
уже описана в debconf.conf.
 



   debconf-copydb configdb newdb --pattern='^slrn/' \
        --config=Name:newdb --config=Driver:File \
        --config=Filename:newdb.dat

 


 

Копирует данные пакета slrn из configdb в newdb. newdb не определена в файле
rc, поэтому ключи --config настраивают базу данных на лету.
 



   debconf-copydb configdb stdout -c Name:stdout -c Driver:Pipe \
        -c InFd:none --pattern='^foo/'

 


 

Выводит все элементы из базы данных debconf, которые касаются пакета foo на
экран.
 



   debconf-copydb configdb pipe --config=Name:pipe \
                --config=Driver:Pipe --config=InFd:none | \
        ssh remotehost debconf-copydb pipe configdb \
                --config=Name:pipe --config=Driver:Pipe

 


 

Здесь используется специальный канальный драйвер для копирования базы данных
на удалённую систему.
   
 СМОТРИТЕ ТАКЖЕ 

 
 debconf.conf (5)
   
 АВТОР 

 
Joey Hess < joeyh@debian.org >
 

 
   Index 
 
 НАЗВАНИЕ 
 КРАТКИЙ ОБЗОР 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ПРИМЕРЫ 
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