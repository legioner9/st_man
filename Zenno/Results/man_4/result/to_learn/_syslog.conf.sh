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
 
 
 
 syslog.conf (4)   syslog.conf  (4)   ( Solaris man: Специальные файлы /dev/* ) >>  syslog.conf  (4)   ( Русские man: Специальные файлы /dev/* )   syslog.conf  (5)   ( FreeBSD man: Форматы файлов )   syslog.conf  (5)   ( Русские man: Форматы файлов )   syslog.conf  (5)   ( Linux man: Форматы файлов ) 
 
 
 Форматы файлов 
 syslog.conf(4) 
 
 

 НАЗВАНИЕ 
 syslog.conf  - файл конфигурации для демона системного журнала 
 syslogd 

 СИНТАКСИС 
 /etc/syslog.conf 
 

 ОПИСАНИЕ 
 Файл  /etc/syslog.conf  содержит информацию, используемую демоном
системного журнала,  syslogd(1M) , для перенаправления
системных сообщений в соответствующий журнальный файл и/или заданным пользователям.
Демон  syslogd  предварительно обрабатывает этот файл макропроцессором 
 m4(1)  для получения корректной информации об определенных
журнальных файлах, определяя переменную  LOGHOST , если адрес "журнального
хоста" ("loghost") совпадает с одним из адресов хоста, на котором работает демон
 syslogd . 

 Запись в файле конфигурации состоит из двух полей, разделенных символами табуляции: 

 селектор  	 действие 
 

 Поле  селектор  содержит список разделенных точкой с запятой  спецификаций
приоритетов  вида: 

 компонент . уровень  [;  компонент . уровень ]
 

 где  компонент  задает компонент или список компонентов системы через запятую,
а  уровень  показывает  серьезность  регистрируемой ситуации. Распознаются
следующие значения  компонента : 

 
 user 
Сообщения, сгенерированные пользовательскими процессами. Это стандартный приоритет
для сообщений от программ или компонентов, не перечисленных в данном файле. 
 kern 
Сообщения, сгенерированные ядром. 
 mail 
Система электронной почты. 
 daemon 
Системные демоны, такие как  in.ftpd(1M) 
 auth 
Система авторизации:  login(1) , 
 su(1M) ,  getty(1M)  
и другие программы. 
 lpr 
Система  очередей печати  (line printer spooling  system): 
 lpr(1B) ,  lpc(1B)  
и другие программы. 
 news 
Зарезервировано для системы дискуссионных групп  USENET . 
 uucp 
Зарезервировано для системы  UUCP ; эта система сейчас механизм журнализации
 syslog  не использует. 
 cron 
Компоненты  cron / at ;  crontab(1) ,  
 at(1) ,  cron(1M) 
и другие программы. 
 local0-7 
Зарезервировано для локального использования. 
 mark 
Для временных отметок, генерируемых демоном  syslogd . 
 * 
Звездочка обозначает все компоненты, кроме  mark . 
 

 Поддерживаются следующие значения уровня (в порядке убывания серьезности): 

 
 emerg  
Для критических ситуаций, о которых надо срочно сообщать всем пользователям. 
 alert  
Для сообщений о проблемах, которые надо немедленно решать, например, повреждение
системной базы данных. 
 crit 
Для предупрреждений о критических ситуациях, например, сбое диска. 
 err 
Для других сообщений об ошибках. 
 warning 
Для предупреждающих сообщений. 
 notice 
Для сообщений о ситуациях. не являющихся ошибочными, но, возможно, требующих 
особого реагирования. Запись в файле конфигурации со значением уровня
 notice  должна быть на отдельной строке. 
 info 
Инофрмационные сообщения. 
 debug 
Для сообщений, обычно используемых только при отладке программ. 
 none 
Не посылать сообщений от указанного компонента в заданный файл. Например, селектор 

 *.debug;mail.none
 

будет посылать все сообщения,  кроме  генерируемых системой электронной почты, в
указаный файл. 
 

 Поле  действие  задает, куда пересылать соответствующее  селектору 
сообщение. Значение этого поля может быть одного из четырех видов: 

 
 Имя файла, начинающееся с косой черты, что говорит о необходимости записи
соответствующих  селектору  сообщений в указанный файл. Этот файл открывается на
добавление. 
 Имя удаленного хоста с префиксом  @ , например,  @server , что
говорит о необходимости перенаправления соответствующих  селектору  сообщений
демону  syslogd  на указанном хосте. Имя хоста  "loghost"  соответствует
машине, которая будет регистрировать сообщения демона  syslogd . Каждая
машина по умолчанию является  loghost . См. файл  /etc/hosts . Можно также
задать одну машину в локальной сети в качестве  loghost , задав соответствующие
записи в таблице хостов. Если в качестве  loghost  указана локальняя машина,
сообщения демона  syslogd  записываются в соответствующие файлы. В противном
случае, они пересылаются машине  loghost  в сети. 
 Список имен пользователей через запятую, что говорит о необходимости выдать 
соответствующие  селектору  сообщения на терминал перечисленным пользователям,
если они зарегистрированы в системе. 
 Звездочка, что говорит о необходимости выдачи соответствующих  селектору 
сообщений на терминылы всех зарегистрированных пользователей. 
 

 Пустые строки игнорируются. Строки, первым непробельным символом которых
является символ ' # ', считаются комментариями. 

 ПРИМЕРЫ 

 Пример 1: Пример файла конфигурации 

 При наличии следующих записей в файле конфигурации: 

 *.notice		/var/log/notice
mail.info		/var/log/notice
*.crit			/var/log/critical
kern,mark.debug		/dev/console
kern.err		@server
*.emerg			*
*.alert			root,operator
*.alert;auth.warning	/var/log/auth
 

 демон  syslogd(1M)  будет регистрировать все
сообщения системы электронной почты, кроме отладочных, и все сообщения с уровнем
серьезности  notice  (или выше) в файле  /var/log/notice . Все
критические сообщения попадают в файл  /var/log/critical , а сообщения
ядра и 20-минутные временные отметки выдаются на системную консоль. 

 Сообщения ядра с уровнем серьезности  err  (ошибки) и выше перенаправляются
на машину с именем  server . Сообщения о критических ситуациях перенаправляются
всем пользователям. Пользователи  root  и  operator  получают все сообщения
уровня  alert . Все сообщения системы авторизации доступа уровня  warning 
или выше регистрируются в файле  /var/log/auth . 

 ФАЙЛЫ 

 
 /var/log/notice 
Журнал всех сообщений системы электронной почты (кроме отладочных) и всех сообщений
с уровнем серьезности  notice  и выше. 
 /var/log/critical 
Журнал всех критических сообщений. 
 /var/log/auth 
Журнал всех сообщений системы авторизации доступа с уровнем серьезности  warning 
и выше. 
 

 ССЫЛКИ 
 
	 at(1) ,  
	 crontab(1) , 
	 logger(1) , 
	 login(1) , 
	 lp(1) , 
	 lpc(1B) ,
	 lpr(1B) , 
	 m4(1) , 
	 cron(1M) , 
	 getty(1M) , 
	 in.ftpd(1M) , 
	 su(1M) ,
	 syslogd(1M) , 
	 syslog(3C) , 
	 hosts(4) 
 

 Последнее изменение: 22 января 1997 года 

 
Copyright © 2002  В. Кравчук ,
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