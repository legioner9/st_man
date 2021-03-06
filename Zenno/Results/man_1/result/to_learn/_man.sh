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
 
 
 
 man (1)   man  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   man  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  man  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   man  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   man  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   man  (5)   ( Solaris man: Форматы файлов )   man  (7)   ( FreeBSD man: Макропакеты и соглашения )   man  (7)   ( Русские man: Макропакеты и соглашения )   man  (7)   ( Linux man: Макропакеты и соглашения ) Ключ  man  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

man - форматирует и отображает страницы электронного справочника man
 

manpath - определяет пути поиска страниц руководства
   
 СИНТАКСИС 

 man  

[ -acdfFhkKtwW ]

[ --path ]

[ -m 

 система ]  

[ -p 

 строка ]  

[ -C 

 файл_конфигурации ]  

[ -M 

 список_путей ] 

[ -P 

 пейджер ]  

[ -S 

 список_разделов ]  

[ раздел ]

 имя ... 

 
   
 ОПИСАНИЕ 

 man 

форматирует и отображает страницы электронного справочника. Если вы укажите
 раздел ,

то
 man 

будет искать только в этом разделе руководства.
 имя 

это имя страницы руководства, которое обычно является именем команды, функции, или файла.  
Однако, если
 имя 

содержит наклонную черту
( / ) , 

то 
 man  

интерпретирует это как обращение к конкретному файлу, так что вы можете выполнять
 man ./foo.5 

или
 man /cd/foo/bar.1.gz .

 

Описание того, где 
 man 

ищет страницы руководства, смотрите ниже.
  
   
 ОПЦИИ 

 
 -C  файл_конфигурации 

 
Указать файл конфигурации для использования; по умолчанию это
 /etc/man.conf .

(См.
 man.conf (5).)

 -M  путь 

 
Определить список каталогов для поиска страниц руководства. Каталоги разделяются двоеточиями. Пустой список каталогов равнозначен неупотреблению
 -M 

вовсе.  Смотрите
 ПУТИ ПОИСКА СТРАНИЦ РУКОВОДСТВА .

 -P  пейджер 

 
Назначить используемый пейджер.
Это опция переназначает переменную окружения
 MANPAGER ,

которая в свою очередь переназначает переменную
 PAGER .

По умолчанию,
 man 

использует
 /usr/bin/less -isR .

 -S  список_разделов 

 
Список разделов руководства разделённых двоеточиями, в которых осуществляется поиск.
Эта опция переопределяет переменную окружения
 MANSECT. 

 -a 

 
По умолчанию после вывода первой найденной страницы руководства,
 man 

завершит работу. Применение это опции вынудит
 man 

показать не только первую, а все страницы справочника подходящие под заданное
 имя. 

 -c 

 
Переформатировать исходную страницу руководства, даже если существует актуальная отформатированная страница.
Это может понадобиться, если раньше страница была отформатирована для экрана с другим количеством колонок, или повреждена.
 -d 

 
В действительности не показывает страницы справочника, но печатает отладочную информацию как при осуществлении вывода страниц.
 -D 

 
Показывает и страницу и отладочную информацию.
 -f 

 
Равнозначно команде
 whatis .

 -F  или  --preformat 

 
Форматирование без отображения.
 -h 

 
Выводит справку по опциям командной строки и завершает работу.
 -k 

 
То же что и команда
 apropos .

 -K 

 
Поиск заданной строки во *всех* страницах справочника. Предупреждение: возможно этот процесс будет очень долгим! Здесь может помочь указание раздела. (Просто для приблизительной оценки, на моей машине это работает примерно 500 страниц в минуту.)
 -m  system 

 
Задать для поиска альтернативный набор страниц справочника, находящийся на системе с указанным именем.
 -p  string 

 
Назначить выполнение ряда препроцессоров перед
 nroff 

или
 troff .

Не всё инсталляции имеют полный набор препроцессоров. Несколько препроцессоров и буквы для их обозначения:
eqn (e), grap (g), pic (p), tbl (t), vgrind (v), refer (r).
Эта опция переопределяет переменную окружения
 MANROFFSEQ .

 -t 

 
Использует
 /usr/bin/groff -Tps -mandoc 

для форматирования страницы справочника, без вывода на 
 stdout. 

Возможно перед печатью на принтере вывод
 /usr/bin/groff -Tps -mandoc 

понадобится пропустить через некоторые фильтры.
 -w  или --path

 
Не отображает страницы справочника, но печатает местонахождение(я) тех файлов, что были бы отформатированы и показаны. Если аргумент не задан: выводит (на stdout) список каталогов в которых
 man 

осуществляет поиск страниц руководства. Если
 manpath 

это ссылка на man, то "manpath" равноценно "man --path".
 -W 

 
Подобно -w, но печатает по одному имени файла на строку без дополнительной информации. Это полезно в командах shell, например,

 man -aW man | xargs ls -l 


 
 
   
 СТРАНИЦЫ CAT 

В целях экономии времени затрачиваемого на форматирование, man будет пытаться сохранить форматированные страницы руководства для последующих вызовов.
Традиционно, форматированные версии страниц из ДИРЕКТОРИЯ/manX сохраняются в ДИРЕКТОРИЯ/catX, однако можно настроить в
 /etc/man.conf 

другое соответствие между каталогами man и cat.
Сохранение страниц cat не будет происходить, если требуемый каталог cat не существует.
Не будут сохраняться страницы cat и при их форматировании под строки длинной не равной 80 символам.
Не сохраняются страницы cat и при наличии в man.conf строки содержащей NOCACHE.
 

Есть возможность, с помощью suid сделать
 man 

исполняемым от имени пользователя man. Тогда, если каталогом cat владеет пользователь
man и права доступа к нему установлены в 0755 (запись разрешена только пользователю man), и файлы cat также принадлежат пользователю man, с установленными правами доступа к ним в режиме 0644 или 0444 (их изменение доступно только пользователю man, или никому вообще), то обычный пользователь не сможет изменить страницы cat или поместить другие файлы в каталог cat. Если
 man 

не выполняет suid, в таком случае для предоставления возможности всем пользователям сохранения отформатированных страниц каталог cat должен иметь права доступа 0777.
 

Опция
 -c 

вынуждает переформатировать страницу, даже если существует ранее использовавшаяся страница cat.
 
   
 ПУТИ ПОИСКА СТРАНИЦ РУКОВОДСТВА 

Для поиска страниц руководства,
 man 

использует составной метод, основанный на опциях вызова и переменных окружения, файле настроек 
 /etc/man.conf ,

а также некоторых встроенных соглашениях и эвристике.
 

Прежде всего, если
 имя 

аргумента передаваемого 
 man 

содержит наклонную черту
( / ),

 man 

принимает его как указание на файл,
и не осуществляет поиск.
 

Однако в обычном случае, где
 имя 

не включает наклонной черты,
 man 

ищет в ряде каталогов файл, содержащий страницы руководства для указанной темы.
 

Если вы зададите опцию
 -M  список_путей , 

то
 список_путей  

это разделённый двоеточиями список каталогов в которых 
 man  

осуществит поиск.
 

Если вы не укажите
 -M ,

но установите переменную окружения
 MANPATH ,

 man 

использует значение переменной как список каталогов для поиска.
 

Если вы не определите списка особых путей поиска с помощью
 -M 

или
 MANPATH ,

 man 

осуществит поиск по своему списку путей, основанному на содержании файла конфигурации
 /etc/man.conf .

Каталоги, заявленные в переменной
 MANPATH 

в конфигурационном файле, включаются в пути поиска.
 

Более того, определение
 MANPATH_MAP  

добавляет каталоги для поиска в зависимости от вашей настройки путей поиска команд
(т.е. вашей переменной окружения
 PATH ).

Для каждого каталога который может быть определён в настройке пути поиска команд,
 MANPATH_MAP 

устанавливает каталог который может быть добавлен в пути поиска файлов страниц справочника.
 man 

читает значение переменной 
 PATH 

и добавляет соответствующие каталоги в пути поиска файлов страниц справочника. Таким образом, при должном использовании
 MANPATH_MAP ,

когда вы вызываете команду
 man xyz ,

вы получаете страницу руководства для программы, выполняемой вызовом команды
 xyz .

 

Кроме того, для каждого каталога в пути поиска команды (будем называть его "каталог команд"), для которого
 не 

определена 
 MANPATH_MAP ,

 man 

автоматически ищет поблизости каталог со страницами руководства, а именно в подкаталоге каталога команд или родительском каталоге для каталога команд.
 

Объявлением переменной
 NOAUTOPATH 

включенной в
 /etc/man.conf ,

вы можете отключить автоматический поиск "поблизости".
 

В каждом каталоге находящемся в списке пути поиска как описано выше,
 man 

ищет файл с именем
 тема . раздел ,

суффикс номера раздела и возможный суффикс сжатия необязательны.
Если такой файл не найден, то поиск продолжается в любых подкаталогах с именем
 man N 

или 
 cat N , 

где
 N 

это номер раздела руководства.
Если файл найден в каталоге
 cat N , 

 man 

предполагает, что это форматированная страница руководства (страница cat). Иначе,
 man 

считает её не форматированной. Как в том, так и в другом случае, если имя файла имеет суффикс сжатия (например,
 .gz ),

 man 

считает, что файл сжат.
 

Если вы хотите знать где (или если)
 man 

нашёл страницу руководства для заданной темы, используйте опцию
 --path  ( -w ).

 
   
 ОКРУЖЕНИЕ 

 
 MANPATH 

 
Если переменная
 MANPATH 

установлена, то
 man 

использует её для поиска страниц руководства. Она переопределяет файл настроек и автоматический путь поиска, но сама переопределяется заданием опции
 -M .

Смотрите 
 ПУТИ ПОИСКА СТРАНИЦ РУКОВОДСТВА .

 MANPL 

 
Если
 MANPL 

установлена, то её значение используется как длина страницы для вывода.
Иначе, вся страница руководства будет представлена одной (длинной) страницей.
 MANROFFSEQ 

Если установлена
 MANROFFSEQ ,

то её значение используется для определения препроцессоров для выполнения перед запуском
 nroff 

или
 troff .

По умолчанию, перед
 nroff ,

страница пропускаются через препроцессор tbl.
 MANSECT 

 
Если установлена переменная
 MANSECT ,

то её значение определяет раздел, в котором будет осуществляться поиск.
 MANWIDTH 

 
Если
 MANWIDTH 

установлена, то её значение используется как ширина страниц для вывода.
В противном случае, вывод страниц может выйти за ширину экрана.
 MANPAGER 

 
Если переменная
 MANPAGER 

установлена, то её значение используется как имя программы, выполняемой для отображения страницы руководства. Если не установлена, тогда будет использована переменная
 PAGER .

Если она также не установлена, то будет применена команда
 /usr/bin/less -isR. 

 LANG 

 
Если установлена переменная
 LANG ,

то её значение определяет имя подкаталога, где страницы справочника ищутся в первую очередь. Так, команда 'LANG=ru man 1 foo' побудит man искать страницу руководства foo в .../ru/man1/foo.1,
и если этот файл не будет найден, то в .../man1/foo.1,
где ... это каталог из пути поиска.
 NLSPATH, LC_MESSAGES, LANG 

 
Переменные окружения
 NLSPATH 

и
 LC_MESSAGES 

(или
 LANG ,

если последняя не установлена)
играют свою роль в определении каталога сообщений.
(Исключая сообщения на английском, которые в компилированы в man, поэтому каталог сообщений для английского языка не требуется.)
Учтите, что такие программы как
 col (1) 

вызываемые man также используют LC_CTYPE.
 PATH 

 
 PATH 

помогает определить пути поиска файлов со страницами руководства. Смотрите
 ПУТИ ПОИСКА СТРАНИЦ РУКОВОДСТВА .

 SYSTEM 

 
 SYSTEM 

используется для задания альтернативного имени системы (для использования с опцией
 -m ).

 
   
 СМОТРИ ТАКЖЕ 

 apropos (1) ,

 whatis (1) ,

 less (1) ,

 groff (1) ,

 man.conf (5) .

   
 ОШИБКИ 

Опция
 -t 

работает только если установлена программа, подобная troff.
 

Если вы видите мигающие \255 или <AD> знака переноса,
добавьте в своё окружение 'LESSCHARSET=latin1'.
   
 СОВЕТЫ 

Если вы добавите следующую строку
 
   (global-set-key [(f1)] (lambda () (interactive) (manual-entry (current-word))))
 
в ваш файл
 .emacs ,

то нажатие клавиши F1 будет открывать страницу справочника по библиотечной функции, на название которой указывает курсор.
 

Чтобы получить простую текстовую версию страницы руководства, без символов возврата и подчёркивания, попробуйте команду вида
 
   # man foo | col -b > foo.mantxt
 
   
 ПЕРЕВОД 

Василий Коломеец (Vasily Kolomeets) < boojuman@gmail.com >
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 СТРАНИЦЫ CAT 
 ПУТИ ПОИСКА СТРАНИЦ РУКОВОДСТВА 
 ОКРУЖЕНИЕ 
 СМОТРИ ТАКЖЕ 
 ОШИБКИ 
 СОВЕТЫ 
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