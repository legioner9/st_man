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
 
 
 
 gview (1)   gview  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  gview  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   gview  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

vim - Vi IMproved (Улучшенный Vi), текстовый редактор для программистов
   
 КОМАНДНАЯ СТРОКА 

 

 vim 

[ключи] [файл ..]
 

 vim 

[ключи] -
 

 vim 

[ключи] -t метка
 

 vim 

[ключи] -q [файл ошибок]
 

 

 ex 

 

 view 

 

 gvim 

 gview 

 

 rvim 

 rview 

 rgvim 

 rgview 

   
 ОПИСАНИЕ 

 Vim 

-- текстовый редактор, обратно-совместимый с Vi.
Он может быть использован для правки всех видов простого текста.
Особенно он хорош для правки исходных текстов программ.
 

По сравнению с Vi, 
 Vim 

имеет много усовершенствований: многократная отмена операций,
множественность окон и буферов, подсветка синтаксиса, правка командной строки,
автодополнение имён файлов, встроенная справка, визуальное выделение и т.п.
См. ":help vi_diff.txt" для получения полного списка различий между
 Vim 

и Vi.
 

Во время работы в
 Vim 

можно получить справку с помощью системы встроенной справки (команда ":help").
См. раздел "ВСТРОЕННАЯ СПРАВКА" ниже по тексту.
 

Чаще всего
 Vim 

запускают для правки одного файла при помощи команды
 

         vim файл 
 

В общем виде команда запуска
 Vim 

выглядит так:
 

         vim [ключи] [список файлов] 
 

Если список файлов отсутствует, редактор начнёт работу с пустым буфером.
В противном случае имя файла должно быть указано одним из следующих четырёх способов:
 
 файл .. 
Список имён файлов.
Первый файл будет объявлен активным и загружен в буфер. Курсор будет помещён
в первой строке буфера. Доступ к другим файлам может быть осуществлён при
помощи команды ":next". Чтобы править файл, имя которого начинается с символа
"дефис" (-), перед списком файлов необходимо поставить "--".
 - 
Файл будет прочитан из потока стандартного ввода. Команды будут считываться
из стандартного потока диагностики (stderr), который должен быть 
терминалом.
 -t {метка} 
Имя файла и начальная позиция курсора зависят от "метки", похожей на метку goto.
{метка} ищется в файле меток, соответствующий файл становится активным, а 
соответствующая команда исполняется.
Чаще всего используется в программах на языке Си, где {метка} может быть именем
функции.
Файл, содержащий функцию, становится активным, а курсор помещается в начало функции.
См. ":help tag-commands".
 -q [файл ошибок] 
Начать работу в режиме быстрого исправления.
При этом считывается [файл ошибок] и первая ошибка выводится на экран.
Если [файл ошибок] не указан, имя файла берётся из значения опции 'errorfile'
(по умолчанию: "AztecC.Err" для Amiga, "errors.err" для других систем).
К следующим ошибкам можно перейти по команде ":cn".
См. ":help quickfix".
 
 

 Vim 

ведёт себя по-разному в зависимости от имени команды (исполняемый файл может
быть одним и тем же).
 
 vim 
"Нормальный" запуск, всё по умолчанию.
 ex 
Запуск в режиме Ex. Для перехода в нормальный режим
необходимо выполнить команду ":vi". Режим Ex включает
также ключ "-e".
 view 
Запуск в режиме "только для чтения". Вы будете защищены от случайной записи 
файла. То же самое можно сделать ключом "-R".
 gvim gview 
Версия с графическим интерфейсом. Запускается в новом окне.
То же самое можно сделать при запуске с ключом "-g".
 rvim rview rgvim rgview 
Как и предыдущие команды, но с ограничениями. Нельзя запускать команды оболочки
или приостанавливать работу
 Vim. 

Вместо приставки "r" можно использовать ключ "-Z".
 
   
 КЛЮЧИ 

Ключи могут быть указаны в любом порядке, до или после имён
файлов. Ключи без аргументов могут быть объединены под одним
дефисом.
 
 +[номер] 
В первом файле курсор будет помещён на строку с указанным номером.
Если "номер" не указан, курсор будет помещён на последнюю строку.
 +/{шаблон} 
В первом файле курсор будет помещён на место первого совпадения
с указанным шаблоном. См. ":help search-pattern" для получения
списка допустимых шаблонов.
 +{команда} 
 -c {команда} 
{команда} исполняется после загрузки первого файла как команда Ex.
Если {команда} содержит пробелы, то она должна быть заключена в
двойные кавычки (в зависимости от используемой оболочки).
Пример: vim "+set si" main.c
 

Примечание: Можно указывать до десяти команд "+" или "-c".
 --cmd {команда} 
Как "-c", но команда исполняется перед обработкой любого файла
настроек (vimrc).
Можно указывать до десяти таких команд, независимо от количества
команд "-c".
 -A 
Если
 Vim 

был собран с поддержкой арабского языка для правки файлов,
набранных справа налево, и с поддержкой арабской клавиатуры,
этот ключ запускает
 Vim 

в арабском режиме, с включенной опцией 'arabic'. В противном 
случае
 Vim 

завершает работу с ошибкой.
 -b 
Двоичный режим.
Производится настройка некоторых опций, делающих возможной правку
двоичного или исполняемого файла.
 -C 
Режим совместимости. Включает опцию 'compatible'.
 Vim 

будет работать почти как Vi, даже если существует файл .vimrc.
 -d 
Режим поиска различий.
Должно быть указано два или три имени файла.
 Vim 

откроет все файлы и покажет различия между ними
(как  vimdiff (1)).
 -d {устройство} 
Открыть {устройство} для использования в качестве терминала (только на Amiga).
Пример:
"-d con:20/30/600/150".
 -e 
Запустить
 Vim 

в режиме Ex, как будто исполняемый файл имеет имя "ex".
 -f 
Режим активного приложения. Версия
 Vim 

с графическим интерфейсом не будет ветвиться и отключаться
от запустившей её оболочки. На платформе Amiga
 Vim 

не будет создавать новое окно. Этот ключ нужно использовать,
когда
 Vim 

запускается программой, которая должна ждать завершения
сеанса правки (например, программа для работы с электронной почтой).
На платформе Amiga команды ":sh" и ":!" не будут работать.
 --nofork 
Режим активного приложения. Версия
 Vim 

с графическим интерфейсом не будет ветвиться и отключаться
от запустившей её оболочки.
 -F 
Если
 Vim 

был собран с поддержкой FKMAP для правки текста справа налево
и настроек клавиатуры для языка фарси, этот ключ запускает
 Vim 

в режиме фарси, иначе говоря, с включёнными опциями 

В противном случае
 Vim 

завершает работу с сообщением об ошибке.
 -g 
Если
 Vim 

был собран с поддержкой графического интерфейса, этот ключ
включает графический интерфейс. В противном случае
 Vim 

завершает работу с сообщением об ошибке.
 -h 
Выводит краткую информацию об аргументах и ключах командной строки.
После этого
 Vim 

завершает работу.
 -H 
Если
 Vim 

был собран с поддержкой правки текста справа налево
и настроек клавиатуры для иврита, этот ключ запускает
 Vim 

в режиме иврита, иначе говоря, с включёнными опциями 'hkmap' и 'rightleft'.
В противном случае
 Vim 

завершает работу с сообщением об ошибке.
 -i {viminfo} 
Если используется файл viminfo, то этот ключ задаёт имя такого файла (вместо
"~/.viminfo" по умолчанию). Можно также избежать использования файла viminfo
путём указания имени "NONE".
 -L 
То же, что и -r.
 -l 
Режим Lisp. Включаются опции 'lisp' и 'showmatch'.
 -m 
Изменение файлов запрещено. При этом отключается опция 'write', поэтому
запись файлов становится невозможной.
 -N 
Режим неполной совместимости. Отключается 'compatible'.
 Vim 

будет работать лучше, но не будет полностью совместим с Vi, даже если
отсутствует файл сценария настроек (.vimrc).
 -n 
Не использовать своп-файл. Восстановление при сбое в работе будет невозможно.
Удобно для правки файла на очень медленном носителе (например, гибком диске).
То же самое можно сделать командой ":set uc=0". Отмена -- ":set uc=200".
 -o[N] 
Открыть N окон, разделённых по горизонтали. Если N не указано, то открывается 
по одному окну на каждый файл.
 -O[N] 
Открыть N окон, разделённых по вертикали. Если N не указано, то открывается 
по одному окну на каждый файл.
 -R 
Режим "только для чтения". Включается опция 'readonly'.
Файл в буфере доступен для редактирования, но его копию на диске нельзя
случайно перезаписать. Для сохранения файла необходимо добавить восклицательный
знак к соответствующей команде Ex (например, ":w!").
Ключ "-R" подразумевает также, что используется и ключ "-n" (см. выше).
Опция 'readonly' может быть выключена по команде ":set noro".
См. ":help 'readonly'".
 -r 
Вывести список своп-файлов и информацию об их использовании для восстановления после сбоя.
 -r {файл} 
Режим восстановления.
Для восстановления после сбоя будет использован своп-файл.
Своп-файл имеет то же имя, что и текстовый файл, но с добавлением расширения ".swp".
См. ":help recovery".
 -s 
Тихий режим. Только при запуске как "Ex" или если перед "-s" указан ключ "-e".
 -s {scriptin} 
Считывается файл сценария {scriptin}. При этом, содержимое файла воспринимается
в виде команд, как если бы они были набраны на консоли. 
То же самое достигается командой ":source! {scriptin}".
Если конец файла считывается до завершения работы редактора, то в дальнейшем 
ввод осуществляется с клавиатуры.
 -T {terminal} 
Сообщает
 Vim 

тип используемого терминала. Необходимо только в тех ситуациях, когда 
автоматическое определение терминала не работает. Имя терминала должно быть 
известно
 Vim 

(встроено в него) или определено в файлах termcap или terminfo.
 -u {vimrc} 
Использовать команды из файла сценария {vimrc} для настройки.
Все остальные файлы настроек пропускаются.
Удобно для редактирования специальных типов файлов.
Чтобы избежать использования сценариев настроек вообще, можно использовать
имя "NONE". См. ":help initialization".
 -U {gvimrc} 
Использовать команды из файла сценария {gvimrc} для настройки графического 
интерфейса.
Все остальные файлы настроек для графического интерфейса пропускаются.
Чтобы избежать использования сценариев настроек графического интерфейса вообще, 
можно использовать имя "NONE". См. ":help gui-init".
 -V 
"Болтливый" режим. Выводить сообщения о том, какие файлы читаются, и о
чтении-записи файла viminfo.
 -v 
Запустить
 Vim 

в режиме Vi, как будто исполняемый файл имеет имя "vi". Имеет смысл только если
исполняемый файл имеет имя "ex".
 -w {scriptout} 
Все символы, введённые с клавиатуры вплоть до момента завершения работы, 
записываются в файл {scriptout}.
Удобно в том случае, когда вы хотите создать файл сценария для последующего 
использования с "vim -s" или ":source!". Если файл {scriptout} уже существует, 
то новые символы будут добавляются в конец файла.
 -W {scriptout} 
Как "-w", но уже существующий файл будет перезаписан.
 -x 
Шифровать записываемые файлы. Будет выдано приглашение ввести пароль.
 -X 
Не подключаться к X-серверу. Ускоряет загрузку на консоли, но делает невозможным
использование заголовка окна и буфера обмена.
 -Z 
Ограниченный режим. Работает так же, как и программы, начинающиеся с "r".
 -- 
Конец ключей. Все остальные аргументы рассматриваются как имена файлов.
Может быть использовано для правки файлов, имена которых начинаются с дефиса.
 --help 
Вывести краткую справку и завершить работу. То же, что и "-h".
 --version 
Вывести информацию о версии программы и завершить работу.
 --remote 
Подключиться к серверу Vim и заставить его править файлы, указанные в
последующих аргументах. Если сервер не найден, выводится предупреждение,
а файлы правятся в местной копии Vim.
 --remote-expr {выражение} 
Подключиться к серверу Vim и вычислить на нём указанное {выражение}. 
Результат вычисления будет выведен в поток стандартного вывода (stdout).
 --remote-send {ключи} 
Подключиться к серверу Vim и передать ему указанные {ключи}.
 --remote-silent 
Как "--remote", но без вывода предупреждения, если сервер не найден.
 --remote-wait 
Как "--remote", но Vim не будет завершать работу до тех пор, пока не будет 
выполнена правка всех файлов.
 --remote-wait-silent 
Как "--remote-wait", но без вывода предупреждения, если сервер не найден.
 --serverlist 
Вывести список всех доступных серверов Vim.
 --servername {имя} 
Использовать указанное {имя} в качестве имени сервера. Если ключ 
"--remote" не указан, то {имя} присваивается данной копии Vim, 
в противном случае указывает на имя сервера, к которому следует 
подключиться.
 --socketid {id} 
Только для графического интерфейса GTK: использовать механизм GtkPlug для
запуска gvim в отдельном окне.
 --echo-wid 
Только для графического интерфейса GTK: вывести идентификатор окна (Window ID)
в поток стандартного вывода (stdout).
 
   
 ВСТРОЕННАЯ СПРАВКА 

Для начала, наберите команду ":help".
Введите ":help тема", чтобы получить справку по конкретной теме.
Например, команда ":help ZZ" выведет информацию о команде "ZZ".
Используйте <Tab> и CTRL-D для автоматического дополнения
названий тем (":help cmdline-completion").
Для быстрого перемещения по справочнику используются метки (что-то 
вроде гипертекстовых ссылок, см. ":help"). Таким образом можно 
просматривать все файлы справки, например ":help syntax.txt".
   
 ФАЙЛЫ 

 
 /usr/share/vim/vim71/doc/*.txt 
Файлы справочника
 Vim. 

См. ":help doc-file-list" для получения полного списка.
 /usr/share/vim/vim71/doc/tags 
Файл меток, используемый для поиска информации в файлах справки.
 /usr/share/vim/vim71/syntax/syntax.vim 
Системные настройки синтаксиса.
 /usr/share/vim/vim71/syntax/*.vim 
Файлы синтаксиса для разных языков.
 /usr/share/vim/vimrc 
Системные настройки
 Vim. 

 /usr/share/vim/gvimrc 
Системный настройки графического интерфейса.
 /usr/share/vim/vim71/optwin.vim 
Сценарий, используемый при выполнении команды ":options". 
Хороший способ просматривать и изменять настройки.
 /usr/share/vim/vim71/menu.vim 
Системные настройки меню для gvim.
 /usr/share/vim/vim71/bugreport.vim 
Сценарий для создания отчёта об обнаруженных глюках. См. ":help bugs".
 /usr/share/vim/vim71/filetype.vim 
Сценарий для определения типа файла по имени. См. ":help 'filetype'".
 /usr/share/vim/vim71/scripts.vim 
Сценарий для определения типа файла по содержимому. См. ":help 'filetype'".
 /usr/share/vim/*.ps 
Файлы для печати PostScript.
 
 

Более свежая информация -- на сайте VIM:
 

<URL: http://www.vim.org/ >
   
 СМОТРИ ТАКЖЕ 

 vimtutor (1)
   
 АВТОРЫ 

Большая часть
 Vim 

создана Брамом Мооленааром (Bram Moolenaar), которому помогает огромное 
количество людей. См. ":help credits" в
 Vim. 

 

 Vim 

базируется на коде редактора Stevie, написанного Тимом Томпсоном (Tim Thompson),
Тони Эндрюсом (Tony Andrews) и Г. Р. (Фредом) Уолтером (G.R. (Fred) Walter). 
Однако, в настоящее время в Vim почти не осталось ничего от исторического кода 
его предшественника.
 

Русская локализация 
 Vim  

выполняется в рамках проекта "РуВим", 
см. <URL: http://sourceforge.net/projects/ruvim/ >.
   
 ГЛЮКИ 

Скорее всего есть.
См. ":help todo" -- список известных проблем.
 

Заметим, что многие вещи, которые считаются глюками, на самом деле
являются результатом слишком полного воспроизведения поведения Vi.
Если вы думаете, что что-то является ошибкой только потому, что 
"Vi делает это по-другому", внимательно прочитайте файл vi_diff.txt 
(или наберите ":help vi_diff.txt" в Vim) и используйте опции 'compatible'
и 'cpoptions'.
 

 
   Index 
 
 ИМЯ 
 КОМАНДНАЯ СТРОКА 
 ОПИСАНИЕ 
 КЛЮЧИ 
 ВСТРОЕННАЯ СПРАВКА 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
 АВТОРЫ 
 ГЛЮКИ 
 
 
 
 
 
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