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
 
 
 
 ekeyword (1) >>  ekeyword  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
    EKEYWORD ¶ 


	 НАЗВАНИЕ ¶ 


ekeyword - Gentoo: изменяет ключевые слова (KEYWORDS) пакетов 

	 СИНТАКСИС ¶ 


	 ekeyword { архитектура|~архитектура|-архитектура|^архитектура } ебилды 


	 ОПИСАНИЕ ¶ 


	 Эта утилита позволяет легко добавлять или обновлять ключевые слова (KEYWORDS) в сете ебилдов. Аргументы в командной строке обрабатываются в порядке следования; таким образом, ключевые слова последовательно добавляются к текущему списку, и по мере этого обрабатываются ебилды. 


	 Вы можете не указывать определенную архитектуру, а выставить "all", чтобы изменение коснулось всех текущих архитектур ебилда. 


Если вы поставите в начале символ ^, ekeyword удалит указанную архитектуру. 

	 ОПЦИИ ¶ 


	 В настоящее время утилита ekeyword настолько проста, что не предусматривает опций. Возможно, в дальнейшем будут добавлены справочные  --help  и  --version , но на данный момент достаточно для получения этой информации отслеживать версию gentoolkit. 


	 ПРИМЕРЫ ¶ 


	 Пометить одну определенную архитектуру как стабильную: 


  $ ekeyword alpha metalog-0.7-r1.ebuild 
 metalog-0.7-r1.ebuild 
   -KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
   +KEYWORDS="alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
 

	 Обновляя пакет, пометить все пакеты как тестируемые: 


  $ ekeyword ~all metalog-0.7-r2.ebuild 
 metalog-0.7-r2.ebuild 
   -KEYWORDS="alpha amd64 hppa ia64 mips ppc sparc x86" 
   +KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
 

	 Указать, что пакет выдает ошибку на всех архитектурах, кроме одной: 


  $ ekeyword ^all -* ~x86 metalog-0.7-r3.ebuild 
 metalog-0.7-r3.ebuild 
   -KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
   +KEYWORDS="-* ~x86" 
 

	 Выполнить несколько операций сразу: 


  $ ekeyword alpha metalog-0.7-r1.ebuild  
     ~all metalog-0.7-r2.ebuild ^all -* ~x86 metalog-0.7-r3.ebuild 
 metalog-0.7-r1.ebuild 
   -KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
   +KEYWORDS="alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
 metalog-0.7-r2.ebuild 
   -KEYWORDS="alpha amd64 hppa ia64 mips ppc sparc x86" 
   +KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
 metalog-0.7-r3.ebuild 
   -KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~mips ~ppc ~sparc ~x86" 
   +KEYWORDS="-* ~x86" 
 

	 АВТОР ¶ 


	 
	 Aron Griffis < agriffis@gentoo.org >.  Об обнаруженных ошибках сообщайте автору на  http://bugs.gentoo.org/ 
	 


	 ПЕРЕВОД ¶ 


	 
	 Елена Гаврилова < e.vl.gavrilova@yandex.ru > 
	 


	     


	 2009-08-30 







 
 
 
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