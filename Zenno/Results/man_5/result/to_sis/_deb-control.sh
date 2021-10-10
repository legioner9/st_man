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
 
 
 
 deb-control (5) >>  deb-control  (5)   ( Русские man: Форматы файлов )   deb-control  (5)   ( Linux man: Форматы файлов ) 
   
 НАЗВАНИЕ 

deb-control -- формат мастер файла control пакетов Debian
   
 СИНТАКСИС 

control
   
 ОПИСАНИЕ 

Each Debian package contains the master `control' file, which contains a
number of fields, or comments when the line starts with  '#' . Each field
begins with a tag, such as  Package  or  Version  (case insensitive),
followed by a colon, and the body of the field.  Fields are delimited only
by field tags. In other words, field text may be multiple lines in length,
but the installation tools will generally join lines when processing the
body of the field (except in the case of the  Description  field, see
below).
   
 ОБЯЗАТЕЛЬНЫЕ ПОЛЯ 

 
 Package:  <имя пакета> 
Значение этого поля задаёт имя пакета и используется при конструировании
имён файлов большинством установочных утилит.
 Version:  <строка с версией> 
Typically, this is the original package's version number in whatever form
the program's author uses. It may also include a Debian revision number (for
non-native packages). If both version and revision are supplied, they are
separated by a hyphen, `-'. For this reason, the original version may not
have a hyphen in its version number.
 Maintainer:  <полное имя и адрес эл.почты> 
Тело поля должно быть в формате `Joe Bloggs < jbloggs@foo.com >' и
обычно представляет собой имя создателя пакета, а не имя автора программы,
которая была упакована.
 Description:  <короткое описание> 
   <длинное описание>
 

The format for the package description is a short brief summary on the first
line (after the "Description" field). The following lines should be used as
a longer, more detailed description. Each line of the long description must
be preceded by a space, and blank lines in the long description must contain
a single '.' following the preceding space.
 
   
 НЕОБЯЗАТЕЛЬНЫЕ ПОЛЯ 

 
 Section:  <секция> 
Это обобщающее поле, в котором пакету присваивается категория, в зависимости
от типа программного обеспечения, которое он содержит. Примерами секций
могут служить `utils', `net', `mail', `text', `x11' и т.д.
 Priority:  <приоритет> 
Устанавливает важность данного пакета, в зависимости от его значимости для
системы. Приоритеты могут быть такими: `required', `standard', `optional',
`extra' и т.д.
 
 

In Debian, the  Section  and  Priority  fields have a defined set of
accepted values based on the Policy Manual.  They are used to decide how the
packages are layed out in the archive.  A list of these values can be
obtained from the latest version of the  debian-policy  package.
 
 Essential:  <yes|no> 
Данное поле обычно необходимо только когда ответ - `yes' (да). Это означает,
что данный пакет требуется для нормального функционирования системы. Dpkg и
другие программы установки не разрешают удаление пакетов, помеченных как
 Essential  (по крайней мере, без указания специальных флагов).
 Architecture:  <архитектура|all> 
The architecture specifies which type of hardware this package was compiled
for. Common architectures are `i386', `m68k', `sparc', `alpha', `powerpc'
etc. Note that the  all  option is meant for packages that are architecture
independent. Some examples of this are shell and Perl scripts, and
documentation.
 Source:  <имя архивов с исходниками> 
Имя пакета с исходниками, из которого компилируется бинарный пакет, если оно
отличается от имени самого пакета.
 Depends:  <список пакетов> 
Список пакетов, требующихся для обеспечения нормальной работы данного
пакета. Программа установки не позволит (по крайней мере, без использования
специальных флагов) установить данный пакет, если пакеты, перечисленные в
 Depends , ещё не установлены. При установке скрипты postinst этих пакетов
будут выполнены перед скриптом postinst данного пакета, а при удалении из
системы скрипты prerm будут выполнены после скрипта prerm данного пакета.
 Pre-Depends:  <список пакетов> 
Список пакетов, которые должны быть установлены  и  настроены перед тем,
как будет устанавливаться данный пакет. Обычно это используется в случае,
когда пакет требует наличия другого пакета для запуска собственного сценария
preinst.
 Recommends:  <список пакетов> 
Список пакетов, которые рекомендуется установить вместе с данным
пакетом. Программа установки предупредит пользователя, если он устанавливает
пакет без пакетов, которые перечислены в поле  Recommends .
 Suggests:  <список пакетов> 
Список пакетов, которые расширяют функциональность устанавливаемого пакета,
но без которых данный пакет может прекрасно обойтись.
 
 

The syntax of  Depends ,  Pre-Depends ,  Recommends  and  Suggests 
fields is a list of groups of alternative packages. Each group is a list of
packages separated by vertical bar (or `pipe') symbols, `|'. The groups are
separated by commas. Commas are to be read as `AND', and pipes as `OR', with
pipes binding more tightly. Each package name is optionally followed by a
version number specification in parentheses.
 

Если номер версии начинается с `>>', то это означает любую более
позднюю версию, при чём также может быть задан или пропущен номер ревизии
Debian (который отделен от версии дефисом). Таким образом: ">>"
означает "больше чем", "<<" -- "меньше чем", ">=" -- "больше или
равно чем", "<=" -- "меньше или равно чем", а "=" -- "только версия,
которая указана".
 
 Conflicts:  <список пакетов> 
Список пакетов, которые конфликтуют с пакетом; например, если в них
содержатся файлы с теми же именами. Программа установки не позволит
установить в систему два конфликтующих пакета. Каждый из двух конфликтующих
пакетов должен указать в строке  Conflicts  имя другого.
 Replaces:  <список пакетов> 
Список пакетов, которые заменяют данный пакет. Он используется для того,
чтобы разрешить данному пакету перезаписать файлы другого пакета и обычно
используется совместно с полем  Conflicts , чтобы сразу же заставить
удалить этот другой пакет, если он содержит такие же файлы, как
устанавливаемый.
 Provides:  <список пакетов> 
This is a list of virtual packages that this one provides. Usually this is
used in the case of several packages all providing the same service.  For
example, sendmail and exim can serve as a mail server, so they provide a
common package (`mail-transport-agent') on which other packages can
depend. This will allow sendmail or exim to serve as a valid option to
satisfy the dependency. This prevents the packages that depend on a mail
server from having to know the package names for all of them, and using `|'
to separate the list.
 
 

Синтаксис  Conflicts ,  Replaces  и  Provides  позволяет перечислить
пакеты через запятую (и необязательный пробел). В поле  Conflicts  запятая
читается как `ИЛИ'. В значениях полей  Conflicts  и  Replaces  можно
указывать номер версии пакета (используя вышеописанный синтаксис).
   
 ПРИМЕР 


 # Comment
Package: grep
Essential: yes
Priority: required
Section: base
Maintainer: Wichert Akkerman < wakkerma@debian.org >
Architecture: sparc
Version: 2.4-1
Pre-Depends: libc6 (>= 2.0.105)
Provides: rgrep
Conflicts: rgrep
Description: GNU grep, egrep and fgrep.
 The GNU family of grep utilities may be the "fastest grep in the west".
 GNU grep is based on a fast lazy-state deterministic matcher (about
 twice as fast as stock Unix egrep) hybridized with a Boyer-Moore-Gosper
 search for a fixed string that eliminates impossible text from being
 considered by the full regexp matcher without necessarily having to
 look at every character. The result is typically many times faster
 than Unix grep or egrep. (Regular expressions containing backreferencing
 will run more slowly, however).
 


   
 SEE ALSO 

 deb (5),  dpkg (1),  dpkg-deb (1).
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < victor_v@permonline.ru >
Обновление и корректура: Alexey Mahotkin < alexm@hsys.msk.ru >.
Юрий Козлов < y_kozlov@chat.ru >.
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОБЯЗАТЕЛЬНЫЕ ПОЛЯ 
 НЕОБЯЗАТЕЛЬНЫЕ ПОЛЯ 
 ПРИМЕР 
 SEE ALSO 
 ПЕРЕВОД 
 
 
 
 
 
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