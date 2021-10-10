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
 
 
 
 ld-linux.so (8) >>  ld-linux.so  (8)   ( Русские man: Команды системного администрирования )   ld-linux.so  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

ld-linux.so - программа динамической привязки
   
 ОПИСАНИЕ 

 ld-linux.so 

загружает разделяемые библиотеки, требуемые программами,
подготавливает к запуску и затем исполняет ее.
Пока явно не будет указан параметр
 -static 

для
 ld 

во время компиляции, все программы Linux будут незавершенными и
будут требовать дальнейшую привязку к библиотекам при запуске.
 

Разделяемые библиотеки, необходимые программам, ищутся
по такому алгоритму:
 
 o 
Использовать динамический атрибут секции DT_RPATH бинарного файла,
если он существует, а атрибут DT_RUNPATH не существует.
 o 
Использовать переменную окружения
 LD_LIBRARY_PATH . 

за исключением случаев, когда исполняемым файлом является бинарный файл,
меняющий/устанавливающий идентификаторы пользователей/групп;
в этом случае она игнорируется.
 o 
Использовать атрибут динамической секции DT_RUNPATH бинарного файла, если существует.
 o 
Из кэш-файла
 /etc/ld.so.cache ,

содержащего скомпилированный список бибилиотек, ранее найденных в
пути поиска. Однако, если исполняемый файл был связан с параметром
 -z nodeflib,

то библиотеки, находящиеся в каталогах по умолчанию, пропускаются.
 o 
В каталоге по умолчанию
 /lib ,

затем в
 /usr/lib .

Если бинарный файл был связан с параметром
 -z nodeflib, 

то этот шаг пропускается.
 
   
 СИНТАКСИС 

Программа динамической привязки может быть запущена как косвенно,
при запуске некоторых динамически связанных программ или библиотек
(в этом случае никаких параметров в командной строке программе
не передается, и запускается программа, сохраненная в секции
 .interp ),

так и явно, запуском:

 /lib/ld-linux.so.* 

[OPTIONS] [PROGRAM [ARGUMENTS]]
   
 ОПЦИИ КОМАНДНОЙ СТРОКИ 

 
 --list 

 
Перечисляет все зависимости и раскрывает их.
 --verify 

 
Проверяет, является ли программа динамически связанной и
сможет ли текущая программа динамической связки обработать ее.
 --library-path PATH 

 
Переопределяет настройки переменной окружения
 LD_LIBRARY_PATH 

(см. ниже).
 --ignore-rpath LIST 

 
Игнорирует информацию RPATH и RUNPATH в названиях объекта из списке LIST.
 
   
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 

 
 LD_LIBRARY_PATH 

 
Список каталогов, разделенных двоеточиями, в котором нужно
искать библиотеки ELF во вермя запуска. Похоже на переменную окружения
 PATH .

 LD_PRELOAD 

 
Список (разделенных пробелами) пользовательских разделяемых ELF-библиотек,
которых надо загрузить перед остальными библиотеками.
Данный параметр может использоваться для выборочного переопределения
функций в других разделяемых библиотеках.
Для бинарных файлов ELF, меняющих идентификаторы пользователей,
будут загружены только библиотеки из системных каталогов.
 LD_TRACE_LOADED_OBJECTS 

 
Если не является пустой строкой, заставляет программу перечислить свои
динамические библиотечные зависимости, как если бы программа была запущена ldd.
 LD_BIND_NOW 

 
Если не является пустой строкой, заставляет программу динамической связки
расшифровать все символы при старте программы вместо переноса вызова функции
расшифровки в пункт их первоначального вызова.
 LD_WARN 

 
Если не является пустой строкой, то предупреждает о неразрешимых символах.
 LD_DEBUG 

 
Выдает подробную отладочную информацию о программе динамической привязки.
Если установлено в
 all ,

то выдает всю отладочную информацию, если установлено в
 help ,

то выдает информационное сообщение о возможных категориях в этой
переменной окружения.
 LD_DEBUG_OUTPUT 

 
Файл, куда исходящий поток
 LD_DEBUG 

будет посылать данные, по умолчанию - стандартный поток вывода. LD_DEBUG_OUTPUT
игнорируется для бинарных файлов, изменяющих идентификаторы пользователей/групп.
 LD_VERBOSE 

 
Если не является пустой строкой, то выдает информацию о версии символов программы
при запросе информации о программе (то есть либо определено
 LD_TRACE_LOADED_OBJECTS ,

либо параметры
 --list 

или
 --verify 

переданы программе динамичской связки).
 
   
 ФАЙЛЫ 


 /lib/ld-linux.so.* 

программа динамической привязки/загрузки для ELF
 
 /etc/ld.so.cache 

 
Файл, содержащий список каталогов, по которым производится поиск
библиотек, и упорядоченный список библиотек.
 /etc/ld.so.preload 

 
Файл, содержащий разделенный пробелами список разделяемых ELF-библиотек
для загрузки перед программами и остальными библиотеками.
 lib*.so* 

 
разделяемые библиотеки

 
   
 СМ. ТАКЖЕ 

 ldd (1),

 ldconfig (8).

   
 АВТОРЫ 

Roland McGrath, Ulrich Drepper и другие.
Данное руководство взято из libc 5 из руководства ld.so.
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 СИНТАКСИС 
 ОПЦИИ КОМАНДНОЙ СТРОКИ 
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
 
 
 
 
 
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