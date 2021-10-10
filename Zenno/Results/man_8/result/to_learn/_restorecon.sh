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
 
 
 
 restorecon (8) >>  restorecon  (8)   ( Русские man: Команды системного администрирования )   restorecon  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

restorecon - восстановить заданный по умолчанию контекст безопасности SELinux для файла(файлов).
 
   
 СИНТАКСИС 

 restorecon 

 [-o outfilename ] [-R] [-n] [-v] [-e directory ] pathname... 


 restorecon 

 -f infilename [-o outfilename ] [-e directory ] [-R] [-n] [-v] [-F] 

 
   
 ОПИСАНИЕ 

Данное руководство описывает программу
 restorecon. 


 
Эта программа используется в, первую очередь, когда необходимо установить контекст безопасности
(расширенные атрибуты) для одного или более файлов.

Ее можно запускать в любое время для коррекции ошибок, для добавления поддержки
новой политики или с опцией -n, чтобы убедиться в том, какой контекст присвоен файлу.
 
   
 ОПЦИИ 

 
 -i 

 
игнорировать несуществующие файлы
 -f infilename 

 
infilename содержит список файлов, которые будут обработаны. Для того, чтобы использовать стандартный ввод, используйте - (символ дефис)
 -e directory 

 
задать директорию, которую нужно исключить из обработки (для нескольких директорий повторите опцию).
 -R -r 

 
рекурсивно поменять метки для файлов и директорий
 -n 

 
не менять метки файлов.
 -o outfilename 

 
сохранить список файлов с некорректным контекстом в outfilename.
 -v 

 
показать изменения меток файлов.
 -vv 

 
показать изменения меток файлов, если изменился тип, роль или пользователь.
 -F 

 
Если произошли изменения, то принудительно установить контекст как в file_context для настраиваемых файлов (customizable files) или секции пользователя. 
 
   
 АРГУМЕНТЫ 

 
 pathname... 

Путь к файлу(файлам), требующим изменения меток.
   
 ЗАМЕЧАНИЕ 

restorecon не обрабатывает файлы и директории по символическим ссылкам на них.
 
   
 АВТОРЫ 

Эту страницу руководства написал Dan Walsh < dwalsh@redhat.com >.
Часть содержимого данного руководства взято из страницы руководства
утилиты setfiles, которая была написанна Russell Coker < russell@coker.com.au >.
Перевод руководства - Андрей Маркелов < andrey@markelov.net >, 2007г.
Автор программы Dan Walsh < dwalsh@redhat.com >.
 
   
 СМОТРИ ТАКЖЕ 

 load_policy (8),

 checkpolicy (8)

 setfiles (8)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 АРГУМЕНТЫ 
 ЗАМЕЧАНИЕ 
 АВТОРЫ 
 СМОТРИ ТАКЖЕ 
 
 
 
 
 
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