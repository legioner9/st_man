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
 
 
 
 debconf-updatepo (1) >>  debconf-updatepo  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   debconf-updatepo  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

 
debconf-updatepo --- обновляет PO-файлы из шаблонов debconf
   
 СИНТАКСИС 

 
 debconf-updatepo  [ -v ] [ -h ] [ --podir= КАТАЛОГ ] [ --skip-pot ]
[ --skip-merge ]
   
 ОПИСАНИЕ 

 
Эта программа читает из  po/POTFILES.in  список обрабатываемых мастер
файлов, затем извлекает строки gettext, сохраняя их в  po/templates.pot  и
обновляет все  po/*.po  файлы. Этот сценарий можно запускать или в каталоге
верхнего уровня, или в подкаталогах  debian  или  debian/po . Он
запускается разработчиком и/или переводчиком для обновления PO-файлов, когда
изменяется английский текст в файлах  templates .
   
 ПАРАМЕТРЫ 

 
 
 -h ,  --help 
 
Показать справку по использованию и завершить работу.
 -v ,  --verbose 
 
Показывать подробности работы.
 --podir= КАТ 
 
Указать каталог для PO-файлов. По умолчанию, PO-файлы ищутся в подкаталогах
 debian/po ,  po  и  ../po , именно в таком порядке.
 --skip-pot 
 
Не генерировать новый файл  po/templates.pot .
 --skip-merge 
 
Не объединять существующие PO-файлы с  po/templates.pot .
 
   
 СМОТРИТЕ ТАКЖЕ 

 
 debconf-gettextize (1),  po2debconf (1),  podebconf-report-po (1),
 po-debconf (7).
   
 АВТОР 

 


   Denis Barbier < barbier@linuxfr.org >

 


 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
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