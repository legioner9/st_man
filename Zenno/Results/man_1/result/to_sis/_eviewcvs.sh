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
 
 
 
 eviewcvs (1) >>  eviewcvs  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    EVIEWCVS ¶ 


	 НАЗВАНИЕ ¶ 


eviewcvs - Gentoo: генерирует URL для ViewCVS 

	 СИНТАКСИС ¶ 


	 eviewcvs [  файлы  ] 


	 ОПИСАНИЕ ¶ 


	 Утилита генерирует список URL для ViewCVS на основе перечисленных в аргументе файлов или, если аргумента нет, файлов в текущем каталоге. Первая часть вывода (выделена зеленым цветом) представляет собой ссылки, позволяющие просмотреть сами файлы. Вторая часть вывода (выделена синим цветом) содержит ссылки, позволяющие отследить разницу между последней ревизией и текущим состоянием. 


	 ОПЦИИ ¶ 


	 В настоящее время утилита eviewcvs настолько проста, что не предусматривает опций. Возможно, в дальнейшем будут добавлены справочные  --help  и  --version , но на данный момент достаточно для получения этой информации отслеживать версию gentoolkit. 


	 ПРИМЕРЫ ¶ 


	 Чтобы сгенерировать ссылки для ViewCVS для определенного файла, выполните: 


  $ eviewcvs package.mask
 http://www.gentoo.org/cgi-bin/viewcvs.cgi/profiles/package.mask?rev=1.3716&content-type=text/vnd.viewcvs-markup 
 http://www.gentoo.org/cgi-bin/viewcvs.cgi/profiles/package.mask?r1=1.3715&r2=1.3716 
 

	 Чтобы сгенерировать ссылки для ViewCVS для всех файлов в каталоге, выполните: 


  $ cd portage/net-misc/keychain 
 $ eviewcvs 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/ChangeLog?rev=1.54&view=markup 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/Manifest?rev=1.86&view=markup 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/keychain-2.6.1.ebuild?rev=1.3&view=markup 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/keychain-2.6.2.ebuild?rev=1.1&view=markup 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/metadata.xml?rev=1.3&view=markup 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/ChangeLog?r1=1.53&r2=1.54 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/Manifest?r1=1.85&r2=1.86 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/keychain-2.6.1.ebuild?r1=1.2&r2=1.3 
 http://sources.gentoo.org/viewcvs.py/gentoo-x86/net-misc/keychain/metadata.xml?r1=1.2&r2=1.3 
 

	 АВТОР ¶ 


	 
	 Aron Griffis < agriffis@gentoo.org > Об обнаруженных ошибках сообщайте автору на  http://bugs.gentoo.org/ 
	 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 2009-05-06 







 
 
 
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