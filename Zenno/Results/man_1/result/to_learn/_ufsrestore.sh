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
 
 
 
 ufsrestore (1)   ufsrestore  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  ufsrestore  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
 
 
 Команды сопровождения 
 ufsrestore(1M) 
 
 

 НАЗВАНИЕ 

 ufsrestore  - инкрементное восстановление файловой системы 

 СИНТАКСИС 
 
 
/usr/sbin/ufsrestore i | r  | R  | t  | x  [ abcdfhlmostvyLT ] 
      [  архивный_файл  ] [  размер  ] [  файл_копии  ] [  n  ] 
      [  метка  ] [  время_ожидания  ] [  имя_файла  ... ]
 

 ОПИСАНИЕ 

 Утилита  ufsrestore  восстанавливает файлы с носителя резервной
копии, созданной с помощью команды  ufsdump . Действиями утилиты
 ufsrestores  управляет  ключевая строка , состоящая из одной буквы,
представляющей  функцию  ( i , 
 r ,  R ,  t 
или  x ) и нескольких необязательных 
букв-модификаторов. Ключевая строка не содержит пробелов. Аргументы
 модификаторов  функций задаются в командной строке в том же порядке, 
что и модификаторы в ключевой строке. 

 Аргументы  имя_файла , задаваемые в командной строке или интерактивно,
рассматриваются функциями  x  и  t  
как  шаблоны имен файлов  командного
интерпретатора - выбираются все файлы и каталоги, соответствующие
шаблонам. Метасимволы  * ,  ?  и  [ ] , если они задаются в командной
строке, необходимо маскировать от командного интерпретатора. Нет
способа замаскировать эти метасимволы так, чтобы задавать их явно
в имени файла. 

 Временные файлы  rstdir*  и  rstmode*  по умолчанию создаются в каталоге
 /tmp . Если определена и имеет непустое значение переменная среды
 TMPDIR , вместо  /tmp  используется соответствующий каталог. 

 ОПЦИИ 

       Буквы функций 

 Необходимо указать одну (и только одну) из следующих букв, задающих
функцию: 

 
 i 
Интерактивное восстановление. После чтения с носителя информации о
каталогах,  ufsrestore  запускает интерактивный интерфейс,
позволяющий проходить по иерархии каталогов резервной копии
и выбирать отдельные файлы для извлечения. Описание доступных при
этом команд см. в разделе  "Интерактивные команды"  ниже.
 
 r 
Рекурсивное восстановление. Восстанавливает все содержимое
скопированной файловой системы в текущий каталог (который
должен быть точкой монтирования файловой системы). Для полного
восстановления файловой системы используйте эту функцию для
восстановления резервной копии уровня 0 и, затем, последовательно
всех инкрементных резрвных копий. Хотя эта функция предназначена
для полного восстановления пересозданной ("чистой") файловой системы,
если в файловой системе находятся файлы, не входящие в
резервную копию, они сохраняются.
 
 R 
Продолжение восстановления. Утилита  ufsrestore  запрашивает
определенный том многотомного архива, с которого надо возобновлять
полное восстановление (см. функцию  r  выше). Это позволяет утилите
 ufsrestore  начать с момента  контрольной точки , после которой в ходе
полного восстановления была прервана ее работа.
 
 t 
Содержание. Выдает имя каждого файла, имеющеголся на носителе. Если
аргументы  имя_файла  не заданы, выдается содержимое корневого
каталога. В результате, получается список всех файлов на носителе,
если только не указан также модификатор  h . Содержание берется с
носителя или с указанного  архивного_файла , заданного с помощью
модификатора  a . Этот модификатор нельзя использовать с функциями
 x  и  r .
 
 x 
Извлекает указанные файлы с носителя. Если указанное  имя_файла 
соответствует каталогу, содержимое которого записно на носителе,
и не указан модификатор  h , рекурсивно извлекается содержимое каталога.
Владелец, время изменения и права доступа, по возможности,
восстанавливаются. Существующие файлы перезаписываются и выдается
предупреждение. Если  имена_файлов  не указаны, извлекается корневой
каталог. Это приводит к восстановлению всей ленты, если только не
указан модификатор  h . Опция  x  используется для восстановления
частичных резервных копий файловой системы, не включающих все
содержимое файловых систем по определению.
 
 

       Модификаторы функций 

 
 a архивный_файл 
Читает содержание с архивного_файла, а не непосредственно с носителя.
Этот модификатор можно использовать вместе с функциями 
 t ,  i  или  x , что
позволяет проверить наличие файлов на носителе без его монтирования.
При использовании с функциями  x  и  i  (интерактивное восстановление)
перед восстановлением запрашивается том, содержащий файл(ы).
 
 b размер 
Коэффициент блокирования. Задает коэффициент блокирования при чтении
с ленты. Для приводов SCSI с лентами переменной длины необходимо
использовать коэффициент блокирования не меньший, чем при записи, если
только не используется стандартный коэффициент; в противном случае
будет выдано сообщение об ошибке. Учтите, что размер блока на ленте -
512 байтов. Максимальный коэффициент блокирования можно найти на
странице справочного руководства по соответствующем приводу.
 
 c 
Преобразует содержимое носителя в формате 4.1BSD в новый формат
файловой системы  ufs .
 
 d 
Отладка. Включает выдачу отладочных сообщений.
 
 f файл_копии 
Использует указанный  файл_копии  вместо  /dev/rmt/0  в качестве
носителя резервной копии. Обычно  файл_копии  задает специальный
файл устройства для дисковода дискет или привода ленты. Если в
качестве  файла_копии  указан дефис ( - ),  ufsrestore  читает со
стандартного входного потока. Это позвляет использовать
 ufsdump(1M)  и  ufsrestore  в конвейере для копирования файловой
системы: 

 
example# ufsdump 0f - /dev/rdsk/c0t0d0s7 \ 
| (cd /home;ufsrestore xf -)
 

 Если имя файла имеет вид  машина:устройство , резервное
копирование ведется на указанную машину по сети с помощью команды 
 rmt(1M) . Поскольку команда
 ufsrestore  обычно выполняется от имени пользователя
 root , имя локальной машины должно быть указано в файле
 /.rhosts  на удаленной машине. Если файл задан в виде
 пользователь@машина:устройство , утилита  ufsrestore 
попытается работать от имени указанного пользователя на удаленной
машине. Указанный пользователь на удаленной машине должен иметь файл
 .rhosts , позволяющий обращаться к удаленной машине без пароля
одноименному локальному пользователю. 
 
 h 
Извлекать или выдавать только сами каталоги, без содержимого. Это
предотвращает иерархическое восстановление с ленты полных поддеревьев.
 
 l 
Автозагрузка. При достижении конца ленты до завершения восстановления,
отключить устройство и подождать его готовности в течение двух минут 
(стандартное значение, см. модификатор  T ). Это позволяет устройству с
автозагрузчиком (stackloader) загрузить новую ленту. Если 
устройство будет готово в течение двух минут, восстановление
продолжается. Если же нет, запросить следующую ленту и ждать.
 
 L метка 
Задает метку, которая должна появляться в заголовке файла резервной
копии. Если метки не совпадают,  ufsrestore  выдает диагностическое
сообщение и завершает работу. Метка ленты специфична 
для формата  ufsdump  и не имеет ничего общего со стандартными метками
лент IBM или лент стандарта ANSI.
 
 m 
Извлекает по номерам индексных дескрипторов, а не по именам файлов, 
чтобы избежать генерации полных имен файлов. Независимо от местонахождения
файлов в иерархии резервной копии, они восстанавливаются в текущий каталог
с именами, соответствующими номеру индексного дескриптора. Это
удобно, если извлекается небольшое количество файлов.
 
 o 
Отключение. Отключает привод при завершении резервного копирования
или при достижении конца носителя, перемотав предварительно ленту или
выбросив дискету. Для некоторых автоматически загружаемых 8 мм лент,
лента автоматически выбрасывается из устройства.
 
 s n 
Переход к  n -ному файлу при наличии нескольких файлов резервных копий
на одной ленте. Например, команда: 

 example# ufsrestore xfs /dev/rmt/0hn 5 

 начнет восстановление с пятого файла на ленте при считывании
первого тома резервной копии. Если резервная копия занимает несколько
томов, все тома, кроме первого, начинают читаться с позиции 0,
независимо от указанного модификатора  s n . 

 Если указан модификатор  s n , носитель резервной копии должен быть
перемотан в начало (BOT - beginning  of tape). Иначе не удастся прочитать
содержание резервной копии, так как это выполняется путем пропуска
следующих  n -1 файла на ленте с текущей позиции, а не с начала. Так
сделано потому, что абсолютное позиционирование на некоторых
устройствах требует очень много времени.
 
 T время_ожидания[hms] 
Устанавливает, сколько ждать завершения команды автоматической загрузки. Эта
опция игнорируется, если вместе с ней не задана опция  l . 
Стандартное время ожидания - две минуты. Единицы измерения времени
можно задавать с помощью суффиксов  h  (часы),  m  (минуты) или  s  (секунды).
По умолчанию время задается в минутах.
 
 v 
Информативное восстановление. Утилита  ufsrestore  выдает тип, имя и номер
индексного дескриптора каждого восстанавливаемого файла.
 
 y 
Не спрашивать о прекращении восстановления в случае ошибок чтения
ленты. Утилита  ufsrestore  попытается пропустить сбойные блоки и,
насколько возможно, продолжить восстановление.
 
 

       Интерактивные команды 

 При вызове с опцией  i  утилита  ufsrestore  входит в  интерактивный режим . 
Интерактивные команды немного напоминают командный интерпретатор. Для команд,
принимающих аргумент, стандартным значением является текущий каталог.
Поддерживаются следующие интерактивные опции:

 
 add [имя_файла] 
Добавляет указанный  файл  или каталог к списку восстанавливаемых
файлов. Если указан каталог, добавляется рекурсивно и все его содержимое
(если только не указан модификатор  h ).
 
 cd каталог 
Перейти в указанный каталог (в файле резервной копии).
 
 delete [имя_файла] 
Уадялет текущий каталог либо указанный  файл  или каталог из списка
восстанавливаемых. Если указан каталог, удаляется рекурсивно и
все его содержимое (если только не указан модификатор  h ). Самый простой
способ выосстановить большинство файлов из каталога - добавить этот
каталог в список восстанавливаемых, а затем удалить файлы, которые
надо пропустить.
 
 extract 
Извлекает все файлы из списка восстановления. Утилита
ufsrestore запрашивает, какой том пользователь хочет смонтировать.
Самый быстрый способ извлечь небольшое количество файлов - начать
с последнего тома и переходить к первым. Если в командной
строке указан модификатор  s  n , при чтении том 1 будет автоматически
читаться с  n -го файла.
 
 help 
Выдает краткую информацию о поддерживаемых командах.
 
 ls [каталог] 
Выдает список файлов в указанном или текущем  каталоге ,
который задается с помощью точки ( . ). К именам каталогов
добавляется суффикс ' / ' (косая). В начале записей файлов,
включенных в список восстановления, выдается звездочка ( * ).
Если задана опция информативного восстановления ( v ), выдаются
также номера индексных дескрипторов.
 
 marked [каталог] 
Аналогична  ls , но выдаются только файлы, включенные в список восстанавливаемых.
 
 pager 
Управляет постраничной выдачей результатов команд
 ls  и  marked . Используется программа. задаваемая переменной среды
 PAGER  или  more(1) , если эта переменная не задана. Значение переменной
 PAGER  может включать аргументы (через пробел), передаваемые программе
постраничного проcмотра.
 
 pwd 
Выдает полное имя текущего каталога.
 
 quit 
Утилита  ufsrestore  немедленно завершает работу, даже если список
восстановления не пуст.
 
 setmodes 
Запрашивает:  set owner/mode for `.' (period) . Введите   y , чтобы
подтвердить установку прав доступа, владельца и времени изменения
для текущего каталога, в который восстанавливаются файлы, такими же,
как и у корневого каталога скопированной файловой системы. Обычно
именно это и требуется при восстановлении всей файловой системы или
восстановлении избранных файлов в те же каталоги, из которых они были
скопированы. Введите  n , чтобы оставить атрибуты текущего каталога без
изменений. Обычно так делают при восстановлении части резервной копии
в другой каталог, отличающийся от исходного на момент копирования.
 
 setpager команда 
Задает команду для постраничного вывода результатов вместо стандартной,
унаследованной из среды. В командной строке можно задавать не только
саму команду, но и ее аргументы.
 
 verbose 
Переключает состояние модификатора  v . Если действует модификатор  v ,
команда  ls  выдает номера индексных дескрипторов для всех файлов, и в ходе
восстановления  ufsrestore  выдает информацию о каждом восстанавливаемом файле.
 
 what 
Выдает заголовок резервной копии с носителя.
 
 

 ОПЕРАНДЫ 

 Поддерживаются следующие операнды: 
 
 имя_файла 
 Задает полные имена файлов (или каталогов), которые необходимо
восстановить на диск. Если только не указан модификатор функции  h ,
при указании каталога будут рекурсивно восстанавливаться все его файлы и
подкаталоги. Имена файлов ассоциируются с функциями 
 x  или  t  и должны
идти последними. 
 

 ИСПОЛЬЗОВАНИЕ 

 Описание особенностей работы утилиты ufsdump с файлами размером
более 2 Гбайтов (2**31 байтов) см. на странице справочного руководства
 largefile(5) . 

 СТАТУС ВЫХОДА 

 При завершении работы возвращаются следующие значения: 

 
 0   Успешное завершение. 
 1   Произошла ошибка. Выдаются подробные сообщения об ошибке. 
 

 ПЕРЕМЕННЫЕ СРЕДЫ 

 
 PAGER 
Команда для использования в качестве фильтра, оеспечивающего
постраничную выдачу результатов. Кроме имени команды можно задавать
и опции. По умолчанию используется команда  more(1) .
 
 TMPDIR 
Задает каталог для размещения временных файлов. Если эта переменная
среды не задана, используется стандартный каталог,  /tmp .
 
 

 ФАЙЛЫ 

 
 /dev/rmt/0 
стандартное устройство резервного копирования 
 $TMPDIR/rstdir* 
файл, содержащий каталоги ленты 
 $TMPDIR/rstmode* 
владелец, права доступа и временные отметки для каталогов 
 ./restoresymtable 
информация, передаваемая между инкрементными восстановлениями 
 

 АТРИБУТЫ 

 Описание следующих атрибутов см. на странице справочного руководства
 attributes(5) : 

 
 ТИП АТРИБУТА 
 ЗНАЧЕНИЕ АТРИБУТА 
 Доступность 
 SUNWcsu 
 

 ССЫЛКИ 

 
	 more(1) ,
	 mkfs(1M) ,
	 mount(1M) ,
	 rmt(1M) ,
	 ufsdump(1M) ,
	 attributes(5) , 
	 largefile(5) 
 

 ДИАГНОСТИКА 

 Утилита  ufsrestore  сообщает о недопустимых опциях. 

 Утилита сообщает об ошибках чтения. Если была указана опция  y ,
или пользователь ответил  y  на запрос продолжения в случае ошибки,
 ufsrestore  попытается продолжить восстановление. 

 Если резервная копия занимает более одной ленты, утилита  ufsrestore 
требует от пользователя сменить ленту. Если задана 
функция  x  или  i ,
 ufsrestore  также спрашивает, какой том будет смонитрован. Если
указан модификатор  s  и смонтирован первый том, он автоматически 
перематывается на указанный по номеру файл. 

 Утилита  ufsrestore  выполняет многочисленные проверки согласованности
и информирует о проблемах. Большинство проблем "самоочевидны" или не 
должны встречаться. Ниже описаны типичные ошибки восстановления. 

 
 Converting to new file system format 
Преобразование в новый формат файловой системы. 
 
Загружена лента резервной копии, созданной со старой файловой системы.
Она автоматически преобразована в новый формат файловой системы.
 
 filename : not found on tape 
 имя_файла : не найдено на ленте 
 
Указанное  имя_файла  имеется в каталоге ленты, но самого файла на
ленте нет. Это происходит вследствие ошибки чтения ленты при поиске
файла, при использовании ленты резервной копии, создававшейся с 
активной файловой системы или при восстановлении частичной резервной
копии функцией  r .
 
 expected next file  inumber , got  inumber 
ожидался следующий файл  inumber , получен -  inumber 
 
Обнаружен файл, не указанный в каталоге. Это может произойти при
использовании резервной копии, созданной с активной
файловой системы.
 
 Incremental tape too low 
Слишком низкий уровень инкрементной резервной копии 
 
При выполнении инкрементного восстановления загружена лента,
записанная перед предыдущей инкрементной или имеющая слишком
низкий уровень инкремента.
 
 Incremental tape too high 
Слишком высокий уровень инкрементной резервной копии 
 
При выполнении инкрементного восстановления загружена лента, не
покрывающая временной интервал сразу после завершения предыдущей 
инкрементной ленты или имеющая слишком высокий уровень инкремента.
 
 media read error: invalid argument 
ошибка чтения носителя: недопустимый аргумент 
 
Коэффициент блокирования для чтения меньше, чем использованный 
при записи данных.
 
 Tape read error while restoring  filename 
Ошибка чтения ленты при восстановлении  имя_файла 
 
 Tape read error while skipping over inode  inumber 
Ошибка чтения ленты при пропуске индексного дескриптора  inumber 
 
 Tape read error while trying to resynchronize 
Ошибка чтения ленты при попытке повторной синхронизации 
 
 A tape read error has occurred 
Произошла ошибка чтения ленты 
 
Если указано  имя_файла , значит, его содержимое частично не
удается восстановить. Если пропускается индексный дескриптор
или происходит попытка повторной синхронизации ленты, то
восстановленные файлы не повреждены, но некоторые файлы не
удается найти на ленте.
 
 resync ufsrestore, skipped  num 
повторная синхронизация  ufsrestore , пропущено  num  блоков 
 
После ошибки чтения с ленты утилите  ufsrestore  может потребоваться
повторная синхронизация. Это сообщение информирует о количестве
блоков, которые при этом пришлось пропустить.
 
 Incorrect tape label. Expected ` foo ', got ` bar '. 
Неверная метка ленты. Ожидалась ' foo ', на самом деле - ' bar '. 
 
Была указана опция  L  и заданное для нее значение не совпадает
с записанным в заголовке файла резервной копии.
 
 

 ПРИМЕЧАНИЯ 

 Утилита  ufsrestore  может не восстановить инкрементные резервные копии,
сделанные с активных файловых систем. 

После полного восстановления необходимо выполнить резервное копирование
уровня 0. Поскольку утилита  ufsrestore  работает в пользовательском
режиме, она не может управлять выделением индексных дескрипторов.
Это означает, что при восстановлении  ufsrestore  перемещает файлы, хотя
и не изменяет их содержания. Поэтому необходимо создать полную
резервную копию для получения нового набора каталогов, отражающих новые
позиции (номера индексных дескрипторов) файлов, чтобы последующие инкрементные
резервные копии были корректными.

 Последнее изменение: 14 апреля 1999 года 

 
Copyright 2002  В. Кравчук ,
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