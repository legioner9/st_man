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
 
 
 
 rc-update (1) >>  rc-update  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   rc-update  (8)   ( Русские man: Команды системного администрирования ) 
    RC-UPDATE ¶ 


	 НАЗВАНИЕ ¶ 


	 rc-update  - добавление/удаление служб на том или ином уровне запуска 


	 СИНТАКСИС ¶ 


	 rc-update  [ -s , -stack  ]  add служба  [ уровень запуска  ... ]  rc-update  [ -s , -stack  ]  delete служба  [ уровень запуска  ... ]  rc-update  [ -u , -update  ] [ -v , -verbose  ]  show  [ уровень запуска  ... ] 


	 ОПИСАНИЕ ¶ 


	 OpenRC использует именованные уровни запуска.  rc-update  позволяет быстро добавлять и удалять службы на различных уровнях запуска, не прибегая к редактированию конфигурационных файлов или работе с каталогом символических ссылок. Все службы должны располагаться в каталогах /etc/init.d или /usr/local/etc/init.d. Они должны также соответствовать стандарту сценариев запуска OpenRC. 


	 add служба 


	 Добавляет службу на указанный аргументом  уровень запуска  или, если команда дана без аргумента, на текущий уровень. Службы, добавляемые на уровень запуска boot, должны присутствовать в каталоге /etc/init.d. 


	 delete служба 


	 Удаляет службу с указанного аргументом  уровня запуска  или, если команда дана без аргумента, с текущего уровня. 


	 show 


	 Отображает все включенные службы и уровни запуска, которым они принадлежат. Если вы передаете этой команде аргумент, то в вывод будут включены только службы, которые запускаются на указанном уровне/-ях запуска. 


	 -v , -verbose 


	 Выводит все службы. 


	 -u , -update 


	 Принудительно обновляет кэш дерева зависимостей. Это может потребоваться при сбое часов (системные часы отстают от времени файла в каталоге /etc). 


	 Если вам необходимо добавить или удалить службу на определенном уровне запуска, используйте опцию  -s , -stack . Это делает возможным наследование уровней запуска. 


	 СМ. ТАКЖЕ ¶ 


	 rc (8),  rc-status (8) 


	 АВТОРЫ ¶ 


	 
	 Roy Marples < roy@marples.name >  
		 Сгенерировано kio_man, KDE, версия 4.7.2 (4.7.2) 
	 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     







 
 
 
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