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
 
 
 
 euse (1) >>  euse  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    EUSE ¶ 


	 НАЗВАНИЕ ¶ 


euse - Gentoo: редактор USE-флагов из командной строки 

	 СИНТАКСИС ¶ 


	 euse   <опция> [подопция] [флаги] 


	 ОПИСАНИЕ ¶ 


	 Утилита  euse  предназначена для настройки (включения/отключения) USE-флагов в /etc/make.conf без прямого редактирования этого файла. Она используется также для получения подробных сведений о USE-флагах: описание, состояние (включен/отключен), тип флага (глобальный/локальный) и т.д. 


	 ОПЦИИ ¶ 


	 -E, --enable 


	 Включить USE-флаг(и) в файле make.conf. В качестве параметров принимает один или более USE-флагов, через пробел. 


	 -D, --disable 


	 Отключить USE-флаг(и) в файле make.conf. Помещает символ '-' перед именем флага и добавляет его к значению USE, указанному в make.conf. В качестве параметров принимает один или более USE-флагов, через пробел. 


	 -P, --prune 


	 Удаляет USE-флаг(и) из файла make.conf. Удаляет все положительные и отрицательные ссылки на заданные USE-флаги из make.conf. 


	 -i, --info 


	 Выводит подробную информацию о USE-флаге/-ах. Если аргументов не задано, будут отображены сведения по всем флагам. Если заданы один или более аргументов (через пробел), выводимая информация будет относится только к данным флагам. 


	 -I, --info-installed 


	 Аналогично --info за исключением того, что будут отображены и установленные на момент выполнения команды пакеты, использующие данный флаг. 


	 Формат вывода таков:  [- cD ]  alpha - indicates that architecture ...   [-   ]  moznocompose (net-www/mozilla):   Disable building of mozilla's web page composer 


	 Расшифровка индикаторов в первом столбце: 


	 is_active 


	 +, если portage считает флаг активным, иначе -  


	 is_in_env 


	 E, если флаг включен в окружении, e если флаг отключен в окружении, ничего, если окружение не определяет флаг. 


	 is_in_make_conf 


	 C, если флаг включен в make.conf, c, если флаг отключен в make.conf, ничего, если make.conf не определяет флаг. 


	 is_in_make_defaults 


	 D, если флаг включен в make.defaults, d, если флаг отключен в make.defaults, ничего, если make.defaults не определяет флаг. 


	 is_in_make_globals 


	 G, если флаг включен в make.globals, g, если флаг отключен в make.globals, ничего, если make.globals не определяет флаг. За литерой следует имя флага, для локальных флагов - название пакета и, наконец - описания (для локальных флагов - на новой строке). 


	 -a, --active 


	 Отображает все активные USE-флаги и где они активируются (см. описание   --info ). 


	 -h, --help 


	 Отображает страницу справки, в которой перечислены все доступные ключи с их кратким описанием. 


	 -v, --version 


	 Отображает информацию о версии. 


	 ФАЙЛЫ ¶ 


	 /etc/make.conf  /etc/make.profile/make.defaults  /etc/make.globals  $PORTDIR/profiles/use.desc  $PORTDIR/profiles/use.local.desc 


	 АВТОР ¶ 


	 
	 Arun Bhanu < codebear@gentoo.org > (оригинальная версия) 
		 Marius Mauch < genone@gentoo.org > (обновление для новой версии euse) 
		 Jared Hancock (в значительной степени переписана поддержка package.use) 
	 


	 ОШИБКИ ¶ 


	 В настоящее время euse не обрабатывает USE-флаги, которые были включены или отключены через use.defaults, use.mask или package.use. Он не вполне корректно распознает и флаг -*. 


	 СМ. ТАКЖЕ ¶ 


	 ufed(8), 


	 Сценарий  /usr/bin/euse . 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 2004-10-17 







 
 
 
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