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
 
 
 
 semodule_link (8) >>  semodule_link  (8)   ( Русские man: Команды системного администрирования )   semodule_link  (8)   ( Linux man: Команды системного администрирования ) 
   
 НАЗВАНИЕ  

semodule_link - Утилита объединения нескольких пакетов модулей политики SELinux
 
   
 СИНТАКСИС 

 semodule_link [-Vv] [-o outfile] basemodpkg modpkg1 [modpkg2]... 

 

   
 ОПИСАНИЕ 

 

semodule_link - это утилита разработчика, предназначенная для связывания нескольких
пакетов модулей политик в единый пакет модулей политик. Данная утилита не входит 
в число утилит, необходимых при каждодневной работе с SELinux. Обычно, такие операции
как связывание выполняются незаметно для пользователя при помощи libsemanage в ответ
на команды semodule. Пакеты модулей создаются утилитой semodule_package.
 
   
 ОПЦИИ 

 
 -V 

 
отобразить версию
 -v 

 
подробный вывод
 -o <output file>  

 
Объединенный пакет модулей политики, созданный утилитой.
 
 
 
   
 СМОТРИ ТАКЖЕ 

 checkmodule (8),  semodule_package (8),  semodule (8),  semodule_expand (8) 

(8),
   
 АВТОРЫ 

 Эту страницу руководства написал Dan Walsh < dwalsh@redhat.com >.
Перевод  руководства  -  Андрей  Маркелов < andrey@markelov.net >, 2007г.
Программа написана Karl MacMillan < kmacmillan@tresys.com >

 
 
   Index 
 
 НАЗВАНИЕ  
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 СМОТРИ ТАКЖЕ 
 АВТОРЫ 
 
 
 
 
 
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