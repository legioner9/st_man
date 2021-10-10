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
 
 
 
 man.config (5) >>  man.config  (5)   ( Русские man: Форматы файлов )   man.config  (5)   ( Linux man: Форматы файлов ) 
 
   
 НАЗВАНИЕ 

 
<b>man.config</b> - конфигурационные параметры команды man
 
   
 ОПИСАНИЕ 

 
Этот файл прочитывается программой  man (1) 
и содержит
 
 
 
<item>(a) информацию о путях поиска страниц документации,
<item>(b) абсолютные имена файлов различных программ, таких, nroff, eqn, tbl
и т. п., используемых программой man, и
<item> (c) список распаковщиков для файлов с указанными расширениями.
 
 

 
Альтернативная версия этого файла может быть указана с помощью команды
 
man -C private_man.config ...
 
Имена всех вспомогательных программ могут быть указаны с параметрами.
Полезные опции для nroff можно найти в  grotty (1) 
. Например, вместо команды по умолчанию
 
NROFF /usr/bin/groff -mandoc -Tlatin1
 
можно написать
 
NROFF /usr/bin/groff -mandoc -Tlatin1 -P-u -P-b
 
если требуется запретить подчеркнутые и жирные символы.
 
   
 СМ. ТАКЖЕ 

 
 col (1) 
, (g) eqn (1) 
, (g) pic (1) 
,  groff (1) 
,  grotty (1) 
,
(g) refer (1) 
, (g) tbl (1) 
,  less (1) 
,  man (1)  и  compress (1) 
,
 gzip (1) 
.
 
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
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