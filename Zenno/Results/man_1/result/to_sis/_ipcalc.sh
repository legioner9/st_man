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
 
 
 
 ipcalc (1) >>  ipcalc  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   ipcalc  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

ipcalc - выполняет простые операции с IP-адресами
   
 СИНТАКСИС 

 ipcalc 

[ ОПЦИЯ ]... < IP-адрес >[ /префикс ] [ сетевая маска ]

   
 ОПИСАНИЕ 

 ipcalc  предоставляет простой метод для вычисления IP-информации
хоста. Различные опции определяют, какую информацию  ipcalc  должен
вывести на стандартный выход. Могут быть заданы несколько опций.
Обрабатываемый IP-адрес всегда должен быть указан. Для большинства
операций также требуется сетевая маска или префикс CIDR. 

   
 ОПЦИИ 

 
 -b ,  --broadcast   
 
Показывает широковещательный адрес для указанного IP-адреса и сетевой
маски.

 -h ,  --hostname   
Показывает имя хоста указанного IP-адреса.

 -m ,  --netmask 
Вычисляет сетевую маску указанного IP-адреса. Подразумевается, что IP-
адрес принадлежит полной сети класса A, B или C. Многие сети не используют
сетевые маски по умолчанию, в данном случае будет возвращено 
недействительное значение.

 -p ,  --prefix 
Показывает префикс указанной маски/IP-адреса.

 -n ,  --network   
Показывает сетевой адрес указанного IP-адреса и сетевой маски.

 -s ,  --silent   
Никогда не выводить сообщения об ошибке.

 
   
 АВТОРЫ 

 Erik Troan < ewt@redhat.com >
Preston Brown < pbrown@redhat.com >
 

   
 СООБЩЕНИЯ ОБ ОШИБКАХ 

Присылайте отчеты об ошибках на нашу систему слежения за ошибками:
 http://bugzilla.redhat.com/bugzilla. 
   
 COPYRIGHT 

Copyright © 1997-2001 Red Hat, Inc.
 

Это открытое программное обеспечение; условия копирования смотрите в исходных текстах. Ничего НЕ гарантируется; даже РАБОТОСПОСОБНОСТЬ или ПРИГОДНОСТЬ ДЛЯ ЧАСТНОЙ ЦЕЛИ.
   
 СМ. ТАКЖЕ 

 ipcalc (3)
   
 ПЕРЕВОД 

Павел Марьянов < acid_jack@ukr.net >

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 АВТОРЫ 
 СООБЩЕНИЯ ОБ ОШИБКАХ 
 COPYRIGHT 
 СМ. ТАКЖЕ 
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