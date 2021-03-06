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
 
 
 
 xfs_quota (8) >>  xfs_quota  (8)   ( Русские man: Команды системного администрирования ) 
   
 ИМЯ 

xfs_quota - управление использованием квот на файловых системах XFS
   
 ОБЗОР 

 xfs_quota 

[
 -x 

] [
 -p 

 программа 

] [
 -c 

 команда(ы) 

] ... [
 -d 

 проект 

] ... [
 путь  ... ]

   
 ОПИСАНИЕ 

 xfs_quota 

это утилита для предоставления информации и редактирования различных аспектов квот файловой системы.
 

Опциями
 xfs_quota 

являются:
 
 -c  команда(ы) 

 
команды
 xfs_quota 

можно запускать в интерактивном режиме (по умолчанию) или как аргументы в командной строке. 
Может быть несколько
 -c 

аргументов.
Команды выполняются в указанной последовательности, затем программа завершает работу.
 -p  программа 

 
Указать имя программы для приглашений и некоторых сообщений
об ошибках, значение по умолчанию  
 xfs_quota .

 -x 

 
Включает режим эксперта.
Все административные команды (см. ниже раздел КОМАНДЫ АДМИНИСТРАТОРА)
которые позволяют измененять систему квот доступны только
в экспертном режиме.
 -d  проект 

 
Может быть указано имя проекта или его числовой идентификатор, эта опция
ограничивает действие отдельных
 xfs_quota 

команд указанным набором проектов. Несколько
 -d 

аргументов могут быть указаны.
 
 

Необязательный(е)
 path 

аргумент(ы) могут быть использованы для указания точек монтирования или файлов
устройств идентифицирующих файловые системы XFS. Воздействие отдельных команд
 xfs_quota 

будет ограничено указанным набором файловых систем.
 

Данное руководство состоит из двух разделов - в первом находится
информация для пользователей файловых системам, где включены квоты, и
 xfs_quota 

команды представляющие интерес для таких пользователей;
а затем идет информация по использованию квот и команд по изменению системы квот,
которая полезна только администраторам файловых систем XFS.
 

Имейте в виду, что из общих опций для указания типов квот
для почти всех команд описанных ниже, представляют интерес следующие
- квота пользователя
( -u ),

групповая квота
( -g ),

и/или квота на проект
( -p ).

Кроме этого, некоторые команды предоставляют опции для работы
с "blocks used"
( -b ),

"inodes used"
( -i ),

и/или "realtime blocks used"
( -r ).

 

Также многие команды имеют обширную встроенную помощь.
Используйте команду
 help 

для получения более подробной информации по любой команде.
   
 ОБЗОР СИСТЕМЫ КВОТ 

 

В большинстве вычислительных сред, дисковое пространство не является бесконечным.
Подсистема квот предоставляет механизм для контроля использования дискового
пространства.
Квоты могут быть установлены для каждого отдельного пользователя
на любых/всех локальных файловых системах.
Подсистема квот предупреждает пользователей,
когда они превышают выделенный им лимит, но дает некоторое дополнительное
пространство для текущей работы (жесткий-hard лимит/мягкий-soft лимит).
Кроме того, файловые системы XFS с выключенным механизмом ограничения по лимитам
могут быть использованы в качестве эффективной системы учета использования дискового
пространства.
   
 Пользовательский взгляд на дисковые квоты 

Для большинства пользователей дисковые квоты не являются поводом для беспокойства
или событием, которое нельзя обойти. 
Существуют две возможные квоты, которые могут быть применены - лимит
установленный на суммарное дисковое пространство,
которое пользователь может занять и лимит на количество файлов (inode)
которыми он может владеть.
 

Команда
 quota 

предоставляет информацию о квотах, которые были
установлены системным администратором и текущем использовании дискового
пространства.
 

Существуют четыре значения для каждого лимита:
текущее использование, мягкое (soft) ограничение (квота), жесткое (hard)
ограничение и лимит времени.
Мягкий (soft) лимит - это количество 1K-блоков (или файлов), которых пользователь,
как ожидается, не превысит. Жесткая (hard) квота не может быть превышена. 
Если пользователь достигает жесткого ограничения, то дальнейшие запросы
о выделении пространства (или попытки создать файл) завершаются
с ошибкой "Quota exceeded" (EDQUOT).
 

Когда пользователь превышает мягкий (soft) лимит, включается таймер.
Каждый раз, когда использование диска становится ниже мягкого (soft) лимита,
таймер отключается.
Если таймер срабатывает, то превышение любого лимита рассматривается как
превышение жесткого (hard) лимита и ресурсы для пользователя больше не выделяются.
Единственный способ преодолеть это состояние, быстро отключить механизм
ограничения по лимитам или увеличить лимиты,
или уменьшить использование диска ниже квоты.
Только суперпользователь (т.е. в достаточной степени привилегированный процесс)
может установить лимит времени и это будет сделано на базе файловой системы.
   
 Выживание, когда лимит квоты исчерпан 

В большинстве случаев, единственный способ для пользователя спасти
положение из состояния превышения квоты состоит в том, чтобы прервать
любую деятельность на файловой системе, где лимит квоты исчерпан, удалить
достаточное количество файлов, чтобы снизить лимит обратно ниже квоты,
и повторить операцию в отказавшей программе.
 

Однако, если пользователь находится в редакторе и попытка записи привела
к ошибке из-за ситуации с квотой, то это неподходящее направление действий.
Весьма вероятно, что сначала будет попытка записать файл, усеченный относительно
своего предыдущего содержимого, поэтому, если редактор прерывает выполнение
без правильного сохранения файла, можно потерять не только последние изменения,
но, возможно, большинство и даже всё существующее содержимое.
 

Есть несколько возможных безопасных выходов для пользователей, оказавшихся
в такой ситуации.
Он может использовать команду редактора для выхода в командную оболочку (shell)
для исследования своего файлового пространства и удаления ненужных файлов.
 
Или используя
 sh (1),

он может приостановить редактор, удалить некоторые файлы,
а затем возобновить работу в редакторе.
Третья возможность заключается в том, чтобы записать файл на какую-либо другую
файловую систему (возможно, в файл в
 /tmp )

где пользовательская квота не была превышена.
Затем, после устранения проблемы с квотой, файл может быть перемещен обратно
в файловую систему, которой он принадлежит.
   
 КОМАНДЫ ПОЛЬЗОВАТЕЛЯ 

 
 print 

 
Напечатать список всех путей с устройствами/идентификаторами проектов.
Путь в список может попасть из нескольких мест - из командной строки,
таблицы монтирования, из файла
 /etc/projects. 

 df 

 
Смотри команду
 free 

 
 quota 

[
 -gpu 

] [
 -bir 

] [
 -hnNv 

] [
 -f 

 файл 

] [
 ID 

|
 имя 

] ...
 
Показывает индивидуальное текущее использование и лимиты для одного
 имени 

пользователя или числового
 ID 

пользователя.
Опция
 -h 

действует как в команде
 df (1)

- показывает отчет в "человеко-читаемом" формате.
Опция
 -n 

печатает числовые идентификаторы (ID), а не имена.
Опция
 -N 

не печатает заголовок.
Опция
 -v 

выдает больше информации.
Опция
 -f 

перенаправляет вывод в
 файл 

вместо стандартного потока вывода.
 
 free 

[
 -bir 

] [
 -hN 

] [
 -f 

 файл 

]
 

Выдает отчет по использованию файловой системы подобно команде
 df (1).

Может показать использование
 b locks (блоков), 

 i node,

и/или
 r ealtime

block space (пространство блоков в реальном времени),
а также показать сколько использовано, свободное место и сколько всего доступно.
Если используется квота на проект (project quota) (смотри ниже раздел КВОТА ДЕРЕВА КАТАЛОГОВ),
то показывается отчет об использовании для этих проектов (дерева каталогов).
Опция
 -h 

печатает отчет в "человеко-читаемом" формате. Опция
 -N 

опускает заголовок. Опция
 -f 

направляет вывод в
 файл 

вместо стандартного потока вывода.
 
 help 

[
 команда 

]
 
Интерактивная помощь для всех команд или для одной определённой
 команды .

 quit 

 
Выход из
 xfs_quota. 

 q 

 
Смотри команду
 quit. 

 
   
 УПРАВЛЕНИЕ СИСТЕМОЙ КВОТ 

Система квот XFS отличается от других файловых систем по целому ряду направлений.
Самое главное,- XFS считает информацию о квотах как метаданные самой файловой
системы и использует журналирование для обеспечения более
высокого уровня целостности.
При администрировании различия следующие :
 
 1. 
Команда
 quotacheck 

никак не влияет на файловые системы XFS.
Первый раз система квот активизируется при включении (при монтировании разделов),
и XFS делает автоматический внутренний quotacheck; после этого
система квот будет всегда включена до тех пор, пока не будет отключена вручную.
 2. 
Файл(ы) для квот в корне файловой системы XFS не нужны.
 3. 
 XFS различает систему учета квот и механизм ограничения по лимитам.
Система учета квот должна быть включена во время монтирования файловой
системы XFS.
Тем не менее в любое время можно включить/выключить механизм ограничения
по лимитам.
Опция "quota" команды
 mount 

включает оба механизма: систему учета квот и
механизм ограничения.
Опция "uqnoenforce" может быть использована для включения
учета квот пользователя при отключенной системе ограничения по лимитам.
 4. 
Включение квот на корневой файловой системе несколько отличается от
описанного выше.
Для IRIX XFS, обратитесь к
 quotaon (1M).

Для Linux XFS, флаги монтирования должны быть переданы с загрузочным параметром ядра
"rootflags=".
 5. 
Полезно использовать команду
 state 

для контроля состояния подсистемы XFS квот на разных этапах - 
это может быть использовано, когда квоты включены,
а также для контроля за использованием пространства,
занимаемого самой системой квот.
 6. 
Есть механизм, встроенный в
 xfsdump 

который позволяет делать резервную копию информации о квотах
которая будет нужна для последующего восстановления,
если в этом возникнет необходимость.
 7. 
Значения квот не могут быть установлены до включения системы квот.
 8. 
Файловые системы XFS хранят квоты для учетной записи суперпользователя
(идентификатор пользователя равен нулю), и утилиты будут показывать
информацию о использованию суперпользователем файловой системы.
Однако лимиты никогда не будут применены к суперпользователю
(так же как не будут применены и к группе или проекту с нулевым ID).
 9. 
Файловые системы XFS выполняют система учета квот
вне зависимости имеет ли пользователь установленные лимиты или нет.
 10. 
XFS поддерживает концепцию квоты проекта (project quota),
которая может быть использована в форме квоты на дерево каталогов 
(т.е. ограничить дерево каталогов только возможностью использования
дискового пространства установленного размера на указанной
файловой системе, или просто следить как используется пространство,
или число индексных дескрипторов - inode в дереве).
 
   
 КОМАНДЫ АДМИНИСТРАТОРА 

 
 
 path 

[
 N 

]
 
Список всех путей с идентификаторами устройств/проектов
или установка текущего пути в
 N -ый

элемент списка.
 Текущий путь 

используется многими командами
описанными здесь, он определяет файловую систему на которую
направлено действие команды.
Путь в список может попадать из нескольких мест - из командной
строки, таблицы монтирования, из файла
 /etc/projects. 

 
 report 

[
 -gpu 

] [
 -bir 

] [
 -ahntLNU 

] [
 -f 

 файл 

]
 
Отчет с информацией по квотам файловой системы.
Показывает использование всех квот для файловой системы, для
указанного типа квоты
( u / g / p 

и/или
 b locks/ i nodes/ r ealtime).

В отчете по умолчанию один блок равен 1KB. Опция
 -h 

показывает отчет в "человеко-читаемом" формате, как
команда
 df (1). Опция 

 -f 

направляет отчет в
 файл 

вместо стандартного потока вывода. Опция
 -a 

выдает отчет обо всех файловых системах. Опция
 -n 

печатает числовые ID номера, а не имена. Опции
 -L 

и
 -U 

указывают для отчета нижнюю и верхнюю границы ID. Опция
 -N 

не печатает заголовок. Опция
 -t 

выдает краткий отчет.
 
 state 

[
 -gpu 

] [
 -av 

] [
 -f 

 файл 

]
 

Показывает общую информацию о состоянии системы квот.
Это отчет о состоянии учета квот, применению квот и
степень использования метеданных о квотах в файловой системе.
Опция
 -f 

направляет отчет в
 файл 

вместо стандартного потока вывода. Опция
 -a 

выдает отчет обо всех файловых системах, а не только по текущему пути.
 
 limit 

[
 -gpu 

]
 bsoft= N 

|
 bhard= N 

|
 isoft= N 

|
 ihard= N 

|
 rtbsoft= N 

|
 rtbhard= N 

 -d 

|
 id 

|
 имя 

 

Установить квоту ограничивая блоки (bhard/bsoft), количество
inode (ihard/isoft) и/или лимит блоков реального времени (rtbhard/rtbsoft).
Опция
 -d 

(по умолчанию) может быть использована для установки значения по умолчанию
которое будет использоваться, в противном случае должно быть указано
конкретное
 имя 

 u ser/ g roup/ p roject

или цифровой
 id ентификатор.

 
 timer 

[
 -gpu 

] [
 -bir 

]
 значение 

 
Предоставляет возможность изменять задержку
по времени (timeout) перед применением ограничений по лимитам
(т.е. количество времени, которое может пройти прежде, чем мягкие лимиты
будут применяться как жесткие лимиты). Текущий таймаут
показывается по команде
 state. 

Значением аргумента может быть количество секунд или единиц времени
'minutes', 'hours', 'days' и 'weeks'. Также можно использовать
их сокращения 'm', 'h', 'd' и 'w'.
 
 warn 

[
 -gpu 

] [
 -bir 

]
 значение 

 -d 

|
 id 

|
 имя 

 
Разрешает посылать предупреждение о лимите квоты (т.е. предупреждение о
превышении лимита будет послано кому-нибудь указанное число раз)
которое будет рассмотрено и изменено. Опция
 -d 

(по умолчанию) используется, чтобы установить количество раз по умолчанию,
иначе должно быть указано
 имя 

 u ser/ g roup/ p roject

или числовой идентификатор
 id .

 Примечание: эта функция в настоящее время не реализована. 

 enable  [  -gpu  ] [  -v  ]

 
Ключи механизма ограничения по лимитам для файловой системы,
идентифицируемой по текущему пути.
Требуется, чтобы файловая система была смонтирована с включенной
квотой и система учета должна быть активной. Опция
 -v 

(подробно) показывает состояние по завершению операции.
 disable  [  -gpu  ] [  -v  ]

 
Выключение системы действия квот, оставляя учет квот активным. Опция
 -v 

(подробно) показывает состояние по завершению операции.
 off  [  -gpu  ] [  -v  ]

 
Постоянно действующее отключение квот для файловой системы,
идентифицируемой по текущему пути.
Включить квоты вновь можно только размонтированием и
монтированием раздела.
 remove  [  -gpu  ] [  -v  ]

 
Удалить всё выделенное пространство выделенное под метаданные для квот
для файловой системы идентифицируемой по текущему пути.
Квота не должна быть включена на этой файловой системе,
иначе будет сообщено об ошибке.
 
 dump 

[
 -gpu 

] [
 -f 

 файл 

]
 

Дамп информации о лимитах квот для утилит резервного копирования на
стандартный вывод (по умолчанию) или в
 файл .

Разумеется только лимиты, не информация по использованию.
 
 restore 

[
 -gpu 

] [
 -f 

 файл 

]
 
Восстановить лимиты квот из резервной копии из
 файла .

Файл должен быть создан в формате команды
 dump. 

 
 quot 

[
 -gpu 

] [
 -bir 

] [
 -acnv 

] [
 -f 

 файл 

]
 

Итоговая информация об использовании файловой системы
пользователем, группой или проектом.
Эта команда использует специальный "bulkstat" интерфейс к XFS для
быстрого сканирования всей файловой системы и отчёта по использованию.
Эта команда может быть выполнена даже если квоты не включены,
и будет просканирована вся файловая система
(это может занять много времени...). Опция
 -a 

отображает информацию по всем файловым системам. Опция
 -c 

показывает гистограмму вместо отчета. Опция
 -n 

печатает числовые номера, а не имена. Опция
 -v 

выводит больше информации. Опция
 -f 

выдает отчет в
 файл 

вместо стандартного потока вывода.
 
 project 

[
 -cCs 

 id 

|
 имя 

]
 
Команда без аргументов выводит список имен известных проектов и их идентификаторов
(основываясь на записях из файлов
 /etc/projects 

и
 /etc/projid 

). Опции
 -c ,

 -C ,

и
 -s 

включают механизм квоты дерева каталогов, что детально обсуждается ниже.
 
   
 КВОТА ДЕРЕВА КАТАЛОГОВ 

Механизм квоты на проект в XFS может быть использован в виде
квоты на дерево каталогов, где указанный каталог и все нижележащие файлы
и подкаталоги (т.е. дерево) может быть ограничено подмножеством
свободного пространства на файловой системе.
 

Управляемое дерево должно быть сначала настроено с использованием опции
 -s 

в команде
 project. 

Указанное имя или идентификатор проекта должен совпадать с одним
или несколькими деревьями, определёнными в файле
 /etc/projects ,

и в этих деревьях будут рекурсивно промаркированы затронутые inodes  
как часть данного дерева.
Эта операция устанавливает inode признак и идентификатор проекта на
каждый файл в затронутом дереве.
После завершения этой операции, новые файлы создаваемые в дереве автоматически
учитываются на основании их идентификатора проекта.
Попытка создать жесткую ссылку на файл в дереве будет успешной только в том случае,
если идентификатор проекта соответствует идентификатору проекта для дерева.
Утилита
 xfs_io 

может быть использована для установки ID проекта для произвольного файла,
но это может быть сделано только привилегированным пользователем.
 

Предыдущие настройки дерева могут быть очищены от контроля квот на проект
путем использования опции
 project -C, 

которая рекурсивно по дереву очистит затронутые inodes от контроля квот на проект.
 

Наконец, опция
 project -c 

может использоваться для проверки того, является ли дерево настроенным,
если настройки дерева правильны, то сообщений не будет, в противном
случае будут сообщены пути для inodes которые не имеют корректного ID проекта
как у остального дерева, или inode признак не установлен.
   
 ФОРМАТЫ ФАЙЛОВ 

Есть два файла, связанных с механизмом квоты на дерево каталогов, а именно
 /etc/projects 

и
 /etc/projid .

Последний не является обязательным.
Файл
 /etc/projects 

обеспечивает отображение между числовыми идентификаторами проектов и
каталогами, которые являются корневыми для квот на дерево.
Формат файлов прост:
 
# это комментарий
# ...
 10:/export/cage
42:/var/log
 

 

Файл
 /etc/projid 

обеспечивает отображение между числовыми идентификаторами проектов и
простыми человеко-читаемыми именами (это похоже на связь между именами
пользователей и uids).
Это простой формат:
 
# это комментарий
# ...
cage:10
logfiles:42
 

 

Этот файл не обязателен, если идентификатор проекта не может быть
отображен в имя, то показывается только числовой идентификатор.
 

   
 ПРИМЕРЫ 

Включить механизм ограничения квот на файловой системе XFS (ограничить
пользователя установленным размером дискового пространства).
 
# mount -o uquota /dev/xvm/home /home
# xfs_quota -x -c 'limit bsoft=500m bhard=550m tanya' /home
# xfs_quota -x -c report /home
 

 

Включить механизм квот на проект на файловой системе XFS (установить
ограничение в 1 гигабайт пространства на файлы в каталоге логов)
 
# mount -o prjquota /dev/xvm/var /var
# echo 42:/var/log >> /etc/projects
# echo logfiles:42 >> /etc/projid
# xfs_quota -x -c 'project -s logfiles' /var
# xfs_quota -x -c 'limit -p bhard=1g logfiles' /var
 

   
 ПРЕДУПРЕЖДЕНИЯ 

В XFS реализована задержка распределения (еще известная как allocate-on-flush)
и это влияет на подсистему квот.
Квота подстчитывается только после того как блоки действительно выделены,
при этом возможно, что при буферизованной записи в файл информация по использованию
дискового пространства не обновляется немедленно.
Только когда данные действительно записаны на диск, либо через механизм ядра по сбросу
буферов или при ручной синхронизации по команде
 sync (2),

отчет по использованию дискового пространства будет показывать, что на
самом деле записано.
 

Кроме того, механизм распределения в XFS всегда резервирует за собой максимальный
объем пространства, прежде чем приступать к распределению.
Если места недостаточно, например, по причине превышения лимита квоты, это может
привести к отказу в распределении хотя на диске есть достаточно места.
Таким образом, ограничение квот иногда происходит в ситуациях, когда пользователь
имеет квоту и результат некоторых операций все еще не превышает квоту и
есть операция запущенная своим курсом.
Эти дополнительные накладные расходы находятся, как правило, в диапазоне десятков блоков. 
 

Оба эти свойства являются неизбежными побочными эффектами действий XFS,
поэтому следует иметь это в виду при назначении лимита блоков.
   
 ОШИБКИ 

Поддержка квот для файловых систем в режиме реального времени субтомов пока не реализована,
так же как и механизм предупреждений о превышении квоты. (утилита Linux
 warnquota (8)

может быть использована для получения аналогичной функциональности на этой платформе).
   
 ФАЙЛЫ 


 
 /etc/projects 

 
Отображает числовые идентификаторы проектов в деревья каталогов.
 /etc/projid 

 
Отображает числовые идентификаторы проектов в имена проектов.

 
   
 ДЛЯ IRIX СМОТРИТЕ ТАКЖЕ 

 quotaon (1M),

 xfs (4).

 
   
 ДЛЯ LINUX СМОТРИТЕ ТАКЖЕ 

 warnquota (8),

 xfs (5).

 
   
 СМОТРИТЕ ТАКЖЕ 

 df (1),

 mount (1),

 sync (2).

 
   
 ПЕРЕВОД 

Перевёл с английского Юрий Тимофеев < tim4dev@gmail.com > 2009
 
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОБЗОР СИСТЕМЫ КВОТ 
 
 Пользовательский взгляд на дисковые квоты 
 Выживание, когда лимит квоты исчерпан 
 
 КОМАНДЫ ПОЛЬЗОВАТЕЛЯ 
 УПРАВЛЕНИЕ СИСТЕМОЙ КВОТ 
 КОМАНДЫ АДМИНИСТРАТОРА 
 КВОТА ДЕРЕВА КАТАЛОГОВ 
 ФОРМАТЫ ФАЙЛОВ 
 ПРИМЕРЫ 
 ПРЕДУПРЕЖДЕНИЯ 
 ОШИБКИ 
 ФАЙЛЫ 
 ДЛЯ IRIX СМОТРИТЕ ТАКЖЕ 
 ДЛЯ LINUX СМОТРИТЕ ТАКЖЕ 
 СМОТРИТЕ ТАКЖЕ 
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