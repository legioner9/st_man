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
 
 
 
 etc-update (1) >>  etc-update  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    ETC-UPDATE ¶ 


	 НАЗВАНИЕ ¶ 


etc-update - обработка изменений конфигурационных файлов 

	 СИНТАКСИС ¶ 


	 etc-update 


	 ОПИСАНИЕ ¶ 


	 Утилиту  etc-update  следует запускать после установки новых пакетов для проверки предлагаемых обновлений конфигурационных файлов. Если новый конфигурационный файл может перезаписать имеющийся,  etc-update  спросит у пользователя, как с ним поступить. 


	 etc-update  проверяет все каталоги из переменной  CONFIG_PROTECT , а конфигурационные файлы из  CONFIG_PROTECT_MASK  обновляет автоматически. Подробнее об этом  см. в справке по  make.conf (5). 


	 ОПЦИИ ¶ 


	 Нет. 


	 БАГТРЕКЕР ¶ 


	 Об обнаруженных ошибках сообщайте на  http://bugs.gentoo.org/ 


	 АВТОРЫ ¶ 


	 
	 Jochem Kossen and Leo Lipelis 
		 Karl Trygve Kalleberg < karltk@gentoo.org > 
		 Mike Frysinger < vapier@gentoo.org > 
	 


	 ФАЙЛЫ ¶ 


	 /etc/etc-update.conf 


	 Здесь хранятся настройки  etc-update . 


	 /etc/dispatch-conf.conf 


	 Настройки для обработки конфигурационных файлов перед их изменением (с помощью  dispatch-conf ). 


	 СМ. ТАКЖЕ ¶ 


	 make.conf (5) 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 Август 2008 







 
 
 
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