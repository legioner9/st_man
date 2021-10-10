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
 
 
 
 ttys (4) >>  ttys  (4)   ( Русские man: Специальные файлы /dev/* )   ttys  (4)   ( Linux man: Специальные файлы /dev/* )   ttys  (5)   ( FreeBSD man: Форматы файлов ) 
   
 НАЗВАНИЕ 

ttys - последовательные терминальные линии
   
 ОПИСАНИЕ 

 ttyS[0-3]  - это символьные устройства для последовательных терминальных линий.
 

Обычно они создаются так:
 
 
mknod -m 660 /dev/ttyS0 c 4 64 # адрес 0x03f8
 

mknod -m 660 /dev/ttyS1 c 4 65 # адрес 0x02f8
 

mknod -m 660 /dev/ttyS2 c 4 66 # адрес 0x03e8
 

mknod -m 660 /dev/ttyS3 c 4 67 # адрес 0x02e8
 

chown root:tty /dev/ttyS[0-3]
 
 

   
 ФАЙЛЫ 

/dev/ttyS[0-3]
   
 СМ. ТАКЖЕ 

 mknod (1),

 chown (1),

 getty (1),

 tty (4)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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