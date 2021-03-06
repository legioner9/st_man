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
 
 
 
 crontab (8)   crontab  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   crontab  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня )   crontab  (5)   ( FreeBSD man: Форматы файлов )   crontab  (5)   ( Русские man: Форматы файлов )   crontab  (5)   ( Linux man: Форматы файлов ) >>  crontab  (8)   ( Русские man: Команды системного администрирования ) 
 
 
 Пользовательские команды 
 crontab(1) 
 
 

 НАЗВАНИЕ 
 crontab  - управление пользовательским файлом заданий  cron 

 СИНТАКСИС 
 
crontab [  имя_файла  ] 
crontab [ -elr ]  имя_пользователя 
 

 ОПИСАНИЕ 

 Утилита  crontab  управляет доступом пользователя к демону  cron 
(см.  cron(1M) ) путем копирования, создания, выдачи 
содержимого и удаления файлов  crontab , таблиц заданий. При вызове 
без опций,  crontab 
копирует указанный файл или стандартный входной поток (если файл не указан) в
каталог, к котором хранятся пользовательские таблицы заданий  cron . 

     Контроль доступа к  crontab 

 Доступ пользователя к  crontab  разрешен, если: 
 
 имя пользователя указано в файле  /etc/cron.d/cron.allow . 
 файл  /etc/cron.d/cron.allow  не существует и имя пользователя не
указано в файле  /etc/cron.d/cron.deny . 
 

 Доступ пользователя к  crontab  не разрешен, если: 
 
 файл  /etc/cron.d/cron.allow  существует и имя пользователя в нем 
не указано. 
 файл  /etc/cron.d/cron.allow  не существует и имя пользователя указано в
файле  /etc/cron.d/cron.deny . 
 ни один из упомянутых файлов не существует и пользователь не получил привилегию
 solaris.jobs.user  через роль. 
 

 Учтите, что правила разрешения и запрещения выполнения заданий применимы к пользователю  root  только если существуют файлы  allow / deny . 

 В файлах  allow / deny  надо задавать по одному имени пользователя в строке. 

     Формат записи файла  crontab 

 Файл  crontab  состоит из строк, содержащих шесть полей. Поля разделяются
пробелмами или символами табуляции. Первые пять полей - целочисленные шаблоны,
задающие: 

 
минуту (0-59), 
час (0-23), 
день месяца (1-31), 
месяц года (1-12), 
день недели (0-6, причем 0=воскресенье). 

 Каждый из этих шаблонов может представлять собой звездочку (которая обозначает
все допустимые значения) или список элементов через запятые. Элемент - число или два
числа через дефис (что обозначает закрытый интервал). Обратите внимание,
что дни можно указывать в двух полях (день месяца и день недели). Оба поля учитываются,
если заданы в виде списка элементов. См.  ПРИМЕРЫ . 

 Шестое поле в строке файла  crontab  - строка, выполняемая командным
интерпретатором в указанные моменты времени. Символ  %  (процент) в этом поле,
если он не замаскирован  \  (обратной косой), преобразуется в символ новой строки. 

 Только первая строка (до символа  %  или до конца строки) поля команды
выполняется командным интерпретатором. Другие строки передаются команде как
стандартный входной поток. Любая строка, начинающаяся символом  # , считается
комментарием и игнорируется. Файл не должен содержать пустых строк. 

 Командный интерпретатор вызывается из начального каталога соответствующего 
пользователя с аргументом  arg0 , равным  sh . Пользователи, желающие, чтобы
был выполнен их файл  .profile , должны явно это указать в команде в файле
 crontab . Демон  cron  предоставляет каждому командному интерпретатору
стандартную среду, задавая переменные  HOME ,  LOGNAME , 
 SHELL (= /bin/sh ),  TZ  и  PATH . Стандартное значение
переменной  PATH  для пользовательских заданий  cron  -  /usr/bin , а
для заданий  cron  пользователя  root  -  /usr/sbin:/usr/bin .
Стандартное значение переменной  PATH  можно задать в файле 
 /etc/default/cron ; см.  cron(1M) . 

 Если стандартный выходной поток и стандартный поток ошибок команд не перенаправлены,
любые сгенерированные результаты или сообщения об ошибках будут отправлены пользователю
по электронной почте. 

 ОПЦИИ 

 Поддерживаются следующие опции: 

 
 -e 
Редактирует копию файла  crontab  текущего пользователя или создает пустой файл
для редактирования, если соответствующего файла  crontab  не существует. Когда
редактирование завершается, файл устанавливается в качестве пользовательского файла
 crontab . Если задано имя пользователя, реадктируется файл  crontab  этого, а не текущего пользователя; это может сделать только пользователь с привилегией
 solaris.jobs.admin . Переменная среды  EDITOR  задает редактор, вызываемый при указании опции -e. Стандартным редактором является  ed(1) . Учтите, что
все задания в файле  crontab  должны создаваться с помощью утилиты  crontab ;
не стоит добавлять задания, просто редактируя файл  crontab , поскольку демон
 cron  не будет знать об изменениях, выполненных таким способом.
 
 -l 
Выдает файл  crontab  вызвавшего пользователя. Только пользователь с привилегией
 solaris.jobs.admin  может указывать имя пользователя после опций  -r  
или  -l  для удаления или просмотра файла  crontab  другого пользователя.
 
 -r 
Удаляет пользовательский файл  crontab  из каталога заданий  cron .
 
 

 ПРИМЕРЫ 

 Пример 1: Удаление core-файлов 

 Это задание удаляет файлы  core  каждый день в 3:15 утра: 

 15 3 * * 1-5 find $HOME -name core 2>/dev/null | xargs rm -f
 

 Пример 2: Посылка позвдравления с днем рождения 

 0 12 14 2 * mailx john%Happy Birthday!%Time for lunch.
 

 Пример 3: Задание дней месяца и дня недели 

 Следующее задание 

 0 0 1,15 * 1
 

 будет выполнять команду 1 и 15 числа каждого месяца, а также по понедельникам. 

 Чтобы задать дни выполнения только одним способом, в другом поле надо 
поставить  * . Например, задание: 

 0 0 * * 1
 

 приведет к выполнению команды только по понедельникам. 

 ПЕРЕМЕННЫЕ СРЕДЫ 

 Описание следующих переменных среды:  
 LC_CTYPE ,  LC_MESSAGES  и  NLSPATH , 
влияющих на работу команды  crontab , 
см. на странице справочного руководства  environ(5) . 

 
 EDITOR 
Задает редактор, вызываемый при задании опции  -e . Стандартно
вызывается редактор  ed(1) . Если установлены переменные среды  EDITOR  
и  VISUAL , редактор определяется значением переменной  VISUAL . 
 

 СТАТУС ВЫХОДА 

 Команда завершается со следующими статусами выхода: 

 
 0 
Успешное выполнение. 
 >0 
Произошла ошибка. 
 

 ФАЙЛЫ 

 
 /etc/cron.d 
основной каталог демона  cron 
 /etc/cron.d/cron.allow 
список пользователей, которые могут добавлять задания 
 /etc/default/cron 
стандартные значения для демона  cron 
 /etc/cron.d/cron.deny 
список пользователей, которым запрещено добавлять задания 
 /var/cron/log 
учетная информация 
 /var/spool/cron/crontabs 
область сброса для файлов  crontab 
 

 АТРИБУТЫ 

 Описание следующих атрибутов см. на странице справочного руководства
 attributes(5) : 

 
 ТИП АТРИБУТА 
 ЗНАЧЕНИЕ АТРИБУТА 
 Доступен в пакете 
 SUNWcsu 
 

 ССЫЛКИ 
 
	 atq(1) ,
	 atrm(1) ,
	 auths(1) ,
	 ed(1) ,
	 sh(1) ,
	 cron(1M) ,
	 su(1M) ,
	 auth_attr(4) ,
	 attributes(5) ,
	 environ(5) 

 ПРИМЕЧАНИЯ 

 Если вы случайно ввели команду  crontab  без аргументов, не пытайтесь завершить
работу с ней с помощью комбинации клавиш  Control-d .
Это приведет к удалению всех записей в файле  crontab . Вместо этого, нажмите
 Control-c  для выхода. 

 Если авторизованный пользователь изменяет файл  crontab  другого пользователя,
результат может оказаться непредсказуемым. Вместо этого, суперпользователь
должен сначала выполнить команду  su(1M)  для перехода
в среду другого пользователя, а затем изменять его файл  crontab . 

 При изменении пользовательского файла  crontab  с помощью команды 
 crontab  процесс  cron  немедленно учитывает эти изменения, если не
выполняются задания  cron . Однако если в момент изменения демон  cron 
запускает задания  cron , может потребоваться до 60 секунд, прежде чем демон
 cron  учтет это изменение. Поэтому для безопасного выполнения надо добавлять 
задания, которые должны выполниться не ранее, чем через минуту с момента 
добавления. 

 Последнее изменение: 13 августа 1999 года 

 
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