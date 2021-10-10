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
 
 
 
 ebump (1) >>  ebump  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    ebump ¶ 


	 НАЗВАНИЕ ¶ 


ebump - Gentoo: сообщает номер ревизии ебилда 

	 СИНТАКСИС ¶ 


	 ebump [ опция ] < пакет[-версия] > 


	 ОПИСАНИЕ ¶ 


	 Утилита  ebump  сообщает номер ревизии определенного ебилда и все вспомогательных файлов в каталоге files/, имеющих соответствующий суффикс версии. 


	 По умолчанию все новые файлы ревизий добавляются в VCS. 


	 Вы должны находиться в каталоге обрабатываемого ебилда. 


	 ОПЦИИ ¶ 


	 -C   --no-vcs 


	 Не добавлять новые файлы в VCS. 


	 -V   --version 


	 Вывести информацию о версии и выйти. 


	 -v   --verbose 


	 Выводить более подробную информацию. Эта опция может использоваться неоднократно. 


	 -q   --quiet 


	 Выводить лишь самую необходимую информацию. 


	 -a   --no-auxfiles 


	 Не обрабатывать вспомогательные файлы (files/*). 


	 -c   --no-changelog 


	 Не обновлять чейнджлоги (с помощью echangelog). 


	 -m  < содержимое чейнджлога >  --message  < содержимое_чейнджлога > 


	 Позволяет задать текст, который будет добавлен в чейнджлог вместо стандартного подстановочного. 


	 -d   --delete-old 


	 Удалить из VCS более раннюю ревизию и вспомогательные файлы. Это  небезопасно ! Не используйте данную опцию, если не вполне уверены в своих действиях, так как: 1) более ранняя ревизия, возможно, стабильно работает на архитектуре, отличной от вашей;  2) удаляемые вспомогательные файлы могут понадобиться другим версиям ебилда; 3) как правило, новая ревизия должна пройти тестирование, прежде чем она будет помечена как стабильная. 


	 КОНФИГУРАЦИЯ ¶ 


	 /etc/gentoolkit/ebump.conf   ~/.gentoo/ebump.conf 


	 Из этих файлов  ebump  черпает настройки.  opt_verbosity  (значение по умолчанию  1 ) - степень подробности выводимой информации, от 0 до 10  opt_add_changelog  (значение по умолчанию  y ) - добавить запись в чейнджлог  opt_add_vcs  (значение по умолчанию  y ) - добавить новые файлы в VCS opt_bump_auxfiles  (значение по умолчанию  y ) - обновить вспомогательные файлы в каталоге files/  opt_delete_old  (значение по умолчанию  n ) - удалить прежнюю ревизию (ОСТОРОЖНО!)  opt_commitmessage  (значение по умолчанию  "" ) - сообщение чейнджлога по умолчанию 


	 (УСТАРЕЛО)   ~/.gentoo/gentool-env  Из этого файла  ebump  берет переменные окружения  AUTHORNAME  и  AUTHOREMAIL , которые используются для создания корректных записей ChangeLog. 


	 СМ. ТАКЖЕ ¶ 


	 Другие утилиты из комплекта  app-portage/gentoolkit-dev , в частности,  echangelog (1) и  ekeyword (1). 


	 АВТОРЫ ¶ 


	 
	 Karl Trygve Kalleberg < karltk@gentoo.org >  
		 Christian Ruppert < idl0r@gentoo.org > 
	 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 0.1.1 







 
 
 
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