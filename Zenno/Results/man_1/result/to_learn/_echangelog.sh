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
 
 
 
 echangelog (1) >>  echangelog  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    echangelog ¶ 


	 НАЗВАНИЕ ¶ 


echangelog - Gentoo: обновляет чейнджлоги (ChangeLogs) портежей 

	 СИНТАКСИС ¶ 


	 echangelog [  текст  ] 


	 ОПИСАНИЕ ¶ 


	 Эта утилита позволяет легко создавать и обновлять чейнджлоги (ChangeLogs) портежей в Gentoo. Она проверяет текущий каталог (предполагается, что это каталог пакета - например, /usr/portage/app-editors/vim), выявляет, какие файлы были изменены или добавлены, и по результатам проверки помещает запись в чейнджлог. Если  текст  в аргументе командной строки отсутствует, echangelog запросит его у пользователя. 


	 Чтобы echangelog мог создать отчет об изменениях, они должны быть произведены до вызова утилиты. Например, вам следует предварительно выполнить cvs add применительно к вашим файлам, в противном случае echangelog не будет знать, что они являются частью обновления. 


	 Если размер вашего текста превышает 80 символов в ширину, он будет автоматически переразбит на строки для удобства обращения к чейнджлогу. Если вам нужно специальное форматирование, то вы можете либо (1) запустить echangelog без текста в командной строке, убедившись, что ваша запись не слишком велика, либо (2) редактировать чейнджлог вручную. Если вы предпочитаете второй способ, мы рекомендуем вам использовать синтаксис вида "echangelog  что-нибудь ", чтобы избежать ошибок в заголовках, затем вручную произвести правку файла и заменить фрагмент  что-нибудь  на текст, который вам нужен в чейнджлоге. 


	 Помимо обновления самого чейнджлога, echangelog автоматически обновляет дату выпуска всех устаревших ебилдов. Эти обновления включаются в перечень изменений, выводимый утилитой echangelog по завершении работы. 


	 ОПЦИИ ¶ 


	 В настоящее время утилита echangelog настолько проста, что не предусматривает опций. Возможно, в дальнейшем будут добавлены справочные  --help  и  --version , но на данный момент достаточно для получения этой информации отслеживать версию gentoolkit. 


	 ПРИМЕРЫ ¶ 


	 Создать чейндждлог для совершенно нового пакета. Заголовок анализируется skel.ebuild. 


  $ cvs add metalog-0.1.ebuild 
 cvs server: use \*(Aqcvs commit\*(Aq to add this file permanently 
 

  $ echangelog \*(AqNew ebuild, thanks to Harvey McGillicuddy\*(Aq 
 --- ChangeLog   1969-12-31 19:00:00.000000000 -0500 
 +++ ChangeLog.new       2003-02-23 14:04:06.000000000 -0500 
 @@ -0,0 +1,9 @@ 
 +# ChangeLog for app-admin/metalog 
 +# Copyright 2000-2003 Gentoo Technologies, Inc.; Distributed under the GPL v2 
 +# $Header$ 
 + 
 +*metalog-0.1 (23 Feb 2003) 
 + 
 +  23 Feb 2003; Aron Griffis <agriffis@gentoo.org> metalog-0.1.ebuild : 
 +  New ebuild, thanks to Harvey McGillicuddy 
 + 
 

	 Обновить до ревизии. Обратите внимание, что предварительно вам необходимо выполнить "cvs add" - в противном случае echangelog не увидит новый файл. 


  $ cvs add metalog-0.1-r1.ebuild 
 cvs server: use \*(Aqcvs commit\*(Aq to add this file permanently 
 

  $ echangelog \*(AqBump revision to fix bug #999\*(Aq 
 --- ChangeLog   2003-02-23 14:04:06.000000000 -0500 
 +++ ChangeLog.new       2003-02-23 14:07:48.000000000 -0500 
 @@ -2,6 +2,11 @@ 
  # Copyright 2000-2003 Gentoo Technologies, Inc.; Distributed under the GPL v2 
  # $Header$ 
 

  +*metalog-0.1-r1 (23 Feb 2003) 
 + 
 +  23 Feb 2003; Aron Griffis <agriffis@gentoo.org> metalog-0.1-r1.ebuild : 
 +  Bump revision to fix bug #999 
 + 
  *metalog-0.1 (23 Feb 2003) 
 

     23 Feb 2003; Aron Griffis <agriffis@gentoo.org> metalog-0.1.ebuild : 
 

	 Если вам нужна запись в несколько строк, опустите текст в аргументе командной строки. 


  $ echangelog 
 Please type the log entry, finish with ctrl-d 
 Bump revision to fix bug #999.  Necessary to bump the revision because 
 the problem appears at run-time, not compile-time.  This should also 
 give users the updated default configuration file. 
 --- ChangeLog   2003-02-23 14:09:12.000000000 -0500 
 +++ ChangeLog.new       2003-02-23 14:12:43.000000000 -0500 
 @@ -2,6 +2,13 @@ 
  # Copyright 2000-2003 Gentoo Technologies, Inc.; Distributed under the GPL v2 
  # $Header$ 
 

  +*metalog-0.1-r1 (23 Feb 2003) 
 + 
 +  23 Feb 2003; Aron Griffis <agriffis@gentoo.org> metalog-0.1-r1.ebuild : 
 +  Bump revision to fix bug #999.  Necessary to bump the revision because 
 +  the problem appears at run-time, not compile-time.  This should also 
 +  give users the updated default configuration file. 
 + 
  *metalog-0.1 (23 Feb 2003) 
 

     23 Feb 2003; Aron Griffis <agriffis@gentoo.org> metalog-0.1.ebuild : 
 

	 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ ¶ 


	 ECHANGELOG_USER 


	 Если echangelog не может определить ваше имя пользователя, чтобы сделать запись, вам нужно задать значение переменной ECHANGELOG_USER.  Например, экспортировать ECHANGELOG_USER="Aron Griffis < agriffis@gentoo.org >" 


	 ПРИМЕЧАНИЯ ¶ 


	 В последних (на момент составления этого руководства) версиях echangelog помещает все новые записи в начало файла, а не ищет в нем соответствующую строку версии. Это связано с тем, что разработчики Gentoo придерживались разных мнений о новом формате чейнджлогов. Разумеется, использование двух разных форматов не может не вызвать проблемы. 


	 Это означает, между прочим, что приведенные выше примеры несколько устарели, поскольку были скопированы из давнишней переписки. Тем не менее мы уверены, что они еще смогут быть вам полезны ;-) 


	 АВТОРЫ ¶ 


	 
	 Aron Griffis < agriffis@gentoo.org >.   Об обнаруженных ошибках сообщайте автору на  http://bugs.gentoo.org/ 
	 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 2009-04-28 







 
 
 
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