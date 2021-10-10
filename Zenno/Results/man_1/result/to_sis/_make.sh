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
 
 
 
 make (1)   make  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   make  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  make  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   make  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   make  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   make  (8)   ( Русские man: Команды системного администрирования ) 
   
 НАЗВАНИЕ 

make - утилита GNU make для сохранения программ в группах
   
 СИНТАКСИС 

 make  

[
 -f 

 makefile 

] [ опции ] ...
объект ...
   
 ПРЕДУПРЕЖДЕНИЕ 

Эта man страница - выдержка из документации
 GNU make . 

Она обновляется только изредка, потому что проект GNU не использует nroff.
За полной, текущей документацией, обращайся к Info файлу
 make.info 

, который сделан из исходного Texinfo файла
 make.texinfo .

   
 ОПИСАНИЕ 

 

Утилита
 make 

предназначена для автоматического определения частей большой программы,
которые нужно перекомпилить, и вызова команд для их перекомпиляции.
Руководство описывает реализацию GNU
 make ,

которая была написана Richard Stallman и Roland McGrath.
Наши примеры показывают использование с программами на C, так они наиболее просты,
но можно использовать
 make 

с любым языком программирования, если его компилятор можно запустить
командой shell.
Фактически, предназначение
 make 

не ограничивается программированием.
Её можно использовать для описания любой задачи, в которой одни файлы
должны автоматически обновляться в зависимости от изменения других.
 

В качестве подготовки к использованию
 make ,

необходимо написать файл, называемый
 makefile 

,который описывает связи между файлами программы, и определяет
команды для обновления каждого файла.
Обычно в программе, исполняемый файл обновляется из объектных файлов,
которые по очереди компилируются из исходных файлов.
 

Если соответствующий makefile существует, то всякий раз при изменении некоторых
исходных файлов достаточно простой команды shell:
 
 
 make 

 

 
для выполнения всех необходимых перекомпиляций.
Программа
 make 

использует базу данных makefile и время последней модификации файлов
чтобы решить, какие файлы нужно обновить.
Для каждого из этих файлов она вызывает команду, записанную в базе данных.
 

 make 

выполняет команды из
 makefile 

для обновления одного или более объектов
 names ,

где
 name 

обычно является программой.
Если опция
 -f 

отсутствует, то
 make 

ищет make_файлы в таком порядке:
 GNUmakefile ,

 makefile ,

и
 Makefile .

 

Обычно, make_файл нужно называть
 makefile 

или
 Makefile .

(Мы рекомендуем
 Makefile 

потому что он появится недалеко от начала списка каталога,
неотрывно от других важных файлов типа
 README .)

Первое проверяемое имя,
 GNUmakefile ,

не рекомендуется для большинства make_файлов.
Это название нужно использовать, если этот make_файл работает только с GNU
 make ,

и будет не понятен другим версиям
 make .

Если
 makefile 

равен `-', то читается стандартный ввод.
 

 make 

обновляет объект, если он зависит от необходимых как условие файлов,
которые изменялись со времени последнего изменения объекта, или если
объект не существует.
   
 ОПЦИИ 

 
 
 -b 

 
 -m 

 
Эти опции игнорируются и служат для совместимости с другими
версиями
 make .

 -C  dir 

 
Изменить каталог на
 dir 

перед чтением make_файлов или выполнением чего-то ещё.
Если указано несколько опций
 -C 

, то каждая интерпретируется относительно предыдущей:
 -C  /

 -C  etc

эквивалентно
 -C  /etc.

Обычно, это используется с рекурсивными вызовами
 make .

 -d 

 
Печатать отладочную информацию в дополнении к нормальной.
Отладочная информация показывает какие файлы было решено переделать,
какие времена файлов сравнивались и с каким результатом, какие файлы
на самом деле должны быть переделаны, какие скрытые правила подразумевались
и какие были применены---всё интересное о том как
 make 

решал что делать.
 -e 

 
Дать переменным из среды превосходство над переменными из make_файлов.
 -f  file 

 
Использовать
 file 

как makefile.
 -i 

 
Игнорировать все ошибки в командах, выполняемых для обновления файлов.
 -I  dir 

 
В заданном каталоге
 dir 

ищутся включаемые make_файлы.
Если используется несколько опций
 -I 

для задания нескольких каталогов, то поиск осуществляется в порядке
задания.
В отличие аргументов других флагов
 make ,

каталоги в
 -I 

флагах можно указывать сразу после флага:
 -I dir 

разрешено, также как и
 -I  dir. 

Этот синтаксис разрешён для совместимости с флагом
 -I 

препроцессора C.
 -j  jobs 

 
Указать число заданий (команд) выполняемых одновременно.
Если есть больше чем одна
 -j 

опция, то используется последняя.
Если
 -j 

опция задана без аргумента, то
 make 

не ограничивает число заданий, которые могут выполняться одновременно.
 -k 

 
Продолжать после ошибки настолько, насколько возможно.
Несмотря на то, что объект нельзя обновить, и то что от этого зависит,
не может быть переделано, в тоже время есть другие зависимости этого объекта,
которые могут быть обработаны.
 -l 

 
 -l  load 

 
Указывает, что новые задания (команды) не должны начинаться,
если другие задания запущены и средняя загрузка по крайней мере
 load 

(дробное число).
Без аргументов удаляется удаляется предыдущий предел загрузки.
 -n 

 
Напечатать команду, которая должна выполняться, но не выполнять её.
 -o  file 

 
Не переделывать файл
 file 

, даже если он старее чем его зависимости, и ничего не переделывать
за счёт изменений в
 file .

По существу, файл трактуется как очень старый и его правила игнорируются.
 -p 

 
Напечатать базу данных (правила и значения переменных) полученную
при чтении make_файлов; затем выполняться как обычно или как
указано иначе.
Это также печатает информацию о версии, даваемую переключателем
 -v 

(смотри ниже).
Чтобы напечатать базу данных без попыток пересобрать любые файлы, используется
 make 

 -p 

 -f /dev/null. 

 -q 

 
``Режим запроса''.
Никаких команд не запускается и ничего не печатается; только возвращается
код завершения, который равен нулю, если заданный объект уже самый новый,
иначе не ноль.
 -r 

 
Исключить использование встроенных скрытых правил.
Также очистить список суффиксов по умолчанию для правил суффиксов.
 -s 

 
Тихая работа; не печатать команды при их выполнении.
 -S 

 
Отменить действие опции
 -k . 

Этого никогда не требуется, кроме как при рекурсиях
 make 

где
 -k 

может быть унаследована от верхнего уровня
 make 

через MAKEFLAGS или если
 -k 

установлена в MAKEFLAGS среды.
 -t 

 
Прикоснуться к файлам (пометить их как новые без действительного их изменения)
вместо запуска команд к ним.
Это используется чтобы симулировать, что команды выполнены, чтобы обмануть
будущие вызовы
 make .

 -v 

 
Напечатать версию программы
 make 

плюс copyright, список авторов и уведомление об отказе от гарантий.
 -w 

 
Напечатать сообщение, содержащее рабочий каталог перед и после других
работ.
Это может быть полезно для отслеживания ошибок при сложных вложенных
рекурсивных
 make 

командах.
 -W  file 

 
Сделать вид, что объект
 file 

только что был модифицирован.
Когда еще используется
 -n 

флаг, то это покажет чтобы случилось, если бы этот файл был изменён.
Без
 -n ,

это почти тоже самое что как запустить команду
 touch 

с данным файлом перед запуском
 make ,

кроме того что время модификации изменилось только в представлении
 make .

 
   
 СМ. ТАКЖЕ 

 Руководство по GNU Make 

   
 БАГИ 

Смотри главу `Проблемы и баги' в
 Руководство по GNU Make . 

   
 АВТОР 

Эта страница руководства пожертвована Dennis Morse из Stanford University.
Она была переделана Roland McGrath.
   
 ПЕРЕВОД 

Оригинал лежит   в make-3.78.1.tar.gz     на  ftp.gnu.org 
Перевод выполнил Юрий Козлов, очень рад замечаниям по адресу  off@tsinet.ru .
Суб Окт 30 18:15:20 MSD 1999
Сергиев-Посадская LUG spslug.sposad.ru
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ПРЕДУПРЕЖДЕНИЕ 
 ОПИСАНИЕ 
 ОПЦИИ 
 СМ. ТАКЖЕ 
 БАГИ 
 АВТОР 
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