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
 
 
 
 ln (1)   ln  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   ln  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  ln  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   ln  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   ln  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

ln - создает ссылки между файлами
   
 ОБЗОР 

 ln [опции] 

 исходный  [ куда ] 

 

 ln [опции] 

 исходный... каталог 

 
Опции POSIX:
 [-f] [--] 

 
Опции GNU (краткая форма):
 [-bdfinsvF] 

 [-S  backup-suffix ] 

 [-V {numbered,existing,simple}] 

 [--help] [--version] [--] 

   
 ОПИСАНИЕ 

В Unix существует два вида ссылок, обычно называемых жесткие ссылки
и символьные, или "мягкие" ссылки. Жесткая ссылка является всего
лишь именем какого-либо файла. (Таким образом, файл может иметь
несколько имен. Он будет удален с диска только тогда, когда будет
удалено последнее из его имен. Количество имен, которые имеет файл,
показывает команда
 ls (1).

Нет такого понятия, как настоящее имя: все имена имеют одинаковый
статус. Обычно, но не обязательно, все имена файла находятся на
файловой системе, которая также содержит и его данные.)
 

Мягкая ссылка (или символьная ссылка, или symlink) полностью отличается
от жесткой ссылки: она является маленьким специальным файлом, который
содержит путь к файлу. Таким образом, мягкая ссылка может указывать на файлы,
которые находятся на других файловых системах (например,
смонтированных по NFS с другой машины) и не нуждается в наличии
того файла, на который она указывает.
Когда происходит попытка доступа (с помощью системных вызовов
 open (2)

или
 stat (2)

), ядро операционной системы заменяет ссылку на тот путь, который она
содержит.
(Однако, команда
 rm (1)

и системный вызов
 unlink (2)

удаляют саму ссылку, а не файл, на который она указывает. Для чтения
состояния символьной ссылки, а также имени файла, на который она
указывает, используются системные вызовы
 lstat (2)

и
 readlink (2) . 

Для других системных вызовов, которые зависят и различаются
для разных операционных систем, может осуществляться работа как
с самой символьной ссылкой, так и с файлом, на который она указывает.)
 

 ln 

делает ссылки между файлами. По умолчанию делаются жесткие ссылки;
при указании опции
 -s , 

делаются символьные (или мягкие) ссылки.
 

Если задан только один файл, то для него делается ссылка в текущем
каталоге с таким же именем,
как у этого файла. (Эта возможность является расширением GNU).
В противном случае, если последний аргумент является именем существующего
каталога, то
 ln 

создаст ссылки в этом каталоге для каждого из
 исходных 

файлов, с такими же именами (последний компонент полного имени)
как и у 
 исходных 

файлов.  (Однако, смотрите описание опции
 --no-dereference , 

данное ниже.) 
В противном случае, если задано два файла, то создается ссылка с
именем
 куда 

для 
 исходного 

файла.
Если последний аргумент не является каталогом и задано более чем
два аргумента, то будет выдаваться сообщение об ошибке.
 

По умолчанию
 ln 

не удаляет существующие файлы или существующие символьные ссылки.
(Таким образом, команда
 ln 

может быть использована для целей блокировки: она будет успешно
срабатывать только если
 куда 

уже не существует.)
Однако, можно заставить его удалять файлы и ссылки, указав опцию -f.
 

В существующих реализациях, если команда
 ln 

может создавать жесткую ссылку на каталог, то она может это делать
только от лица суперпользователя. POSIX запрещает системному вызову
 link (2)

и утилите
 ln 

создавать жесткие ссылки на каталоги (но не запрещает создавать жесткие
ссылки на файлы, которые находятся на других файловых системах).
   
 ОПЦИИ POSIX 

 
 -f 

 
Удалять существующие файлы
 куда .

 -- 

 
Завершает список опций.
 
   
 ОПЦИИ GNU 

 
 -d, -F, --directory 

 
Позволяет суперпользователю делать жесткие ссылки на каталоги.
 -f, --force 

 
Удалять существующие файлы
 куда .

 -i, --interactive 

Запрашивать подтверждение удаления файлов
 куда .

 -n, --no-dereference 

 
Считать файл
 куда 

обычным файлом, если явно заданный параметр
 куда 

является символьной ссылкой на каталог.
 
Когда
 куда 

является каталогом, а не символьной ссылкой на него, неоднозначностей
не возникает. Ссылка создается в этом каталоге. Но когда
 куда 

является символьной ссылкой на каталог, то возможны две трактовки
запроса пользователя.
 ln 

может считать
 dest 

обычным каталогом и создавать ссылку внутри него. С другой стороны,
 dest 

может быть рассмотрен не как каталог -- а как собственно ссылка. В
этом случае
 ln 

должна ее удалить или сделать резервную копию перед созданием новой
ссылки. По умолчанию символьная ссылка на каталог считается обычным
каталогом.
 -s, --symbolic 

 
Делать символьные ссылки вместо жестких ссылок.  Данная опция будет
вызывать сообщение об ошибке для тех систем, которые не поддерживают
символьные ссылки.
 -v, --verbose 

 
Выдавать имя каждого файла перед тем как создавать для него ссылку.
 
   
 ОПЦИИ РЕЗЕРВНОГО КОПИРОВАНИЯ GNU 

GNU-версии таких программ как
 cp ,

 mv ,

 ln ,

 install 

и
 patch  

могут, если потребуется, делать резервные копии файлов, которые будут
перезаписаны, изменены или уничтожены.  При желании, резервные копии
файлов создаются с помощью опции -b.  Как они будут называться,
задает опция -V.  В случае, если имя файла резервной копии создается
с помощью добавления суффикса к имени исходного файла, то суффикс
указывается с помощью опции -S.
 
 -b, --backup 

 
Делать резервные копии файлов, которые будут перезаписаны или удалены.
 -S  СУФФИКС , --suffix= СУФФИКС 

 
Добавить
 СУФФИКС 

к имени файла при создании его резервной копии.
 
Если данная опция не задана, то суффикс можно также задать, используя
переменную окружения 
 SIMPLE_BACKUP_SUFFIX 

Если не задана ни опция, ни переменная, то по умолчанию используется
суффикс ~.
 -V  МЕТОД , --version-control= МЕТОД 

 
 
Определяет, как будут называться резервные копии файлов. Аргумент
 МЕТОД 

может принимать значения numbered (или t), existing (или nil)
и never (или simple). Если данная опция не задана, то будет
использовано значение переменной окружения
 VERSION_CONTROL .

Если же не задано значение и этой переменной, то по умолчанию тип
резервного копирования устанавливается в existing.
 

Данная опция соответствует переменной version-control в Emacs.
Допустимыми значениями
 МЕТОД 

являются (допускаются однозначные сокращения):
 
 t ,  numbered 

 
Всегда делать нумерованные резервные копии файлов.
 nil ,  existing 

 
Делать нумерованные резервные копии файлов для файлов, которые уже их
имеют и простые резервные копии для остальных файлов.
 never ,  simple 

 
Всегда делать простые резервные копии.
 
 

 
 
   
 СТАНДАРТНЫЕ ОПЦИИ GNU 

 
 --help 

 
Выдать подсказку на стандартный вывод и успешно завершиться.
 --version 

 
Выдать информацию о версии на стандартный вывод и успешно завершиться.
 -- 

 
Служит для обозначения конца списка опций.
 
 
   
 ОКРУЖЕНИЕ 

При работе обычным образом используются значения переменных LANG, LC_ALL, LC_CTYPE и
LC_MESSAGES.
   
 СОВМЕСТИМОСТЬ 

POSIX 1003.2. Однако, POSIX 1003.2 (1996) не обсуждает мягкие ссылки.
Мягкие ссылки были введены в BSD, и до этого не встречались в
System V версии 3 (и более старых версий).
   
 СМОТРИТЕ ТАКЖЕ 

 ls (1),

 rm (1),

 link (2),

 lstat (2),

 open (2),

 readlink (2),

 stat (2),

 unlink (2)

   
 ЗАМЕЧАНИЯ 

Данная страница описывает версию
 ln 

из пакета fileutils-4.0;
другие версии могут иметь небольшие отличия.
Исправления и дополнения присылайте по адресу  aeb@cwi.nl .
Сообщения об ошибках в этой программе присылайте по адресу
 fileutils-bugs@gnu.ai.mit.edu .
   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ОПЦИИ POSIX 
 ОПЦИИ GNU 
 ОПЦИИ РЕЗЕРВНОГО КОПИРОВАНИЯ GNU 
 СТАНДАРТНЫЕ ОПЦИИ GNU 
 ОКРУЖЕНИЕ 
 СОВМЕСТИМОСТЬ 
 СМОТРИТЕ ТАКЖЕ 
 ЗАМЕЧАНИЯ 
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