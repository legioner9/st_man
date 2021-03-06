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
 
 
 
 watch (1) >>  watch  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   watch  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   watch  (8)   ( FreeBSD man: Команды системного администрирования ) 
 
   
 НАЗВАНИЕ 

 
watch - запускает и следит за программой через
фиксированные интервалы времени
 
   
 СИНТАКСИС 

 
watch [ -n   sec ] command [args]
 
   
 ОПИСАНИЕ 

watch будет запускать заданную команду каждые  n  секунд и
показывать ее вывод на терминал используя при этом  curses 
библиотеку. Если интервал не задан с помощью опции  -n  , то
команда будет запускаться каждые 2 секунды. Завершить
программу можно с помощью нажатия соответствующих клавишь
(обычно  <CTRL-C> ).
 
 
 ПРИМЕР 
 
watch -n 1 ps -ux
 
 Заметьте  
 
что,данный пример приведен лишь для того чтобы
показать как работает данная программа, но более эфективно
использовать программу  top (1) 
 
 АВТОР 
 
Данная реализция watch была написана Tony Rems и помещена
в  comp.sources.unix  в 1984. Francois Pinard модифицировал
и откорректировал ее в 1991. Данное руководство было
написано Helmut Geyer.
 
 ПЕРЕВОД 
 
Copyright (C) by Kosta Kudrin
 cola@tcsb.perm.su 
2:5054/ 69@fidonet 
</descrip>
 
 
 

 
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