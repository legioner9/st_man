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
 
 
 
 auditctl (8)   auditctl  (2)   ( FreeBSD man: Системные вызовы ) >>  auditctl  (8)   ( Русские man: Команды системного администрирования )   auditctl  (8)   ( Linux man: Команды системного администрирования ) 
   
 ИМЯ 

auditctl - инструмент для управления аудитом, предоставляемого Linux ядром.
   
 ОБЗОР 

 auditctl  [ опции ]
   
 ОПИСАНИE 

 auditctl  используется для контроля поведения, получения состояния и добавления/удаления правил аудита, предоставляемого Linux ядром версии 2.6.
   
 ОПЦИИ 

 
 -b  backlog 

 
Установить максимальное количество доступных для аудита буферов, ожидающих обработки (значение в ядре по умолчанию - 64). Если все буфера заняты, то флаг сбоя будет выставлен ядром для его дальнейшей обработки. 
 -e  [ 0 .. 2 ] 
Установить флаг блокировки.  0  позволит на время отключить аудит, включить его обратно можно, передав  1  как параметр. Если установлено значение опции  2 , то защитить конфигурацию аудита от изменений. Каждый, кто захочет воспользоваться этой возможностью, может поставить эту команду последней в audit.rules. После этой команды все попытки изменить конфигурацию будут отвергнуты с уведомлением в журналах аудита. В этом случае, чтобы задействовать новую конфигурацию аудита, необходимо перезагрузить систему аудита.
 -f  [ 0 .. 2 ] 
Установить способ обработки для флага сбоя.
 0 =silent  1 =printk  2 =panic. Эта опция позволяет определить каким образом ядро будет обрабатывать критические ошибки. Например, флаг сбоя выставляется при следующих условиях: ошибки передачи в пространство демона аудита, превышение лимита буферов, ожидающих обработки, выход за пределы памяти ядра, превышение лимита скорости выдачи сообщений. Значение по умолчанию:  1 . Для систем с повышенными требованиями к безопасности, значение  2  может быть более предпочтительно.
 -h 

 
Краткая помощь по аргументам командной строки.
 -i 

 
Игнорировать ошибки при чтении правил из файла.
 -l 

 
Вывести список всех правил по одному правилу в строке.
 -k  ключ 

 
Установить на правило ключ фильтрации. Ключ фильтрации - это произвольная текстовая строка длиной не больше 31 символа. Ключ помогает уникально идентифицировать записи, генерируемые в хода аудита за точкой наблюдения.
 -m  текст 

 
Послать в систему аудита пользовательское сообщение. Это может быть сделано только из-под учетной записи root.
 -p  [ r | w | x | a ] 
Установить фильтр прав доступа для точки наблюдения.  r =чтение,  w =запись,  x =исполнение,  a =изменение атрибута. Не путайте эти права доступа с обычными правами доступа к файлу - они определяют типы системных вызовов, которые выполняют данные действия. Заметьте, системные вызовы read и write не включены в этот набор, поскольку логи аудита были бы перегружены информацией о работе этих вызовов.
 -r  частота 

 
Установить ограничение скорости выдачи сообщений в секунду ( 0  - нет ограничения). Если эта  частота  не нулевая и она превышается в ходе аудита, флаг сбоя выставляется ядром для выполнения соответствующего действия. Значение по умолчанию: 0.
 -R  файл 

 
Читать правила из  файла . Правила должны быть расположены по одному в строке и в том порядке, в каком они должны исполняться. Следующие ограничения накладываются на файл: владельцем должен быть root и доступ на чтение должен быть только у него. Файл может содержать комментарии, начинающиеся с символа '#'. Правила, расположенные в файле, идентичны тем, что набираются в командной строке, без указания 'auditctl'.
 -s 

 
Получить статус аудита.
 -a  список , действие 

 
Добавить правило с указанным  действием  к концу  списка . Заметьте, что запятая разделяет эти два значения. Отсутствие запятой вызовет ошибку. Ниже описаны имена доступных списков:
 
 
 task 

 
Добавить правило к списку, отвечающему за процессы. Этот список правил используется только во время создания процесса - когда родительский процесс вызывает fork() или clone(). При использовании этого списка вы можете использовать только те поля, которые известны во время создания процесса: uid, gid и т.д.
 entry 

 
Добавить правило к списку, отвечающему за точки входа системных вызовов. Этот список применяется когда необходимо создать событие для аудита, привязанное к точкам входа системных вызовов.
 exit 

 
Добавить правило к списку, отвечающему за точки выхода из системных вызовов. Этот список применяется когда необходимо создать событие для аудита, привязанное к точкам выхода из системных вызовов.
 user 

 
Добавить правило, отвечающего за список фильтрации пользовательских сообщений. Этот список используется ядром, чтобы отфильтровать события приходящие из пользовательского пространства, перед тем как они будут переданы демону аудита. Необходимо отметить, что только следующие поля могут быть использованы: uid, auid, gid и pid. Все остальные поля будут обработаны, как если бы они не совпали.
 exclude 

 
Добавить правило к списку, отвечающего за фильтрацию событий определенного типа. Этот список используется, чтобы отфильтровывать ненужные события. Например, если вы не хотите видеть avc сообщения, вы должны использовать этот список. Тип сообщения задается в поле msgtype. 
 
 

 
Ниже описаны доступные  действия  для правил:
 
 
 never 

 
Аудит не будет генерировать никаких записей. Это может быть использовано для подавления генерации событий. Обычно необходимо подавлять генерацию в верху списка, а не внизу, т.к. событие инициируется на первом совпавшем правиле.
 always 

 
Установить контекст аудита. Всегда заполнять его во время входа в системный вызов, и всегда генерировать запись во время выхода из системного вызова.
 
 

 -A  список , действие 

 
Добавить правило с указанным  действием  в начало  списка .
 -d  список , действие 

 
Удалить правило  с указанным  действием  из  списка . Правило удаляется только в том случае, если полностью совпали и имя системного вызова и поля сравнения.
 -D 

 
Удалить все правила и точки наблюдения.
 -S  [ Имя или номер системного вызова | all ] 
Любой  номер  или  имя  системного вызова может быть использован. Также возможно использование ключевого слова  all . Если какой-либо процесс выполняет указанный системный вызов, то аудит генерирует соответствующую запись. Если значения полей сравнения заданы, а системный вызов не указан, правило будет применяться ко всем системным вызовам. В одном правиле может быть задано несколько системных вызовов - это положительно сказывается на производительности, поскольку заменяет обработку нескольких правил.
 -F  [ n = v  |  n != v  |  n < v  |  n > v  |  n <= v  |  n >= v  |  n & v  |  n &= v ] 
Задать поле сравнения для правила. Атрибуты поля следующие: объект, операция, значение. Вы можете задать до 64 полей сравнения в одной команде. Каждое новое поле должно начинаться с  -F . Аудит будет генерировать запись, если произошло совпадение по всем полями сравнения. Допустимо использование одного из следующих 8 операторов: равно, не равно, меньше, больше, меньше либо равно, больше либо равно, битовая маска ( n & v ) и битовая проверка ( n &= v ). Битовая проверка выполняет операцию 'and' над значениями и проверяет, равны ли они. Битовая маска просто выполняет операцию 'and'. Поля, оперирующие с идентификатором пользователя, могут также работать с именем пользователя - программа автоматически получит идентификатор пользователя из его имени. То же самое можно сказать и про имя группы.
Поля сравнения могут быть заданы для следующих объектов:
 
 
 a0, a1, a2, a3 

 
Четыре первых аргумента, переданных системному вызову. Строковые аргументы не поддерживаются. Это связано с тем, что ядро должно получать указатель на строку, а проверка поля по значению адреса указателя не желательна. Таким образом, вы должны использовать только цифровые значения.
 arch 

 
Архитектура процессора, на котором выполняется системный вызов. Используйте 'uname -m', чтобы определить архитектуру. Если вы не знаете архитектуру вашей машины, но хотите использовать таблицу 32-х битных системных вызовов, и ваша машина поддерживает 32 бита, вы можете использовать  b32 . Подобно этому  b64  может быть использовано для использования таблицы 64-х битных системных вызовов.
 auid 

 
Это аббревиатура: audit uid - идентификатор пользователя, использованный для входа в систему.
 devmajor 

 
Главный номер устройства (Device Major Number)
 devminor 

 
Вспомогательный номер устройства (Device Minor Number)
 egid 

 
Действительный идентификатор группы
 euid 

 
Действительный идентификатор пользователя
 exit 

 
Значение, возвращаемое системным вызовом при выходе.
 fsgid 

 
Идентификатор группы, применяемый к файловой системе.
 fsuid 

 
Идентификатор пользователя, применяемый к файловой системе.
 gid 

 
Идентификатор группы
 inode 

 
Номер inode
 key 

 
Альтернативный способ установить ключ фильтрации. Смотри выше описание опции  -k .
 msgtype 

 
Используется для проверки совпадения с числом, описывающим тип сообщения. Может быть использован только в списке  exclude .
 obj_user 

 
Имя пользователя-владельца ресурса (в контексте SELinux)
 obj_role 

 
Роль ресурса (в контексте SELinux)
 obj_type 

 
Тип ресурса (в контексте SELinux)
 obj_lev_low 

 
Нижний уровень ресурса (в контексте SELinux)
 obj_lev_high 

 
Верхний уровень ресурса (в контексте SELinux)
 path 

 
Полный путь к файлу для точки наблюдения. Смотри ниже описание опции " -w ". Может быть использован только в списке  exit .
 perm 

 
Фильтр прав доступа для файловых операций. Смотри выше описание опции " -p ". Может быть использован только в списке  exit .
 pers 

 
Персональный номер операционной системы.
 pid 

 
Идентификатор процесса
 ppid 

 
Идентификатор родительского процесса.
 subj_user 

 
Имя пользователя-владельца процесса (в контексте SELinux)
 subj_role 

 
Роль процесса (в контексте SELinux)
 subj_type 

 
Тип процесса (в контексте SELinux)
 subj_sen 

 
Чувствительность процесса (в контексте SELinux)
 subj_clr 

 
Допуск процесса (в контексте SELinux)
 sgid 

 
Установленный идентификатор группы
 success 

 
Если значение, возвращаемое системным вызовом, больше либо равно 0, данный объект будет равен "true/yes", иначе "false/no". При создании правила используйте 1 вместо "true/yes" и 0 вместо "false/no".
 suid 

 
Установленный идентификатор пользователя
 uid 

 
Идентификатор пользователя
 
 

 -w  путь 

 
Добавить точку наблюдения за файловым объектом, находящемуся по указанному  пути . Вы не можете добавлять точку наблюдения к каталогу верхнего уровня - это запрещено ядром. Групповые символы (wildcards) также не могут быть использованы, попытки их использования будут генерировать предупреждающее сообщение. Внутренне точки наблюдения реализованы как слежение за inode. Таким образом, если вы установите точку наблюдения за каталогом, вы увидите файловые события, которые в действительности будут означать обновления метаданных этой inode, и вы можете не увидеть событий, непосредственно связанных с файлами. Если вам необходимо следить за всеми файлами в каталоге, рекомендуется создавать индивидуальную точку наблюдения для каждого файла. В противоположность к правилам аудита системных вызовов, точки наблюдения не оказывают влияния на производительность, связанную с количеством правил посылаемых в ядро.
 -W  путь 

 
Удалить точку наблюдения за файловым объектом, находящемуся по указанному  пути .
 
   
 ПРИМЕРЫ 

Чтобы увидеть все системные вызовы, используемые определенным процессом:
 
 auditctl -a entry,always -S all -F pid=1005 
 

 
Чтобы увидеть все файлы, открытые определенным пользователем:
 
 auditctl -a exit,always -S open -F auid=510 
 

 
Чтобы увидеть неудачные попытки вызова системной функции 'open':
 
 auditctl -a exit,always -S open -F success!=0 
 

 
   
 ФАЙЛЫ 

 
 /etc/audit/audit.rules 

 
 
 
   
 СМ. ТАКЖЕ 

 auditd (8).

 
   
 АВТОР 

Стив Граб (Steve Grubb)
 
   
 ПЕРЕВОД 

Перевод с английского Alexander Kolotov ( alexandr.kolotov@gmail.com ) 2007
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИE 
 ОПЦИИ 
 ПРИМЕРЫ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
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