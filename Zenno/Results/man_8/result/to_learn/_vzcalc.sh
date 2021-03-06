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
 
 
 
 vzcalc (8) >>  vzcalc  (8)   ( Русские man: Команды системного администрирования ) 
   
 ИМЯ 

vzcalc - использование ресурсов виртуальной средой.
   
 ОБЗОР 

vzcalc [ -v ] < vpsid >
   
 ОПЦИИ 

 
 -v 
Выводить расширенную информацию.
 
   
 ОПИСАНИЕ 

Эта утилита выводит количество ресурсов физической среды, используемых
заданной виртуальной средой. Если виртуальная среда запущена,
будет выведен текущий уровень использования ресурсов. Большие значения использования
(>100%) означают, что система перегружена (или виртуальная среда использует неверную
конфигурацию).
 
 Current 
показывает количество ресурсов, потребляемых виртуальной средой в указанное время.
 Promised 
показывает нестрогий предел значений, "обещанных" для данной виртуальной среды.
 Max  
показывает строгий предел значений, "обещанных" для данной виртуальной среды.

Если указана опция  -v , выводится расширенная информация.
 Low Mem 
часть памяти, находящейся в нижних адресах, и напрямую используемой ядром.
 Total Ram 
вся оперативная память
 Mem+Swap 
количество памяти, доступное для приложений (количество оперативной памяти +
размер подкачки).
 Alloc Mem 
стандартные выделения памяти для приложений, сделанные для приложения
внутри виртуальной среды. Это более "виртуальный" системный ресурс по сравнению с
объемом доступной памяти или объемом доступной памяти + подкачка.
 
   
 ДИАГНОСТИКА 

В случае успешного завершения возвращается 0. В случае ошибки
возвращается 1.
   
 АВТОРСКИЕ ПРАВА 

Copyright (C) 2000-2007, SWsoft. Распространяется на условиях GNU GPL.
   
 ПЕРЕВОД 

Перевод с английского Виктор Ерёмин < ErV2005@rambler.ru > 2007
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПЦИИ 
 ОПИСАНИЕ 
 ДИАГНОСТИКА 
 АВТОРСКИЕ ПРАВА 
 ПЕРЕВОД 
 
 
 
 
 
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