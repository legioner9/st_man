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
 
 
 
 crontab (5)   crontab  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   crontab  (5)   ( FreeBSD man: Форматы файлов ) >>  crontab  (5)   ( Русские man: Форматы файлов )   crontab  (5)   ( Linux man: Форматы файлов )   crontab  (8)   ( Русские man: Команды системного администрирования ) BSD mandoc 
   
 ИМЯ 



 crontab 

 - таблицы, управляющие работой демона cron

   
 ОПИСАНИЕ 

Файл
 


содержит инструкции демону
 cron (8)


в общей форме:
запускать указанную команду в заданное время и в заданные дни.
На компьютере обычно имеются общесистемный файл
 


( /etc/crontab ),



и индивидуальные файлы
 


( /var/cron/tabs/<имя-пользователя> ) 



для пользователей системы.
Таким образом, команды в файле 
 


будут выполняться с правами этих пользователей
 


или, в случае общесистемного файла,
с правами пользователя указанного в командной строке при запуске демона.
У демонов Uucp и News обычно есть свои собственные 
 crontab 

 
устраняющие необходимость в явном запуске
 su (1)


в рамках команды 
 cron (8).


 

Хотя 
 


по сути является обыкновенным текстовым файлом,
он не должен редактироваться обычными средствами.
Для создания, изменения и удаления 
 


следует использоваться специальную утилиту, 
 crontab (1).


 

Пустые строки, ведущие пробелы и символы табуляции игнорируются.
Строки, начинающиеся с символа 
(`#'

)

 
считаются комментариями и игнорируются.
Заметьте, что комментарии не допускаются в тех
же строках, где расположены команды
 cron (8),


так как они будут распознаны
как части команды. По этой же причине комментарии не разрешены в 
строках, задающих переменные среды.
 

Строка-директива в
 


представляет собой либо задание 
переменной среды, либо команду 
 cron (8)


 

 Задание переменной среды 

 

Можно определять среду (набор переменных среды),
в которой будет выполняться команда
 . 

Задание переменной среды осуществляется в следующей форме:
 


 имя_переменной = значение 
 

где пробелы вокруг знака равенства
(`='

)

необязательны, и любые пробелы после 
Fa значения

будут использованы как часть значения переменной
Fa имя_переменной .

Строка
 значение 

может быть заключена в кавычки (одинарные или двойные)
для возможности сохранения пробелов в начале и конце.
 

Несколько переменных среды устанавливаются автоматически демоном
 cron (8).


 SHELL 

устанавливается в
/bin/sh

 
а 
 LOGNAME 

и 
 HOME 

определяются по файлу 
/etc/passwd

(в соответствии с владельцем 
 crontab ). 



Значения переменных
 HOME 

и 
 SHELL 

можно переопределить директивами
 crontab 

 
 

В системах семейства BSD переменная 
 LOGNAME 

может называться 
 USER 

 
В 
Ox  cron (8)



определяет обе переменные 
 USER 

и 
 LOGNAME 

(задавая им одинаковые значения).
 

В дополнение к 
 LOGNAME  

,
 HOME  

и 
 SHELL 

 
 cron (8)


может использовать переменную 
 MAILTO 

в случаях если в данном 
 crontab  

была указана отправка почты.
Если 
 MAILTO 

определена (и не пуста),
электронная почта отправляется указанному в переменной пользователю.
Если 
 MAILTO 

определена, но пустая,
( MAILTO = `,'

 

)

электронная почта отправляться не будет.
В противном случае, почта посылается владельцу
 crontab 

 
Эта переменная полезна при запуске команд от псевдопользователей,
для которых не определены почтовые адреса в системе.
 

 Команды cron 

 

Формат команд 
 cron (8)


аналогичен стандарту V7 и является совместимым с ним.
Каждая стока в системном
 


состоит из шести полей и команды:

 

 минута 

 час 

 число 

 месяц 

 день_недели 

 пользователь 

 команда 

 

 

Каждая стока в пользовательском
 


состоит из пяти полей и команды:

 

 минута 

 час 

 число 

 месяц 

 день_недели 

 команда 

 

 

Поля отделяются друг от друга пробелами или символами табуляции.
Команда может состоять из нескольких полей.
Допустимые значения полей:
 

 
 

 поле 
 
допустимые значение
 ----- 
 
--------------
 минута 


 
* или 0-59
 час 


 
* или 0-23
 число 


 
* или 1-31
 месяц 


 
*, 1-12 или имя месяца (см. ниже)
 день-недели 


 
*, 0-7 или имя дня (воскресенье - это 0 и 7)
 пользователь 


 
имя существующего пользователя
 команда 


 
строка
 
 

 

Допустимо указание нескольких значений (и диапазонов через тире)
через запятую.
Примеры:
``1 , 2 , 5 , 9''

 
``0-4 , 8-12''

 
 

Диапазон указывается как два числа, разделенных дефисом.
Указываемые числа включаются в диапазон.
Например, значение поля
Fa час

8-11 приведёт к выполнению команды в 8, 9, 10 и 11 часов.
 

При указании диапазона можно пропускать некоторые его значения, указав шаг в форме 
 /  число 



Например: 
``0-23/2''

для поля
Fa час

означает запуск команды через два часа
(по стандарту V7 пришлось бы указывать
``0,2,4,6,8,10,12,14,16,18,20,22 )''

 
Шаг можно указывать также после звёздочки:
``каждые два часа ''

соответствует значению
``*/2''

 
 

Звёздочка 
(`*'

)

без шага соответствует полному диапазону значений.
 

Для задания полей 
Fa месяц 

и 
Fa день_недели

можно использовать имена.
Указывайте первые три буквы нужного дня или месяца
на английском, регистр букв не имеет значения.
Диапазоны или списки имён не разрешены.
 

Поле 
Fa команда

(остаток строки) определяет запускаемую по расписанию команду.
Вся оставшаяся часть строки до символа перевода строки или 
символа %, будет выполнен вызов 
/bin/sh

или другой оболочки, определенной в переменной 
 SHELL 

в 
 crontab 

 
Знак процента
(`%'

)

в команде (если он не экранирован обратной косой чертой
(`\'

)

 
) будет соответствовать символу перевода строки и
все данные после первого
`%'

  будут посланы для команды на стандартный ввод.
 

Демон 
 cron (8)


запускает команды когда значения полей 
Fa минута ,

Fa час ,

Fa месяц

 и  

хотя бы одно из полей 
Fa число 



и
Fa день_недели,

совпадают с текущим временем (см. замечание ниже).
Демон 
 cron (8)


сверяет директивы 
 


с текущим временем раз в минуту.
 

Замечание: день выполнения команды может быть задан в двух
полях ---
 число 

и 
 день_недели 

 
Если оба поля определены (т.е не равны *),
то команда будет запущена, когда
 любое  

поле совпадёт с текущим временем.
Например, запись:
 


 30 4 1,15 * 5 
 

приведёт к выполнении команды в 4:30 по полуночи первого
и пятнадцатого числа каждого месяца, плюс в каждую пятницу.
 

Вместо первых пяти полей допустимо указание одного из восьми специальных триггеров:
 

 
 

 строка  
 
значение 
 ------ 
 
-------
 @reboot 
 
Выполнить команду один раз, при запуске  
 cron (8).


 @yearly 
 
Выполнять команду каждое 1 января, "0 0 1 1 *".
 @annually 
 
(эквивалентно @yearly).
 @monthly 
 
Выполнять команду в начале каждого месяца, "0 0 1 * *".
 @weekly 
 
Выполнять команду каждое воскресенье, "0 0 * * 0".
 @daily 
 
Выполнять команду в полночь, "0 0 * * *".
 @midnight 
 
(эквивалентно @daily).
 @hourly 
 
Выполнять команду раз в час, "0 * * * *".
 
 

   
 ПРИМЕРЫ 


 # использовать для запуска команд /bin/sh
# не обращая внимание на то, что написано в /etc/passwd
SHELL=/bin/sh
# отправлять вывод выполнения команд по электронной почте пользователю `paul'
# не обращая внимания на то, чей это crontab
MAILTO=paul
#
# запускать пять минут пополуночи, каждый день
5 0 * * *       $HOME/bin/daily.job >> $HOME/tmp/out 2>&1
# запускать в 14:15 первого числа каждого месяца
15 14 1 * *     $HOME/bin/monthly
# запускать в 22.00 каждый рабочий день, назло Джо
0 22 * * 1-5    mail -s "Уже 10 вечера" joe%Joe,%%Где твои дети?%
23 0-23/2 * * * echo "запуск в 00:23, 2:23, 4:23 ..., каждый день"
5 4 * * sun     echo "запуск в 4:05 каждое воскресенье"
 

   
 СМ. ТАКЖЕ 

 crontab (1),


 cron (8)


   
 НЕСТАНДАРТНЫЕ ВОЗМОЖНОСТИ 

При задании дня недели, и 0 и 7 соответствуют воскресенью.
BSD и ATT не поддерживают такое поведение.
 

Можно указывать одновременно и списки и диапазоны в одном и том же поле.
``1-3,7-9''

не будет принято
cron


систем ATT и BSD они допускают только либо 
``1-3''

 
либо
``7,8,9''

 

Диапазоны можно указывать с пропусками,
например
``1-9/2''

соответствует
``1,3,5,7,9''

 
 

Допустимо указание месяцев или дней недели по имени.
 

В crontab можно задавать переменные среды. В BSD и ATT,
среда для дочерних процессов определяется файлом /etc/rc
 

Вывод команд отсылается почтой владельцу файла crontab (в BSD это невозможно),
а также может отправляться кому-либо другому (это невозможно в SysV), либо
отправка может быть вообще отключена (это также невозможно в SysV).
 

Любая из команд с префиксом
`@'

может заменять первые пять полей файла.
   
 АВТОР 

An Paul Vixie Aq  vixie@isc.org 

 
   
 ПЕРЕВОД 

Николай Шафоростов < shafff@ukr.net > 2007
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ПРИМЕРЫ 
 СМ. ТАКЖЕ 
 НЕСТАНДАРТНЫЕ ВОЗМОЖНОСТИ 
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