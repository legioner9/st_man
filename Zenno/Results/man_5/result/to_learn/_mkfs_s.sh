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
 
 
 
 mkfs_s (5) >>  mkfs_s  (5)   ( Русские man: Форматы файлов ) 
 
 
 mkfs(1M_S5) 
 (S5) 
 mkfs(1M_S5) 
 
 

 НАЗВАНИЕ 
 mkfs (s5)  - создает файловую систему  s5 

 СИНТАКСИС 
 
mkfs -F s5 [ общие_опции ]  special 
mkfs -F s5 [общие_опции] [-b  размер_блока ]  special   
       размер [: i-nodes ] [ gap blocks/cyl ] 
mkfs -F s5 [ общие_опции ] [-b  размер_блока ]  special   
       proto  [ gap blocks/cyl ]
 

 ОПИСАНИЕ 
 общие_опции  - это опции, поддерживаемые командой  mkfs  общего назначения. 

 Команда  mkfs  создает файловую систему  s5  путем записи в файл  special , 
используя значения остальных аргументов командной строки.  mkfs  строит 
файловую систему с корневым каталогом и каталогом  lost+found .  mkfs  делает 
каталог  lost+found  максимально большим, но так, чтобы он помещался в один 
блок на диске. 

 Опции команды: 

 
 -F s5 
Задает тип файловой системы s5. 
 -b размер_блока 
Задает логический размер блока для файловой системы. 
Логический размер блока - это количество байтов, которое 
операционная система читает или записывает одной 
операцией ввода/вывода. Допустимыми размерами блока 
являются 512, 1024 и 2048. По умолчанию используется 
1024. 
 special 
 mkfs  создает файловую систему путем записи в файл  special . 
 размер 
Задает количество логических секторов по 512 байтов в 
файловой системе. Максимально возможный размер 
файловой системы - 2097152 секторов по 512-байтов (1 Гб). 
 

 Если второй аргумент  mkfs  представляет собой строку цифр, то он 
интерпретируется как размер файловой системы в блоках. Это количество 
физических (512-байтовых) блоков на диске, которые будет занимать файловая 
система. Если количество записей i-node ( индексных дескрипторов ) не задано, по умолчанию будет 
использовано значение, примерно равное количеству логических блоков 
поделить на 4.  mkfs  строит файловую систему с единственным пустым 
каталогом. Блок программы загрузки (нулевой блок) остается не 
проинициализированным. 

 Если второй аргумент представляет собой имя файла, который можно открыть, 
 mkfs  считает его файлом прототипа  proto , и будет выполнять свои действия в 
соответствии с информацией из этого файла. Файл прототипа содержит 
лексемы, разделяемые пробелами или переводами строк. Вот пример 
спецификации прототипа (номера строк добавлены, чтобы упростить 
объяснение): 

 1.	/dev/rdsk/0s0
2.	4872 110
3.	d--777 3 1
4.	usr	d--777 3 1
5.			sh    ---755 3 1 /sbin/sh
6.			ken   d--755 6 1
7.			   $
8.			b0    b--644 3 1 0 0
9.			c0    c--644 3 1 0 0
10.			slnk  l--777 2 2 /var/tmp
11.			$
12.	$
 

 Строка 1 в этом примере - это имя файла, который необходимо скопировать в 
нулевой блок в качестве  программы начальной загрузки  (bootstrap program). 

 Строка 2 задает количество физических (512-байтовых) блоков, которые должна 
занимать файловая система, и количество записей i-node в файловой системе. 

 Строки 3-10 сообщают команде  mkfs  о файлах и каталогах, которые необходимо 
включить в создаваемую файловую систему. 

 Строка 3 задает корневой каталог. 

 Строки 4-6 и 8-10 задают другие каталоги и файлы. 

 Строка 10 задает символическую связь  slnk , создаваемую в каталоге  /usr  и 
указывающую на  /var/tmp . 

 Символ  $  в строке 7 сообщает  mkfs  о необходимости завершить ветвь файловой 
системы, в которой она находится, и продолжить с ближайшего каталога 
верхнего уровня. Символы  $  в строках 11 и 12 завершают процесс, поскольку 
после них уже нет никаких спецификаций. 

 Спецификации файлов задают режим, идентификатор пользователя, 
идентифкатор группы и первоначальное содержимое файла. Синтаксис для поля 
содержимого зависит от первого символа режима. 

 Режим (права доступа) для файла задается 6-символьной строкой. Первый 
символ указывает тип файла. Можно использовать символы  -bcdl  для указания 
обычного файла, блочного устройства, символьного устройства, каталога или 
символьной связи, соответственно. Вторым символом режима может быть  u  или 
 - , указывающий, надо устанавливать режим set-user-id ( SUID ) или нет. Третий 
символ -  g  или  - , - указывает, надо ли устанавливать режим set-group-id ( SGID ). 
Оставшиеся символы режима - это трехзначное восьмеричное число, задающее 
права доступа владельца, группы и остальных пользователей на чтение, запись и 
выполнение (см.  chmod(1) ). 

 После режима идут два десятичных числа; они задают идентификаторы 
пользователя и группы - владельцев файла. 

 Если создается обычный файл, следующей лексемой в спецификации может 
быть путь к файлу, размер и содержимое которого копируются. Если создается 
блочное или символьное устройство, дальше идут два десятичных числа, 
задающие основной и дополнительный номера устройства. Если создается 
каталог,  mkfs  создает элементы, а затем читает список имен и (рекурсивно) 
спецификаций файлов для элементов этого каталога. Как уже упоминалось 
выше, сканирование прекращается символом  $ . 

 Аргументы  gap blocks/cyl  в обеих формах команды задают  вращательный 
интервал  (rotational gap) и количество блоков на цилиндр. Если интервал и 
количество блоков на цилиндр не указаны или содержат недопустимые 
значения, используются стандартные значения размера интервала 10 и 162 блока 
на цилиндр. 

 ПРИМЕЧАНИЯ 

 В файле прототипа невозможно задать жесткие связи. 

 Максимальное количество записей i-node, которое можно создать, равно 65500. 

 ССЫЛКИ 
 
	 chmod(1) ,
	 dir(4S5) ,
	 fs(4S5)  для s5,
	 mkfs(1M)  общего назначения
 

 Copyright 1994 Novell, Inc. 
Copyright 2000  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
  

 
 
 
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