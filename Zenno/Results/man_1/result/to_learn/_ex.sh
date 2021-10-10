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
 
 
 
 ex (1)   ex  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   ex  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  ex  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   ex  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   ex  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   ex  (4)   ( FreeBSD man: Специальные файлы /dev/* ) 
 
 
 ex(1) 
 ex(1) 
 
 

 НАЗВАНИЕ 
 ex  - текстовый редактор 

 СИНТАКСИС 
 
   
ex [-s] [-v] [-t  тэг ] [-r  файл ] [-L] [-R] [-x] [-C]  
      [-c  команда ]  файл  ...
 

 ОПИСАНИЕ 
 ex  является базовым в семействе редакторов  ex  и  vi . 
 ex  является надмножеством 
 ed , причем наиболее существенным расширением является возможность 
полноэкранного редактирования. Если у вас есть экранный терминал, имеет 
смысл использовать полноэкранный редактор; в этом случае см. страницу 
справочного руководства  vi(1) .  ex  обрабатывает  символы дополнительного 
набора  (supplementary code set characters) в соответствии с локалью, указанной в 
переменной среды  LC_CTYPE  (см.  LANG  в  environ(5) ). В регулярных 
выражениях поиск шаблонов осуществляется над символами, а не над байтами, 
как описано в  ed(1) . 

       Для пользователей ed 
 Если вы использовали  ed , то обнаружите, что помимо всех команд  ed ,  ex  
предлагает множество дополнительных возможностей, полезных на экранных 
терминалах. На интеллектуальных и высокоскоростных терминалах очень 
удобно работать с  vi . В общем случае, редактор  ex  использует намного больше 
возможностей терминалов, чем  ed , а также использует базу данных 
возможностей терминалов (см.  terminfo(4) ) и тип используемого терминала из 
переменной среды  TERM  для определения того, как эффективно работать с 
терминалом. Редактор использует возможности типа вставки и удаления 
символов и строк в команде  visual  (которую можно сокращать до  vi ), что 
обеспечивает основной режим редактирования при использовании команды  vi . 

 ex  поддерживает ряд возможностей, облегчающих просмотр текста в файле. 
Команда  z  обеспечивает простой доступ к окнам с текстом. Ввод  ^D  (Ctrl-d) 
заставляет редактор прокрутить пол окна текста, что намного удобнее при 
быстром листании файла, чем просто нажатие Enter. Конечно же, экранно-
ориентированный визуальный режим дает постоянный доступ к контексту 
редактирования. 

 ex  выдает подсказки в случае ошибок. Команда отмены ( u ) позволяет отменить 
любое ошибочное изменение.  ex  дает пользователю существенную обратную 
связь, печатая обычно измененные строки и сообщая о командах, 
затрагивающих много строк, чтобы можно было легко выявить ошибочные 
команды. 

 Редактор также обычно предотвращает перезапись существующих файлов, если 
только они не редактируются, чтобы вы не перезаписали случайно не тот файл. 
Если система (или редактор) аварийно прекращает работу, или случайно 
отключается терминал, можно использовать команду восстановления ( recover ) 
или опцию  -r файл  для получения последних изменений. При этом 
восстанавливается состояние, отличающееся не более, чем на несколько строк, 
от имевшегося в момент сбоя. 

 ex  имеет ряд возможностей для одновременной работы с несколькими файлами. 
Можно указать редактору список файлов в командной строке и использовать 
команду перехода к следующему файлу  next (n)  для работы с ними по очереди. 
Команде next также можно задать список имен файлов или шаблон, 
аналогичный используемым командным интерпретатором, для задания нового 
набора обрабатываемых файлов. В общем случае, имена файлов в редакторе 
могут формироваться с использованием всех соответствующих метасимволов 
командного интерпретатора. Кроме того, при формировании имен файлов 
можно использовать метасимвол ' % ', который заменяется именем текущего 
файла. 

 Редактор имеет набор буферов, имена которых представляют собой строчные 
буквы ( a-z ). Можно помещать текст в эти именованные буферы, из которых его 
можно в дальнейшем вставить в другое место в файле. Содержимое этих 
буферов остается доступным и после начала редактирования нового файла с 
помощью команды  edit  ( e ). 

 Команда  &  в  ex  повторяет последнюю команду подстановки. Кроме того, 
имеется команда подстановки с подтверждением. Вы задаете диапазон, в 
котором необходимо выполнить подстановки, а редактор интерактивно 
запрашивает подтверждение необходимости каждой конкретной подстановки. 

 При поиске и подстановках можно игнорировать регистр символов.  ex  позволяет 
легко строить регулярные выражения, которые будут сопоставляться со словами. 
Это удобно, например, при поиске слова  " edit ", если документ содержит также 
слова " editor ". 

 ex  имеет множество опций, которые пользователь может настраивать по своему 
вкусу. Одна из очень полезных опций - автоматическое выравнивание 
( autoindent ), когда редактор сам вставляет начальные пробелы для 
автоматического выравнивания текста. Затем можно использовать  ^D  в качестве 
обратной табуляции и пробел или клавишу табуляции для перемещения вперед, 
что позволяет легко добиться нужного выравнивания нового кода. 

 К многочисленным полезным возможностям относится также интеллектуальная 
команда соединения строк ( join  -  j ), автоматически вставляющая пробел между 
соединяемыми строками, команды  <  и  > , сдвигающие группы строк, а также 
возможность фильтровать части буфера с помощью команд типа  sort . 

       Опции командной строки 
 Следующие опции командной строки интерпретируются редактором ex (ранее 
задокументированные опции рассматриваются в разделе  "ПРИМЕЧАНИЯ"  в 
конце этой страницы справочного руководства): 

 
 -s 
 
Подавляет выдачу всех интерактивных сообщений 
пользователю. Это полезно при обработке сценариев 
редактирования. 
 -v 
 Вызывает  vi . 
 -t тэг 
 
Редактирует файл, содержащий  тэг , и устанавливает редактор в 
позицию, соответствующую определению тэга.  Примечание:  
тэги в файле тэгов должны идти в порядке возрастания 
номеров строк. 
 -r файл 
 
Редактирует файл после сбоя редактора или системы. 
(Восстанавливает версию файла, которая была в буфере в 
момент возникновения сбоя.) 
 -L 
 
Выдает имена всех файлов, сохраненных в результате сбоя 
редактора или системы. 
 -R 
 
Режим только для чтения; устанавливается флаг только для 
чтения, предотвращающий случайную перезапись файла. 
 -x 
 
Опция шифрования; в случае ее использования,  ex  имитирует 
команду X и предлагает пользователю ввести ключ. Этот ключ 
используется для шифрования и дешифрования текста с 
помощью алгоритма команды  crypt . Команда  X  сама 
определяет, является ли прочитанный текст зашифрованным 
или нет. Временный файл буфера также шифруется с 
использованием преобразованной версии введенного 
пользователем ключа. См.  crypt(1) . См. также раздел 
 "ПРИМЕЧАНИЯ"  в конце данной страницы справочного 
руководства. 
 -C 
 
Опция шифрования; то же, что и опция  -x , но  ex  имитирует 
команду  C . Команда  C  аналогична команде  X , но любой 
прочитанный текст считается зашифрованным. 
 -c команда 
 
Начинает редактирование с выполнения указанной  команды  
редактора (обычно, команды поиска или позиционирования). 
 

 Аргумент  файл  задает один или несколько файлов для редактирования. 

       Режимы ex 
 
 Командный режим 
 Обычный и первоначальный режим. В качестве приглашения 
для ввода выдается двоеточие ( : ). Символ удаления строки 
позволяет отменить частично введенную команду. 
 Режим вставки 
 Активизируется командами  a ,  i  или  c . Можно вводить 
произвольный текст. Из состояния вставки можно выйти 
нормально, введя строку, содержащую только точку " . ", или 
аварийно с помощью прерывания. 
 Визуальный режим 
 Активизируется командой  vi ; чтобы выйти из этого режима, 
введите  Q  или  ^\  ( Ctrl-\ ). 
 

       Имена и сокращения команд ex 

 
 
 
 abbrev 
 ab 
 map 
   
 set 
 se 
 
 
 append 
 a 
 mark 
 ma 
 shell 
 sh 
 
 
 args 
 ar 
 move 
 m 
 source 
 so 
 
 
 change 
 c 
 next 
 n 
 substitute 
 s 
 
 
 copy 
 co 
 number 
 nu 
 unabbrev 
 unab 
 
 
 delete 
 d 
 preserve 
 pre 
 undo 
 u 
 
 
 edit 
 e 
 print 
 p 
 unmap 
 unm 
 
 
 file 
 f 
 put 
 pu 
 version 
 ve 
 
 
 global 
 g 
 quit 
 q 
 visual 
 vi 
 
 
 insert 
 i 
 read 
 r 
 write 
 w 
 
 
 join 
 j 
 recover 
 rec 
 xit 
 x 
 
 
 list 
 l 
 rewind 
 rew    
 yank 
 ya 
 
 

       Команды ex 

 
 
 
 принудительное шифрование 
 C 
 эвристическое шифрование 
 X 
 
 повторная подстановка 
 & 
 печать следующей 
 CR 
 
 сдвиг вправо 
 > 
 сдвиг влево 
 < 
 
 прокрутка 
 ^D 
 окно 
 z 
 
 выход в shell 
 ! 
   
   
 
 

       Адреса команд ex 

 
 
 
 n 
 строка  n 
 /шаблон 
 следующая с  шаблоном 
 
 . 
 текущая строка 
 ?шаблон 
 предыдущая с  шаблоном 
 
 $ 
 последняя строка 
 x-n 
 за  n  до  x 
 
 + 
 следующая строка 
 x,y 
 с  x  по  y 
 
 - 
 предыдущая строка 
 'x 
 помеченная символом  x 
 
 +n 
 на  n  вперед 
 " 
 предыдущий контекст 
 
 % 
 1,$ 
   
   
 
 

       Опции инициализации 
 
 
 
 EXINIT 
 В этой переменной среды можно задавать установки   set 
 
 $HOME/.exrc 
 файл инициализации редактора 
 
 ./.exrc 
 файл инициализации редактора 
 
 set x 
 включает опцию  x 
 
 set nox 
 отключает опцию  x 
 
 set x=val 
 задает значение  val  для опции  x 
 
 set 
 показывает измененные опции 
 
 set all 
 показывает все опции 
 
 set x? 
 показывает значение опции  x 
 
 

       Самые полезные опции и их сокращения 

 
 
 
 autoindent 
 ai 
 использовать выравнивание 
 
 autowrite 
 aw 
 записывать файлы перед изменением 
 
 directory 
   
 путь к каталогу для временных рабочих файлов 
 
 exrc 
 ex 
 позволяет  vi / ex  читать файл  .exrc  в текущем 
каталоге. Эта опция устанавливается в переменной 
среды  EXINIT  или в файле  .exrc  в каталоге 
 $HOME . 
 
 ignorecase 
 ic 
 игнорировать регистр символов при сканировании (поиске) 
 
 list 
   
 выдавать  ^I  вместо символов табуляции и  $  в конце строки 
 
 magic 
   
 рассматривать  . [ *  как специальные символы в 
шаблонах 
 
 modelines 
   
 первые пять строки и последние пять строк 
выполняются как команды  vi / ex , если они имеют 
вид  ex:команда:  или  vi:команда: 
 
 number 
 nu 
 нумеровать строки 
 
 paragraphs 
 para 
 макроимена для начала абзацев 
 
 redraw 
   
 имитировать интеллектуальный терминал 
 
 report 
   
 информировать пользователя, если количество 
измененных последней командой строк превосходит 
значение переменной  report 
 
 scroll 
   
 строки командного режима 
 
 sections 
 sect 
 макроимена для начала разделов 
 
 shiftwidth 
 sw 
 величина сдвига для команд  < ,  >  и  ^D 
 
 showmatch 
 sm 
 показывать соответствующую скобку  )  и  }  при наборе 
 
 showmode 
 smd 
 показывать режим вставки в  vi 
 
 slowopen 
 slow 
 приостановить изменения в ходе вставки 
 
 window 
   
 количество строк визуального режима 
 
 wrapmargin 
 wm 
 автоматическое разбиение строки 
 
 wrapscan 
 ws 
 продолжать поиск с начала (с конца) буфера 
 
 

       Формирование шаблонов сканирования 
 
 
 
 ^ 
 начало строки 
 
 $ 
 конец строки 
 
 . 
 любой символ 
 
 \< 
 начало слова 
 
 \> 
 конец слова 
 
 [строка] 
 любой символ, входящий в  строку 
 
 [^строка] 
 любой символ, не входящий в  строку 
 
 [x-y] 
 любой символ между  x  и  y 
 
 * 
 любое количество вхождений предыдущего символа 
 
 

 АВТОР 
 vi  и  ex  базируются на программном обеспечении, разработанном в 
Калифорнийском университете в Бэркли, отделение компьютерных наук, 
Department of Electrical Engineering and Computer Science. 

 ФАЙЛЫ 
 
 /usr/lib/exstrings 
 сообщения об ошибках 
 /usr/lib/exrecover 
 команда восстановления 
 /usr/lib/expreserve 
 команда сохранения 
 /usr/share/lib/terminfo/* 
 описывают возможности терминалов 
 $HOME/.exrc 
 файл инициализации редактора 
 ./.exrc 
 файл инициализации редактора 
 /tmp/Ex nnnnn 
 временный файл редактора 
 /tmp/Rx nnnnn 
 временный файл именованного буфера 
 /var/preserve/ 
 каталог для сохранения регистрационных имен 
 /usr/lib/locale/локаль/LC_MESSAGES/uxed.abi 
 файл сообщений для текущего языка (См.  LANG  
в  environ(5) .) 
 

 ССЫЛКИ 
 
	 crypt(1) ,
	 ctags(1) ,
	 curses(3curses) ,
	 ed(1) ,
	 edit(1) ,
	 grep(1) ,
	 sed(1) ,
	 sort(1) ,
	 term(4) , 
	 terminfo(4) ,
	 vi(1) 
 

 ПРИМЕЧАНИЯ 

 Ряд опций, хотя и продолжают поддерживаться, были заменены в документации 
опциями, соответствующими  стандарту синтаксиса команд  (Command Syntax 
Standard, см.  intro(1) ). Опция  -  была заменена на  -s , опция  -r , после которой не 
идет аргумент, была заменена на  -L , а команда  +  была заменена командой  -c . 

 Опции шифрования и соответствующие команды поставляются в составе пакета 
 утилит шифрования  (Encryption Utilities), который доступен только в 
Соединенных Штатах. 

 Команда  z  учитывает количество логических, а не физических строк. Если 
имеются длинные строки, результат может быть больше одного экрана. 

 Если использована опция  -s , имена файлов в сообщениях об ошибках 
ввода/вывода не выдаются. 

 Нет простого способа выполнить одиночное сканирование, игнорируя регистр 
символов. 

 Редактор не предупреждает пользователя, если помещенный в поименованные 
буферы текст не использован перед выходом из редактора. 

 Пустые символы во вводимых строках игнорируются и не попадают в 
результирующие файлы. 

 Copyright 1994 Novell, Inc. 
Copyright 2000  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
  

 
 
 
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