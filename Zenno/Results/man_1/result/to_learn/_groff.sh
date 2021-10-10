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
 
 
 
 groff (1)   groff  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  groff  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   groff  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   groff  (7)   ( FreeBSD man: Макропакеты и соглашения )   groff  (7)   ( Linux man: Макропакеты и соглашения ) Ключ  groff  обнаружен в базе ключевых слов. 
 
   
 НАЗВАНИЕ 

 
groff - front end приложение для системы форматирования
документов groff
 
   
 СИНТАКСИС 

 
 groff  [  -tpeszaivhblCENRSVXZ  ] [  -wимя  ] [  -Wимя  ] [  -mимя 
] [  -Fкаталог  ] [  -Tустройство  ] [  -ffam  ] [  -Mкаталог  ] [
 -dcs  ] [  -rcn  ] [  -nчисло  ] [  -oсписок  ] [  -Pагрумент  ] [
 файлы ... ]
 
   
 ОПИСАНИЕ 

 
 groff  это front-end приложение для системы форматирования
документов groff. Обычно он запускает программу  troff  и
постпроцессор соответствующий выбранному устройству.
Доступные устройства это:
<description>
 
 
 ps   
 
     Для принтеров PostScript и смотрелок этого формата
 
 dvi   
 
    Для формата TeX dvi
 
 X75   
 
    Для препросмотра в разрешении 75 dpi в X11
 
 X100   
 
Для препросмотра в разрешении 100dpi в X11
</descrip>
<p>
 ascii  Для устройств типа печатная машинка
 
 latin1  Для устройств типа печатная машинка, использующих
набор символов ISO Latin-1.
 
 Постпроцессор,  
 
который будет использован для того или
иного устройства задается командой  postpro  в файле
описания устройства. Данное описание может быть перекрыто
опцией  -X . 
 
По умолчанию выбирается устройство  ps . Может
осуществляться необязательная препроцессорная обработка
через  pic ,  eqn ,  tbl ,  refer , или  soelim. 
 
 Опции (если нет какого-либо аргумента  
 
между ними) могут
быть сгруппированы при обязательном использовании перед
набором опций одиночного символа  - . Имя файла
соответствующее  -  означает стандартный ввод.
 
Команда  grog  может быть использована для попытки
угадывания корректной команды groff для того или иного
формата файла.
 
 ОПЦИИ 
 
 -h   
 
     Выдает краткую подсказку.
 
 -e   
 
     Препроцессорная обработка с eqn.
 
 -t   
 
     Препроцессорная обработка с tbl.
 
 -p   
 
     Препроцессорная обработка с pic.
 
 -s   
 
     Препроцессорная обработка с soelim.
 
 -R   
 
     Препроцессорная обработка с refer. Не
предоставляется никакого механизма для обработки
аргументов по  refer  потому что множество опций
refer эквивалентно командам, которые могут быть
включены в файл. Смотрите  refer (1) 
  для
подробностей.
 
 -v   
 
     Запуск программ системы  groff  для получения номеров
их версий.
 
 -V   
 
     Выдавать конвеер на стнандартый вывод вместо его
запуска.
 
 -z   
 
     Подавлять вывод от программы  troff . Будут
выдаваться только сообщения об ошибках.
 
 -Z   
 
     Не делать постпроцессорную обработку командой
 troff . Обычно  groff  автоматически запускает
соответствующий построцессор.
 
 -Pаргумент 
 
Обработать  аргумент  для построцессора. Каждый
новый аргумент должен быть указан с отдельной
опцией  -P .  Заметим, что  groff  не считает  агументом 
перед его анализом для постпроцессора.
 
 -l   
 
     Посылает вывод на принтер. Эта команда использует
параметры команды  print  в файле описания
устройства.
 
 -Lаргумент 
 
Обрабатывает  аргумент  для спулера. Каждый новый
аргумент должен быть указан с отдельной опцией  -L . 
Заметим, что  groff  не считает  -   агументом  перед его
анализом для постпроцессора.
 
 -Tустройство 
 
Подготавливает вывод для устройства  устройство . По
умолчанию выбирается устройство  ps .
 
 -X   
 
     Препросмотр командой  gxditview  вместо использования
постпроцессора.  Groff  запускает  gxditview  с опцией
 -printCommand  которая выполняте действие  Print  как
будто бы  groff  был запущен с опцией  -l . 
Маловероятно, что это даст хорошие результаты за
исключением случая  -Tps .
 
 -N   
 
     Не разрешает символы новой строки быть с
разделителями eqn. Это выглядит также с опцией  -N 
в  eqn .
 
 -S   
 
     Безопастный режим. Использование опции  -S  для  pic  и
использовани макроса  -msafer  с  troff .
 
 -a 
 
-b
-i
-C
-E
-wимя
-Wимя
-mимя
-oсписок
-dcs
-rcn
-Fкаталог
-Mкаталог
-ffam
-nчисло 
Все это описывается в  troff (1)
 

 
 ПЕРЕМЕННЫЕ ОКРУЖЕНИЯ 
 
GROFF_COMMAND_PREFIX 
Если установлена в  X , то  groff  будет запускать
 Xtroff  вместо  troff . От также также позволяет
работать с  tbl ,  pic ,  eqn ,  refer  и  soelim . Он не
позволяет рабоать с  grops ,  grodvi ,  grotty  и
 gxditview .
 
 GROFF_TMAC_PATH 
 
Разделенный двоеточиями список каталогов в которых
будет производится поиск файлов с макросами.
 
 GROFF_TYPESETTER 
 
Устройство по умолчанию.
 
 GROFF_FONT_PATH 
 
Разделенный двоеточиями список каталогов в которых
будет производится поиск  имен_устройств. 
 
 PATH   
 
Путь поиска команд запускаемых программой  groff .
 
 GROFF_TMPDIR 
 
Каталог, в котором будут создаваться временные
файлы Если он не задан, но установлена  TMPDIR  то
временные файлы будут создаваться в этом каталоге.
В противном случае временные фалйы будут
создаваться в каталоге  /tmp . Команды  grops (1) 
  и
 refer (1) 
  могут создавать временные файлы.
 
 ФАЙЛЫ 
 
/usr/share/groff/font/devимя/DESC 
Файл описаний устройств для  имя .
 
 /usr/share/groff/font/devимя/F 
 
Файл шрифтов для шрифта  F  устройства  имя .
 
 АВТОР 
 
James Clark < jjc@jclark.com >
 
 БАГИ 
 
Сообщайте о багах на  bug-groff@prep.ai.mit.edu . Включайте
в сообщение пример, который позволяет увидет баг и
сообщите какую версию groff вы используете.
 
 
   
 ПРАВА 

 
Copyright 1989, 1990, 1991, 1992 Free Software Foundation,
Inc.
 
groff это свободное программное обеспечение; вы можете
распостранять его и/или изменять его согдасно условиям GNU
General Public License опубликованной Free Software Foundation;
версии 2, или (на ваше усмотрение) любой более
поздней версии.
 
groff распостраняется в том виде в каком он может быть
использован, но БЕЗ КАКИХ-ЛИБО ГАРАНТИЙ; даже без неявных
гарантий на ПРОДАННУЮ версию или гарантий ЧТО ОН ВООБЩЕ НА
ЧТО-ТО ГОДЕН. Смотрите GNU General Public License для
подробностей.
 
Вы должны иметь копию GNU General Public License вместе с
groff; смотрите файл COPYING. Если его нет, пишите в Free
Software Foundation, 59 Temple Place - Suite 330, Boston,
MA 02111-1307, USA.
 
 
 ДОСТУПНОСТЬ 
 
Самая свежая версия groff всегда доступна по имени anonymous
на ftp с адресом prep.ai.mit.edu (18.71.0.38) в
каталоге pub/gnu.
 
 ПЕРЕВОД 
 
 Перевел  
 
      с английского Виктор Вислобоков
(2:5054/ 8.34@Fidonet )
 
 СМОТРИТЕ ТАКЖЕ 
 
 grog (1) 
,  troff (1) 
,  tbl (1) 
,  pic (1) 
,  eqn (1) 
,  soelim (1)
,
 refer (1) 
,  grops (1) 
,  grodvi (1) 
,  grotty (1) 
,  gxditview (1) 
,
 groff_font (5) 
,  groff_out (5) 
,  groff_ms (7) 
,  me (7) 
,
 groff_char (7) 
,  msafer (7) 
 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРАВА 
 
 
 
 
 
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