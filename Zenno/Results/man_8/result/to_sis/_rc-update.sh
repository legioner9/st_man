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
 
 
 
 rc-update (8)   rc-update  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) >>  rc-update  (8)   ( Русские man: Команды системного администрирования ) 
 
   
 Имя 

 

 rc-update  - добавить или удалить скрипт из уровня запуска
 
   
 Синтаксис 

 

rc-update add script <уровень запуска> 
 

 
rc-update del script [уровень запуска] [уровень запуска]
 

 
rc-update show [уровень запуска] 
 
   
 Описание 

 

Система загрузочных скриптов Gentoo использует именованые уровни запуска. Вместо редактирования какого-либо файла 
или управления каталогом симлинков,  rc-update  позволяет легко и быстро добавлять и удалять скрипты из уровней 
запуска. 
Все скрипты управляемые этой программой должны находится в каталоге  /etc/init.d . Они также должны соответствовать 
стандарту Gentoo на загрузочные скрипты/ 
   
 Ключи 

 

add (-a) < скрипт > < уровень запуска1 > [ уровень запуска2 ]
 

 
Добавить < скрипт > в указанные уровни запуска. Нужно указать как минимум один уровень.
 
del (-d)  < скрипт > [ уровень запуска1 ] [ уровень запуска2 ]
 

 
Удалить указанный < скрипт > из указанных уровней. Если уровни не указаные, скрипт будет удален из всех. 
show (-s) [ уровень запуска1 ] [ уровень запуска2 ]
 

 
Показать таблицу соответствия скриптов и уровней запуска. Если указать уровни, будут показаны только эти уровни. 
   
 Примеры 

 

 
 
 rc-update add net.eth0 default
 

 

 

 
Добавить скрипт  net.eth0  на уровень запуска  default 
 
 
 rc-update del sysklogd
 

 

  
 

 
Удалить скрипт  sysklogd  из всех уровней.
 
 
 rc-update show default
 

 

 

 
Показать какие скрпты принадлежат уровню  default 
 
   
 Нашли в программе ошибку? 

 

Сообщайте о найденных ошибках по адресу  http://bugs.gentoo.org/ 
 
   
 Смотрите также 

 

 rc-status (8), ng-update (8), 
 http://www.gentoo.org/doc/en/handbook/handbook-x86.xml?part=2 &chap=4 
 
   
 Авторы 

 

Mike Frysinger < vapier@gentoo.org >
 

 
Перевод на русский язык - Илья Петров
 

 
   Index 
 
 Имя 
 Синтаксис 
 Описание 
 Ключи 
 Примеры 
 Нашли в программе ошибку? 
 Смотрите также 
 Авторы 
 
 
 
 
 
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