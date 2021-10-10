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
 
 
 
 make.conf (5)   make.conf  (5)   ( FreeBSD man: Форматы файлов ) >>  make.conf  (5)   ( Русские man: Форматы файлов ) 
 
/etc/make.conf служит конфигурационным файлом утилиты emerge.
В нём существует определённый ряд переменных, вот несколько из них.
 
 
  CHOST="i686-pc-linux-gnu" - указывает, под какую машину была скомпилирована система ( НЕ ИЗМЕНЯЙТЕ ЭТУ ПЕРЕМЕННУЮ! 
Это может привести к краху всей системы! ) 
 CFLAGS="-O3 -march=i686 -pipe" - оптимизация под определённую архитектуру

 CXXFLAGS="${CFLAGS}" - 

 SYNC=" rsync://192.168.15.198/gentoo-portage " - адрес сервера RSYNC для обновления системы портежей. 
 GENTOO_MIRRORS=" ftp://192.168.15.198/gentoo/source " - адрес сервера с исходными кодами.

 USE="cdr dvd scanner cups bluetooth -alsa lvm lirc webcam userlocales unicode" - USE флаги. Перед флагом может использоваться 
знак минус. 
 ACCEPT_KEYWORDS="~x86" - маска

 

 
   Index 
 
 
 
 
 
 
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