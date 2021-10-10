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
 
 
 
 colordiff (8) >>  colordiff  (8)   ( Русские man: Команды системного администрирования ) 
{{header}}
{{translator-igorchubin}}
Оригинал:  http://colordiff.sourceforge.net/colordiff.html 
 
Эта страница является переводом официальной man-страницы программы  colordiff , предназначенной для раскрашивания 
вывода  diff . 
   
 Имя 

 

 
colordiff  инструмент для раскрашивания вывода diff
 
   
 Синтаксис 

 

colordiff [diff options] {file1} {file2}
 
   
 Описание 

 

 
colordiff is a wrapper for diff and produces the same output as diff but with coloured syntax highlighting at the command 
line to improve readability. The output is similar to how a diff-generated patch might appear in Vim or Emacs with the appropriate 
syntax highlighting options enabled. The colour schemes can be read from a central configuration file or from a local user 
~/.colordiffrc file. 
colordiff makes use of ANSI colours and as such will only work when ANSI colours can be used - typical examples are xterms 
and Eterms, as well as console sessions. 
colordiff has been tested on various flavours of Linux and under OpenBSD, but should be broadly portable to other systems. 
 
   
 Использование 

 

 
Use colordiff wherever you would normally use diff, or pipe output to colordiff:
 
Например:
 
 
 
$ colordiff file1 file2
$ diff -u file1 file2 | colordiff

 

 

 
You can pipe the output to 'less', using the '-R' option (some systems or terminal types may get better results using '-r' 
instead), which keeps the colour escape sequences, otherwise displayed incorrectly or discarded by 'less': 
 
 
$ diff -u file1 file2 | colordiff | less -R

 

 

 
If you have wdiff installed, colordiff will correctly colourise the added and removed text, provided that the '-n' option 
is given to wdiff: 
 
 
$ wdiff -n file1 file2 | colordiff

 

 

 
You may find it useful to make diff automatically call colordiff. Add the following line to ~/.bashrc (or equivalent): 
 
 
alias diff=colordiff

 

 

 
Any options passed to colordiff are passed through to diff.
 
Alternatively, a construct such as 'cvs diff SOMETHING | colordiff' can be included in ~/.bashrc as follows: 
 
 
function cvsdiff () { cvs diff $@ | colordiff; }

 

 

 
Or, combining the idea above using 'less':
 
 
 
function cvsdiff () { cvs diff $@ | colordiff |less -R; }

 

 

 
Имя функции, cvsdiff, может быть любым.
 
   
  Файлы  

 

 
 
 /etc/colordiffrc 

 
 
 
Central configuration file. User-specific settings can be enabled by copying this file to ~/.colordiffrc and making 
the appropriate changes. .RE
 
 
 colordiffrc-lightbg 

 
 
 
Alternate configuration template for use with terminals having light backgrounds. Copy this to /etc/colordiffrc or ~/.colordiffrc 
and customize. .RE
 
 
 
 
 
   
  Баги  

 

 
Баг-репорты, замечания и пожелания, пожалуйста, отправляйте на < davee@sungate.co.uk >.
 
   
  Автор  

 

 
colordiff написал и сопровождает Дэйв Юарт (Dave Ewart) < davee@sungate.co.uk >. Эту страницу написал Грэхам Уилсон (Graham 
Wilson) < graham@mknod.org > для Debian. Она теперь сопровождается автором. Дэйв Юарт сопровождает и пакет для Debian; 
спонсор этого пакета Грэхам Уилсон. 
   
  Перевод  

 

 
 

   *  Игорь Чубин <igor ar chub.in>
c
 

 
   Index 
 
 Имя 
 Синтаксис 
 Описание 
 Использование 
  Файлы  
  Баги  
  Автор  
  Перевод  
 
 
 
 
 
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