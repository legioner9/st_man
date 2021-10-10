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
 
 
 
 suffixes (7) >>  suffixes  (7)   ( Русские man: Макропакеты и соглашения )   suffixes  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

suffixes - список расширений файлов
   
 ОПИСАНИЕ 

Обычно для обозначения содержимого файла используют имена, оканчивающиеся 
сочетанием точки с несколькими последующими символами. Эти сочетания называются
"расширением". Многие стандартные утилиты, например, компиляторы, используют
эти расширения для распознавания типа файла. Утилита
 make (1)

работает с помощью правил, базирующихся на расширении файла.
 

Расширения из следующего списка могут использоваться в системах Linux.
 

 
 Расширение Тип файла 
 
  - резервный файл 
  .C исходный код программы на языке C++, эквивалентно  .cc 
  .F исходный код программы на языке Fortran, содержищий директивы  cpp (1), 
 или файл, "упакованный" с помощью freeze 
  .S исходный код программы на ассемблере с включениями директив  cpp (1) 
  .Y файл, "упакованный" с помощью yabba 
  .Z файл, "упакованный" с помощью   compress (1) 
  .[0-9]+gf обычные шрифты TeX 
  .[0-9]+pk "упакованные" шрифты TeX 
  .[1-9] страницы руководства для соответствующих секций 
  .[1-9][a-z] страницы руководства для соответствующих секций/подсекций 
  .a статически собранная библиотека 
  .ad ресурсный файл по умолчанию для приложений среды X-Window 
  .ada исходный код на языке Ada (может быть и "тело", и спецификация, или их комбинация) 
  .adb "тело" исходного текста программы на языке Ada 
  .ads спецификация исходного текста программы на языке Ada 
  .afm метрики шрифтов PostScript 
  .al самозагружающийся файл Perl 
  .am входной файл для  automake (1) 
  .arc архив  arc (1) 
  .arj архив  arj (1) 
  .asc защищенные PGP ASCII-данные 
  .asm исходный текст программы на ассемблере (GNU) 
  .au звуковой файл 
  .aux вспомогательный файл LaTeX 
  .avi фильм (msvideo) 
  .awk программа на языке AWK 
  .b образ загрузчика для LILO 
  .bak резервный файл 
  .bash скрипт для оболочки  bash (1) 
  .bb простой список данных (block list data),  
 получаемый с помощью gcc -ftest-coverage 
  .bbg простой график данных (block graph data),  
 получаемый с помощью gcc -ftest-coverage 
  .bbl результат работы BibTeX 
  .bdf файл шрифта для X-Window 
  .bib библиографическая база TeX, входные данные для BibTeX 
  .bm исходный текст побитовой карты 
  .bmp битовая карта (например, изображение) 
  .bz2 файл, "упакованный" с помощью  bzip2 (1) 
  .c исходный текст программы на языке С 
  .cat файл каталога сообщений 
  .cc исходный текст программы на языке С++ 
  .cf файл конфигурации 
  .cfg файл конфигурации 
  .cgi программа или скрипт для создания страниц WWW 
  .class байт-код Java 
  .conf файл конфигурации 
  .config файл конфигурации 
  .cpp соответствует  .cc 
  .csh скрипт для оболочки  csh (1) 
  .cxx соответствует  .cc 
  .dat файл данных 
  .deb программный пакет Debian 
  .def модуль определений Modula-2 
  .def другие файлы определений 
  .desc начальная часть почтового сообщения, распакованного с помощью  munpack (1) 
  .diff файл различий (результат работы  diff (1)) 
  .dir файл каталога базы танных dbm 
  .doc файл документации 
  .dsc файл, управляющий исходными пакетыми Debian (Debian Source Control) 
  .dtx исходный текст для пакета LaTeX 
  .dvi аппаратно независимый вывод TeX 
  .el исходный текст программы на Emacs-Lisp 
  .elc байт-код Emacs-Lisp 
  .eps инкапсулированный файл PostScript 
  .exp исходный код Expect 
  .f исходный текст программы на языке Fortran  
  .f77 исходный текст программы на языке Fortran 77 
  .f90 исходный текст программы на языке Fortran 90 
  .fas компилированый код Common-Lisp 
  .fi файл заголовков Fortran 
  .fig файл изображений FIG (используется  xfig (1)) 
  .fmt файл формата для TeX 
  .gif графический формат файлов Compuserve 
  .gmo каталог сообщений формата GNU 
  .gsf шрифт Ghostscript 
  .gz файл, "упакованный" программой  gzip (1) 
  .h файл заголовков для C или C++ 
  .help файл помощи 
  .hf аналогично  .help 
  .hlp аналогично  .help 
  .htm аналогично  .html   
  .html документ HTML, используемый в World Wide Web 
  .hqx 7-битный файл Macintosh 
  .i файл программы на языке C после обработки предпроцессора 
  .icon исходный текст битовой карты (изображения) 
  .idx файл индексов для гипертекста или базы данных 
  .image исходный текст битовой карты (изображения) 
  .in входящий файл, обычно GNU Autoconf 
  .info файл для просмотрщика информации в Emacs 
  .info-[0-9]+ "разрезанный" файл info 
  .ins файл инсталляции пакета LaTeX для docstrip 
  .itcl исходный код itcl; 
 itcl ([incr Tcl]) является OO-расширением tcl 
  .java исходный текст программы на языке Java 
  .jpeg формат Joint Photographic Experts Group 
  .jpg аналогично  .jpeg 
  .kmap раскладка клавиатуры для  lyx (1) 
  .l аналогично  .lex  и  .lisp 
  .lex файлы  lex (1) или  flex (1) 
  .lha архив lharc 
  .lib библиотека Common-Lisp 
  .lisp код программы на языке Lisp 
  .ln файл, используемый  lint (1) 
  .log файл журнала, например, TeX 
  .lsm файл описания программы для Linux Software Map  
  .lsp исходный текст программы на языке Common-Lisp 
  .lzh архив lharc 
  .m исходный код объектного C 
  .m4 исходный текст для  m4 (1) 
  .mac файл макросов для различных программ 
  .man страница руководства (обычно исходный текст, не подвергавшийся форматированию) 
  .map файл карт или раскладок для различных программ 
  .me исходный текст Nroff, используемый пакетом макросов me 
  .mf исходный текст для Metafont (генератора шрифтов TeX) 
  .mgp файл MagicPoint 
  .mm исходный текст для  groff (1) в формате mm 
  .mo двоичный файл каталога сообщений 
  .mod исходный код модулей реализации Modula-2 
  .mov фильм (quicktime) 
  .mp исходный файл Metapost 
  .mp2 файл MPEG Layer 2 (аудио) 
  .mp3 файл MPEG Layer 3 (аудио) 
  .mpeg фильм 
  .o объектный файл 
  .old устаревший или резервный файл 
  .orig резервная (изначальная) версия файла, результат работы  patch (1) 
  .out файл результата, часто исполняемая программа (в формате a.out) 
  .p исходный код программы на языке Pascal 
  .pag файл базы данных dbm 
  .patch файл различий для программы  patch (1) 
  .pbm переносимый формат битовых карт (изображений) 
  .pcf файл шрифта X11 
  .pdf переносимый формат файлов Adobe  
 (используется Acrobat/ acroread  или  xpdf ) 
  .perl исходный текст программы на языке Perl (смотрите .ph, .pl and .pm) 
  .pfa файл определений шрифта PostScripts, формат ASCII 
  .pfb файл определений шрифта PostScripts, двоичный формат 
  .pgp двоичные данные для PGP 
  .ph файл заголовков Perl 
  .php исполняемый файл PHP 
  .php3 исполняемый файл PHP3 
  .pid файл для хранения демона PID (например, crond.pid) 
  .pl файл свойств TeX или файл библиотеки Perl 
  .pm модуль Perl 
  .png файл Portable Network Graphics 
  .po сходный код каталога сообщений 
  .pod файл  perldoc (1) 
  .ppm переносимый формат изображений 
  .pr исходный код побитовой карты 
  .ps файл PostScript 
  .py исходный код Python 
  .pyc байт-код python 
  .qt фильм quicktime 
  .r файл RATFOR (устарело) 
  .rej не принятые программой  patch (1) файлы .patch 
  .rpm программный пакет RedHat 
  .rtf файл Rich Text Format 
  .rules различные правила 
  .s исходный код программы на ассемблере 
  .sa заголовок разделяемых библиотек a.out 
  .sc файл команд для электронных таблиц  sc (1) 
  .scm исходный код Scheme 
  .sed исходный код sed 
  .sgml файл в формате SGML 
  .sh скрипт для  sh (1) 
  .shar архив, созданный с помощью утилиты  shar (1) 
  .so разделяемая библиотека или динамически загружаемый обьект 
  .sql исходный файл команд SQL 
  .sqml схема или запрос SQML 
  .sty файл стилей LaTeX 
  .sym компилированый файл определений Modula-2 
  .tar архив, созданный с помощью утилиты  tar (1) 
  .tar.Z tar (1)-архив, обработанный   compress (1) 
  .tar.bz2 tar (1)-архив, обработанный  bzip2 (1) 
  .tar.gz tar (1)-архив, обработанный  gzip (1) 
  .taz tar (1)-архив, обработанный  compress (1) 
  .tcl исходный код tcl 
  .tex файл TeX или LaTeX 
  .texi аналогично  .texinfo 
  .texinfo файл документации Texinfo 
  .text текстовый файл 
  .tfm файл метрики шрифта TeX 
  .tgz tar-архив, обработанный  gzip (1) 
  .tif аналогично  .tiff   
  .tiff Tagged Image File Format 
  .tk скрипт tcl/tk 
  .tmp временный файл 
  .tmpl файл шаблона 
  .txt аналогично  .text 
  .uu аналогично  .uue 
  .uue двоичный файл, закодированный программой  uuencode (1) 
  .vf файл виртуального шрифта TeX 
  .vpl файл виртуальных свойств TeX 
  .w Silvio Levi's CWEB 
  .wav звуковой файл 
  .web Donald Knuth's WEB 
  .wml исходный файл для Web Meta Language 
  .xbm файл изображения X11 
  .xcf файл изображения GIMP 
  .xml файл eXtended Markup Language 
  .xsl таблица стилей XSL 
  .xpm исходный файл изображения X11 
  .xs файл xsub для Perl, получаемый с помошью h2xs 
  .y файл  yacc (1) или  bison (1) 
  .z файл, упакованный  pack (1) (или старым  gzip (1)) 
  .zip zip (1)-архив 
  .zoo zoo (1)-архив 
  ~ резервный файл  patch (1) или Emacs 
  rc стартовый (`run control') файл, например,  .newsrc 
 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Соответствует основным соглашениям UNIX.
   
 НАЙДЕННЫЕ ОШИБКИ 

Этот список далеко не полон.
   
 СМ. ТАКЖЕ 

 file (1),

 make (1)

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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