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
 
 
 
 pstree (1) >>  pstree  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   pstree  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
pstree - показывает дерево процессов
 
   
 СИНТАКСИС 

 
 pstree  [ -a ] [ -c ] [ -h ] [ -l ] [ -n ] [ -p ] [ -u ] [ -G | -U ]
[ pid | user] 
 
 pstree  -V
 
   
 ОПИСАНИЕ 

 
 pstree  показывает запущенные процессы в виде дерева.
Дерево образует корень или от  pid  или от  init  если  pid  не
указан. Если определено имя пользователя, то дерево
образует корень от процессов , принадлежащих указанному
пользователю.
 
</descrip>
 
 pstree  объединяет одинаковые ветви заключая число данных
ветвей в квадратные скобки "[]" и показывая это значение
перед данным процессом.
 
init-+-getty
 
|-getty</p>
|-getty</p>
`-getty
 
 
 будет выглядеть 
 
init---4*[getty]
 
 ОПЦИИ 
 
 -a   
 
     показыввает команды с аргументами в командной
строке. Если командная строка процесса is swapped
out, то процесс показывается заключенным в круглые
скобки.  -a  неявно запрещает компактную форму
вывода.
 
 -c   
 
     Запрещает компактную форму вывода одинаковых
поддеревьев . По умолчанию, одинаковые поддеревья
обьединяются всякий раз когда возможно.
 
 -G   
 
     Использовать для вывода дерева символы
соответствующие VT100.
 
 -h   
 
     Подсвечивает текущий процесс и его предков. При
этом если терминал не поддерживает подсвечивание
или or if neither the current process nor any of
its ancestors are in the subtree being shown.
 
 -l   
 
     Показывает длинные строки. По умолчанию, строки
обрезаются до ширины дисплея или до 132 если вывод
посылается на не-tty устройство или если ширина
дисплея неизвестна.
 
 -n   
 
     Сортирует процессы с одинаковым предком по
 
 идентификатору процесса (PID) вместо сортировки  
 
по
имени. (Числовая сортировка.)
 
 -p   
 
     Показывает идентификаторы процессов
PIDs.Идентификаторы процессов (PIDs) показываются
десятиричным числом , заключенным в курглые скобки
после каждого имени процесса.  -p  запрещает вывод в
компактной форме.
 
 -u   
 
     Показывает uid . Всякий раз когда uid процесса
отличается от uid родителя , то новый uid
показывается после имени процесса ,заключенным в
круглые скобки.
 
 -U   
 
     использует UTF-8 (Unicode) символы unicode для
рисования дерева. Под Linux 1.1-54 и выше ,UTF-8
режим получается выводом на консоль команды  echo -e
`\033%8'  и и завершается командой  echo -e `\033%@' 
 
 -V   
 
     Показывает информацию о версии программы.
 
 ФАЙЛЫ 
 
 /proc  
 
     место нахождения proc файловой системы
 
 АВТОР 
 
Werner Almesberger < werner.almesberger@lrc.di.epfl.ch >
 
 СМОТРИ ТАК ЖЕ 
 
 ps (1) 
,  top (1) 
 
 ПЕРЕВОД 
 
Copyright (C) by Kosta Kudrin
 cola@tcsb.perm.su 
2:5054/ 69@fidonet 
 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 
 
 
 
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