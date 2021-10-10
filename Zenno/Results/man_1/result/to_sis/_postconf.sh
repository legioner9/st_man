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
 
 
 
 postconf (1) >>  postconf  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   postconf  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   postconf  (5)   ( Linux man: Форматы файлов ) 


   
 НАЗВАНИЕ 

postconf
-
конфигурационный инструментарий Postfix
   
 ОБЗОР 


 

 postconf  [ -dhmlnv ] [ -c  config_dir ]
[ parameter ... ]
 
 postconf  [ -ev ] [ -c  config_dir ]
[ parameter=value ... ]
   
 ОПИСАНИЕ 



Команда  postconf  выводит действующее значение параметра
 parameter  (все известные параметры по умолчанию), по
одному параметру на строку, изменяет его значение или выводит
другую информацию о почтовой системе Postfix.
 
Параметры:
 
 -c  config_dir 
Читать конфигурационный файл  main.cf  в указанном каталоге
вместо конфигурационного каталога по умолчанию.
 -d 
Выводит установки параметра по умолчанию вместо действующих.
 -e 
Редактировать конфигурационный файл  main.cf . Файл
копируется во временный файл, затем переименовывается в нужный.
Параметры и значения указываются в командной строке. Для 
сохранения метасимволов интерпретатора команд и пробелов используйте кавычки.
 -h 
Показать только значения параметра, без меток "name = ", 
которые обычно ставятся перед значением.
 -l 
Список названий всех поддерживаемых методов блокировки.
 -m 
Список названий всех поддерживаемых типов поисковых таблиц.
 -n 
Вывести только те установки параметра, которые не равны
значениям по умолчанию.
 -v 
Включить подробное журналирование в целях отладки. Несколько
опций  -v  увеличивают степень подробности журналирования.
 
   
 ДИАГНОСТИКА 



Сообщения о проблемах выводятся в стандартный поток ошибок.
   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 


 

Это программное обеспечение должно поставляться с лицензией от
Secure Mailer.
   
 ОБ АВТОРАХ 


 Wietse Venema
IBM T.J. Watson Research
P.O. Box 704
Yorktown Heights, NY 10598, USA

Перевод:
Alex Savvin < savvin@mail.ru >, Jan 03, 2002

 
 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 ДИАГНОСТИКА 
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 
 ОБ АВТОРАХ 
 
 
 
 
 
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