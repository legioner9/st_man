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
 
 
 
 at (1)   at  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   at  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  at  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   at  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   at  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   at  (8)   ( Русские man: Команды системного администрирования ) BSD mandoc 
   
 ИМЯ 



 at 

 
 batch 

 - добавить в очередь, показать или удалить задачи, запланированные для выполнения позже.

   
 ОБЗОР 

 at 

[- blm 

]

[- f  файл 



]

[- q  очередь 



]

- t  время 



 at 

[- blm 

]

[- f  файл 



]

[- q  очередь 



]

 время 

 at 

- c | r 

 задача  [ задача ... 

]



 batch 

[- m 

]

[- f  файл 



]

[- q  очередь 



]

[ время 

]

   
 ОПИСАНИЕ 

 at 

и
 batch 

считывают со стандартного ввода или указанного файла команды, которые 
должны быть выполнены позже - при помощи командной оболочки пользователя,
указанной в переменной окружения 
 SHELL 

 
Если 
 SHELL 

не установлена, используется оболочка, указанная в базе данных паролей пользователей.
Если и она не указана, будет использована
 sh (1).


 

К родственным программам относятся:
 
 

 at 


 
Выполняет команды в указанное время.
 batch 


 
Выполняет команды, когда это позволяет уровень загрузки системы.
Иными словами, когда средняя загрузка падает ниже 1.5 или ниже значения, указанного 
при вызове 
 cron (8).


 
 

 

Доступны следующие опции:
 
 

 -b 


 
синоним 
 batch 

 
 -c 


 
Вывести на стандартный вывод задачи, перечисленные в командной строке.
 -f  файл 



 
Прочесть задачи из
 файла 

а не из стандартного ввода.
 -l 


 
Выводит запланированные задачи текущего пользователя. Если пользователь - администратор, 
выводит задачи всех пользователей.

 -m 


 
Когда задача будет выполнена, отправляет сообщение пользователю, даже если задача не выводила никаких сообщений.
 -q  очередь 



 
Использует указанную очередь.
Очередь обозначается одной буквой.
Допустимые символы - от
 a 

до
 z 

и от
 A 

до
 Z 

 
Очередь
 c 

по умолчанию используется командой
 at 

и очередь
 E 

используется
 batch 

 
Очереди, обозначенные заглавной буквой запускаются с повышенным приоритетом (т.е. с меньшим приоритетом).
Если задача указана для добавления в очередь, обозначенную заглавной буквой, она обрабатывается так, как будто
был добавлена командой batch
Если пользователь указывает опцию
- l 

и для
 at 

указана конкретная очередь, будут показаны только задачи, находящиеся в этой очереди.
 -r 


 
Удаляет указанные задачи из 
очереди
 at 

 
 -t  время 



 
Указать время задачи, используя формат 
 touch (1).


Аргумент должен быть указан в виде
 [[ВВ]ГГ]ММДДччмм[.СС] 

 
где каждая пара букв обозначает следующее:
 

 
 

 ВВ 


 
две первых цифры года (век).
 ГГ 


 
две последние цифры года.
 ММ 


 
месяц года, с 1 по 12.
 ДД 


 
день месяца, с 1 по 31.
 чч 


 
час, с 0 по 23.
 мм 


 
минуты, с 0 по 59.
 СС 


 
секунды, с 0 по 61.
 
 

 

Если
 ВВ 

и
 ГГ 

не указаны, используется текущий год.
Если
 СС 

не указаны, используется 0.
 
 

 

 at 

разрешает относительно сложные спецификации
 времени. 

Программа принимает время в формате
 ччмм 

или
 чч:мм 

для запуска задачи в указанное время дня
(если это момент уже прошел, используется следующий день.)
Можно также указывать
 midnight 

 
 полночь  

),
 noon 

 
 полдень 

),
или
 teatime 

(16:00),
можно указывать после времени
``AM''

или
``PM''

для запуска задачи утром или вечером.
Можно также указать, в какой день задача будет запущена, указав
дату в форме
 название-месяца день 

а также (по желанию)
 год 

 
или введя дату в форме
 ДД.ММ.ВВГГ 

 
 ДД.ММ.ГГ 

 
 ММ/ДД/ВВГГ 

 
 ММ/ДД/ГГ 

 
 ММДДВВГГ 

 
или
 ММДДГГ 

 
 

Год должен быть указан двумя или четырьмя цифрами.
Если год указан двумя цифрами, используется ближайшая дата в 
будущем, которая может находиться в следующем веке, 
кроме случая, когда указан прошлый год, что считается опечаткой.
 

Формат даты должен совпадать с форматом времени дня.
Можно использовать время в форме
[`now (сейчас)'

]

 +  число единиц-времени 



где единицей-времени могут быть
 минуты 

 
 часы 

 
 дни 

 
или
 недели 

 
можно указать 
 at 

запустить задачу сегодня, добавив после времени
 today (сегодня), 

и запустить задачу завтра, добавив после времени
 tomorrow (завтра). 

 

К примеру, чтобы запустить задачу в 16:00 через три дня после сегодняшнего
можно использовать
 at 16:00 + 3 days 

 
Для запуска задачи в 10:00 31го июля можно воспользоваться
 at 10:00 Jul 31 

 
Для запуска в 1:00 завтра, можно использовать
 at 1:00 tomorrow 

 
 

 at 

также поддерживает формат времени, используемый 
 touch (1)


(см. опцию
- t 

).
 

И
 at 

 
и
 batch 

считывают команды со стандартного потока ввода
(или файла указанного при помощи опции
- f 

) и исполняют их, используя
текущий каталог, переменные окружения (исключая
 TERM 

 
 TERMCAP 

 
 DISPLAY 

 
и
 _ ) 

 
и
 umask 

на момент добавления команды.
Команда
 at 

или
 batch  

при запуске через командную оболочку
 su (1)


сохраняют идентификатор текущего пользователя.
Пользователь получит сообщение с данными стандартного вывода 
и потока сообщений об ошибках для запланированной им команды, 
если что-то было выведено.
Сообщение будет отправлено через
 sendmail (8).


Если
 at 

выполняется через
 su (1),пользователь,указанныйпривызовеsu,получитэтосообщение.


 

Для не-администраторов, разрешение на запуск
 


определяется файлами
/var/cron/at.allow

и
/var/cron/at.deny

 
 Примечание 

 
эти файлы (если они существуют) должны быть доступны для чтения группе crontab.
 

Если 
/var/cron/at.allow

существует, только упомянутые в нем пользователи могут использовать
 at 

 
Если
/var/cron/at.allow

не существует, проверяется 
/var/cron/at.deny

 
В этом случае каждый пользователь, не упомянутый в этом файле,
может использовать
 at 

 
Если оба файла отсутствуют, только администратор может использовать
 at 

 
 

Пустой 
/var/cron/at.deny

обозначает, что каждый пользователь может использовать эти команды.
Это является конфигурацией по умолчанию.
   
 ФАЙЛЫ 

 
 

 /var/cron/atjobs

 
 
каталог, содержащий файлы задач
 /var/cron/at.allow

 
 
контролирует разрешения на использование
 /var/cron/at.deny

 
 
контролирует запреты на использование
 
 

   
 СМ. ТАКЖЕ 

 nice (1),


 sh (1),


 touch (1),


 umask (2),


 cron (8),


 sendmail (8)


   
 АВТОРЫ 

An -nosplit

Большая часть 
 at 

написана
An Thomas Koenig Aq  ig25@rz.uni-karlsruhe.de  .

Процедуры обработки времени создана
An David Parsons Aq  orc@pell.chi.il.us  .

   
 ОШИБКИ 

 at 

и
 batch 

в настоящее время не подходят для ситуаций, когда несколько пользователей пытаются получить доступ к ограниченным ресурсам.
В этом случае, подумайте об использовании другой подобной системы, например
 nqs 

 
   
 ПЕРЕВОД 

Перевод с английского Виктор Ерёмин < ErV2005@rambler.ru > 2007

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
 АВТОРЫ 
 ОШИБКИ 
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