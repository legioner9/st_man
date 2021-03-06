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
 
 
 
 eject (1)   eject  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  eject  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   eject  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

eject - "выбрасывает" сменные носители информации из устройств
   
 СИНТАКСИС 

eject -h
 

eject [-vnrsfqp] [<name>]
 

eject [-vn] -d
 

eject [-vn] -a on|off|1|0 [<name>]
 

eject [-vn] -c slot [<name>]
 

eject [-vn] -t [<name>]
 

eject [-vn] -x <speed> [<name>]
 

eject -V
 
   
 ОПИСАНИЕ 

 
 Eject 

позволяет программно освободить устройства от сменных носителей информации
(обычно диска CD-ROM, дискеты, ленты, JAZ или ZIP диска). Команда также может
управлять устройством CD-ROM с несколькими сменными дисками, функцией авто-выброса,
которая поддерживается некоторыми устройствами CD-ROM при попытке их закрытия.
 
Освобождаемое устройство указывается аргументом <name>. В качество аргумента <name> можно задать
файл устройства или точку монтирования, как с указанием полного пути с предшествующими
"/dev" или "/mnt", так и без них. Если аргумент <name> не задан, по умолчанию используется
ключевое слово "cdrom".
 
Используются четыре различных способа освобождения устройств от сменных носителей информации,
соответственно для устройства CD-ROM, SCSI-устройства, дискеты и ленточного устройства.
По умолчанию команда eject пытается использовать все четыре способа по порядку до тех пор, пока
операция не увенчается успехом. Если устройство в данный момент смонтировано, перед его
освобождением оно будет размонтировано.
 
 

   
 ОПЦИИ КОМАНДНОЙ СТРОКИ 

 
 -h 

 
Эта опция выводит описания опций команды
 eject ,

которые можно задавать в командной строке.
 
 -v 

 
Эта опция заставляет команду
 eject 

выполняться в режиме подробного информирования о предпринимаемых
ею действиях.
 
 -d 

 
Если вызов происходит с этой опцией, команда
 eject 

отображает имя устройства, принятого по умолчанию.
 
 -a on|1|off|0 

 
Эта опция управляет режимом авто-выброса, который поддерживается некоторыми устройствами.
Если опция включена (on или 1), то при закрытии устройства происходит автоматическое
"выбрасывание" носителя информации.
 
 -c <slot> 

 
С помощью этой опции можно выбрать CD-слот устройства ATAPI/IDE CD-ROM,
чтобы сменить носитель (например, музыкальный CD). Эта возможность поддерживается
начиная с ядра Linux 2.0 и выше. Устройство CD-ROM не должно использоваться
(монтирование CD с данными или проигрывание музыкального CD) во время выполнения
изменений. Здесь следует отметить, что нумерация слотов начинается с 0, т.е. первый
слот будет 0, а не 1.
 
 -t 

 
Эта опция посылает устройству CD-ROM команду "закрыть" (спрятать) лоток (подставку для CD).
Не все устройства поддерживают эту команду.
 
 -x <speed> 

 
С помощью этой опции устройству CD-ROM посылается команда выбора скорости вращения
носителя информации. Аргумент <speed> является номером, соответствующим необходимой
скорости (т.е. 8 для скорости 8X) или 0 для максимальной скорости передачи данных данного
устройства. Не все устройства поддерживают эту команду, к тому же вы можете указать только
те скорости, которые поддерживаются данным устройством. Следует отметить, что установка
скорости этой опцией каждый раз будет сбрасываться при смене носителя информации в CD-ROM.
Эта опция может быть использована как самостоятельная, так и совместно с опциями -t и -c.
 
 -n 

 
Эта опция сообщает о выбранном устройстве, но не предпринимает никаких
действий.
 
 -r 

 
Эта опция указывает, что устройство должно быть освобождено от носителя с помощью способа
пригодного для CDROM.
 
 -s 

Эта опция указывает, что устройство должно быть освобождено от носителя с помощью способа
пригодного для SCSI-устройств.
 
 -f 

 
Эта опция указывает, что устройство должно быть освобождено от носителя с помощью способа
пригодного для дискет.
 
 -q 

 
Эта опция указывает, что устройство должно быть освобождено от носителя с помощью способа
пригодного для ленточного устройства.
 
 -p 

 
Эта опция позволяет вам использовать /proc/mounts вместо /etc/mtab, а также не выполнять
запись в файл /etc/mtab (т.е. выполнить  umount (1) с опцией -n).
 
 -V 

 
Эта опция отображает версию программы
 eject 

и завершает её работу.
 
 
   
 ДЛИННАЯ ФОРМА ОПЦИЙ 

Все перечисленные выше опции являются аббревиатурами соответствующих им длинных форм названий,
которые представлены ниже:
 
 

-h --help
 

-v --verbose
 

-d --default
 

-a --auto
 

-c --changerslot
 

-t --trayclose
 

-x --cdspeed
 

-n --noop
 

-r --cdrom
 

-s --scsi
 

-f --floppy
 

-q --tape
 

-V --version
 

-p --proc
 

 
   
 ПРИМЕРЫ 

 

Освобождает устройство принятое в системе по умолчанию:
 
 
eject
 
 

Освобождает устройство или точку монтирования с именем cdrom:
 
 
eject cdrom
 
 

Освобождает устройство /dev/cdrom:
 
 
eject /dev/cdrom
 
 

Освобождает точку монтирования /mnt/cdrom/:
 
 
eject /mnt/cdrom/
 
 

Освобождает 4-е IDE устройство:
 
 
eject hdd
 
 

Освобождает первое SCSI устройство:
 
 
eject sda
 
 

Освобождает используемый логический диск SCSI (например, устройство ZIP):
 
 
eject sda4
 
 

"Выбрасывает" 5-й диск устройства CD-ROM с несколькими сменными дисками:
 
 
eject -v -c5 /dev/cdrom
 
 

Включает авто-выброс на устройстве SoundBlaster CD-ROM:
 
 
eject -a on /dev/sbpcd
 
 
   
 КОДЫ ЗАВЕРШЕНИЯ РАБОТЫ 

 

 
Возвращает 0, если операция была успешной; 1 - если операция была неудачной или
выполнялась некорректная команда.
 
   
 ЗАМЕЧАНИЯ 

 

 
Команда 
 eject 

работает только с устройствами, которые поддерживают один или более из четырех
возможных методов "выбрасывания". К ним относятся большинство устройств CD-ROM
(модель IDE, SCSI), некоторые ленточные  SCSI устройства, устройства JAZ, устройства ZIP
(использующие параллельный порт, интерфейс SCSI и IDE) и сменные флоппи диски LS120.
Есть сообщения об успешной работе с флоппи устройствами от Sun SPARC и Apple Macintosh systems.
Если у вас не работает команда
 eject 

, в большинстве случаев это вызвано ограничениями в драйвере ядра ОС для данного устройства
и не связано с командой
 eject 

как таковой.
 
Опции -r, -s, -f и -q позволяют управлять методом освобождения устройства, который будет
использован командой eject. Можно указывать более чем один метод. Если ни одна из этих
опций не указана, будут активны все четыре метода (такой набор прекрасно срабатывает в
большинстве случаев).
 
 Eject 

не всегда может определить смонтированное устройство (например, когда устройство имеет
несколько имен). Если имя устройства задано символической ссылкой, тогда
 eject 

попытается по ссылке найти это устройство и работать с ним непосредственно.
 
Если
 eject 

определит, что устройство имеет расширенную таблицу разделов, то перед тем как выполнить
операцию "выбрасывания" носителя она попытается размонтировать все смонтированные разделы
устройства. Если размонтирование будет неудачным, программа не будет пытаться "выбрасывать"
носитель.
 
Вы можете "выбрасывать" аудио CD. Правда некоторые устройства CD-ROM отказываются открывать
лоток (подставку для CD), если в устройстве нет CD. Некоторые устройства также не поддерживают
команду "закрытия" лотка (опция -t).
 
Если устройством поддерживается возможность авто-выброса, тогда после запуска этой команды оно
будет всегда открывать лоток. Не все ядра Linux поддерживают режим авто-выброса для
устройств CD-ROM. При этом нет верного способа определить состояние режима авто-выброса.
 
Вы должны устанавливать соответствующие привилегии для доступа к файлам устройств. Для
работы и последующего освобождения некоторых из них (например, устройств SCSI) могут
потребоваться привилегии суперпользователя (root).
 
Эвристический метод поиска устройств, заданных именем, заключается в следующем: если
имя заканчивается слешем, то считается, что это сменное устройство (которое поддерживает
возможность обращения по имени файла через интерфейс командной оболочки); если имя
начинается с '.' или '/', тогда выполняется попытка открыть устройство как файл или
точку монтирования. Если это заканчивается неудачей, тогда программа попытается предварить
имя строкой '/dev/', '/mnt/', '/dev/cdroms', '/dev/rdsk/', '/dev/dsk/' или './'
в надежде, что файловое устройство или точка монтирования будет обнаружено как такое,
которое может быть открыто. Программа использует файл /etc/mtab для контроля за монтируемыми
устройствами. Если его использование неудачно, тогда при текущем размонтировании устройств
для контроля за точками монтирования будет использован файл /etc/fstab.
 
Рекомендуется создание символических ссылок таких как /dev/cdrom или /dev/zip
поскольку команда
 eject 

сможет определить соответствующие устройства по этим легко запоминающимся именам.
 
Вы можете создать псевдоним команды eject (в командной оболочке) с необходимыми опциями,
которые будут учитывать ваши индивидуальные требования.
 
   
 АВТОР 

 Eject 

была написана Jeff Tranter ( tranter@pobox.com ) и распространяется
на условиях GNU General Public License. Для подробной информации см. файл
COPYING и комментарии в исходном коде.
 
Опция -x была добавлена Nobuyuki Tsuchimura ( tutimura@nn.iij4u.or.jp )
благодаря Roland Krivanek ( krivanek@fmph.uniba.sk ) и его команде cdrom_speed.
 
   
 СМ. ТАКЖЕ 

 
 mount (2),  umount (2),  mount (8),  umount (8)
 

/usr/src/linux/Documentation/cdrom/

   
 ПЕРЕВОД 

Перевел с английского Aleksander N.Gorohovski < angel@feht.dgtu.donetsk.ua > 11.03.2005
 

 
   Index 
 
 ИМЯ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ КОМАНДНОЙ СТРОКИ 
 ДЛИННАЯ ФОРМА ОПЦИЙ 
 ПРИМЕРЫ 
 КОДЫ ЗАВЕРШЕНИЯ РАБОТЫ 
 ЗАМЕЧАНИЯ 
 АВТОР 
 СМ. ТАКЖЕ 
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