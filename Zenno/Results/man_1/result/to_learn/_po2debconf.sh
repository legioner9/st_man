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
 
 
 
 po2debconf (1) >>  po2debconf  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   po2debconf  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

 
po2debconf --- объединяет мастер файл шаблонов и PO-файлы
   
 СИНТАКСИС 

 
 po2debconf  [ -v ] [ -h ] [ --podir= КАТАЛОГ ] [ -o  ФАЙЛ ] [ -e
 СТРОКА ]  мастер_файл 
   
 ОПИСАНИЕ 

 
Эта программа читает все PO-файлы и один  templates  файл, и создаёт файл
шаблонов Debconf, содержащий все переводы, подобно тому, как это делает
 debconf-mergetemplate (1) (из пакета  "debconf-utils" ). По умолчанию,
PO-файлы ищутся в подкаталоге  po , который находится ниже местоположения
мастер файла.
 

Чтобы помочь норвежскому Bokma°l в переходе с одного кода языка на
другой, коды  no  и  nb  обрабатываются специальным образом. Если
существует  no.po , то он должен быть переименован в
 nb.po . Использование  nb.po  делает переводы  "-no"  и  "-nb"  доступными
в файле шаблонов.
 

Строки в файлах шаблонов, начинающиеся с символа  "#" , являются
комментариями; обычно в них записываются подсказки для переводчиков, и они
вырезаются программой  po2debconf . В  "po-debconf"  1.0 введены специальные
комментарии, которые имеют вид  "#flag: directive " .  "#flag:partial" 
является директивой для  po2debconf . Обычно, когда поле состоит из
нескольких параграфов (например в  "__Choices"  и  "_Description" ), оно
считается переведённым, только если переведены все параграфы. Если перед
полем указан  "#flag:partial" , то переведённые строки могут быть вместе с
непереведёнными.
   
 ПАРАМЕТРЫ 

 
 
 -h ,  --help 
 
Показать справку по использованию и завершить работу.
 -v ,  --verbose 
 
Показывать подробности работы.
 --podir= КАТ 
 
Указать каталог для PO-файлов. По умолчанию, файлы PO-ищутся в подкаталоге
 po , который находится ниже местоположения мастер файла.
 -o ,  --output= ФАЙЛ 
 
Файл результата (по умолчанию используется стандартный вывод).
 -e ,  --encoding= СТРОКА 
 
Преобразование кодировки. Параметр может принимать три значения:  "utf8" 
(преобразование в  UTF-8 ),  "po"  (не изменять кодировку) и  "popular" 
(преобразование кодировки входных файлов зависит от их языка; переменная
среды  "PODEBCONF_ENCODINGS"  должна указывать на имя файла, содержащего
таблицу перекодировки),


 


Такой файл приблизительно выглядит так:


 



   #
  #   # -- символ комментария
  #
  cs       ISO-8859-2
  da       ISO-8859-1
  de       ISO-8859-1
  el       ISO-8859-7

 



 


и т.д.


 


Для кодировки по умолчанию использовалось  "popular" , было изменено на
 "utf8"  начиная с po-debconf 0.9.0.
 
   
 ВЫХОДНОЙ ФОРМАТ 

 
Начиная с debconf 1.2.0, был изменён формат шаблонов, кодировка стала частью
имени поля, то есть теперь это выглядит как
 "foo- язык . кодировка " . Если старые версии debconf обнаруживают такие
поля, то они их просто игнорируют и показывают оригинальный текст.
 

Можно изменить кодировку по умолчанию и выходной формат, создав файл
 po/output . Он содержит одну строку, первое поле задаёт выходной формат (в
данный момент допустимыми значениями первого поля являются 1 для формата
 "foo- язык "  и 2 для  "foo- язык . кодировка " ), а второе поле задаёт
кодировку, например
 



    echo '2 utf8' > po/output

 


 

тогда  po2debconf  преобразует текст в  UTF-8 .
 

Если кодировка задана как  "po"  или  "utf8" , то выходной формат всегда
устанавливается в 2, для того чтобы старые версии debconf не пытались
показывать текст с неправильной кодировкой.
   
 СМОТРИТЕ ТАКЖЕ 

 
 debconf-gettextize (1),  debconf-updatepo (1),  po-debconf (7).
   
 АВТОР 

 


   Denis Barbier < barbier@linuxfr.org >

 


 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ВЫХОДНОЙ ФОРМАТ 
 СМОТРИТЕ ТАКЖЕ 
 АВТОР 
 
 
 
 
 
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