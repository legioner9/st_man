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
 
 
 
 virtual (8)   virtual  (5)   ( Русские man: Форматы файлов )   virtual  (5)   ( Linux man: Форматы файлов ) >>  virtual  (8)   ( Русские man: Команды системного администрирования )   virtual  (8)   ( Linux man: Команды системного администрирования ) Ключ  virtual  обнаружен в базе ключевых слов. 


   
 НАЗВАНИЕ 

virtual
-
агент доставки почты Postfix для виртуальных доменов 
   
 ОБЗОР 


 virtual  [общие параметры демона Postfix]
   
 ОПИСАНИЕ 



Агент доставки  virtual  разработан для служб виртуального 
почтового обслуживания. Изначально основанный на агенте локальной доставки,
этот агент ищет полный адрес получателя в поисковых таблицах, вместо
жестко встроенного поиска только локальной части адреса в файле
паролей unix.
 
Данный агент выполняет только доставку почты. Другие возможности,
такие как перенаправление почты, уведомления об отсутствии и т.п., должны
быть сконфигурированы через таблицы virtual или похожие механизмы
поиска.
   
 РАСПОЛОЖЕНИЕ ПОЧТОВЫХ ЯЩИКОВ 


 

Расположение почтовых ящиков определяется конфигурационными переменными
 virtual_mailbox_base  и  virtual_mailbox_maps  (смотрите
ниже). Таблица  virtual_mailbox_maps  индексирована по полному
адресу получателя.
 
Путь к почтовому ящику образуется следующим образом:
 
 
  
 $virtual_mailbox_base/$virtual_mailbox_maps( recipient ) 
 
где  recipient  -- полный адрес получателя
   
 ФОРМАТ ПОЧТОВОГО ЯЩИКА UNIX 


 

Если путь к почтовому ящику не заканчивается на  / , то сообщение
доставляется в формате почтового ящика UNIX. В этом формате 
все сообщения хранятся в одном текстовом файле.
 
Агент доставки  virtual  вставляет в начало каждого сообщения 
заголовок конверта " From  sender time_stamp ", заголовок 
сообщения  Delivered-To:  с адресом получателя из конверта, 
заголовок сообщения  Return-Path:  с адресом отправителя из 
конверта, символ  >  к строкам, начинающимся с " From  " 
и добавляет пустую строку.
 
Во время доставки почтовый ящик блокируется для эксклюзивного
доступа. При появлении ошибок делается попытка обрезать почтовый 
ящик до его первоначальной длины.
   
 ФОРМАТ ПОЧТОВОГО КАТАЛОГА QMAIL 


 

Если путь к почтовому ящику заканчивается на  / , то сообщение
доставляется в формате  maildir  qmail'а. В этом формате каждое
сообщение хранится в отдельном файле.
 
Демон агента доставки  virtual  вставляет в начало сообщения 
заголовок сообщения  Delivered-To:  с адресом получателя из 
конверта и заголовок сообщения  Return-Path:  с адресом 
отправителя из конверта.
 
По умолчанию, формат  maildir  не требует блокировки во время
доставки или получения почты.
   
 ВЛАДЕЛЕЦ ПОЧТОВОГО ЯЩИКА 


 

Принадлежность почтового ящика указывается в поисковых таблицах
 virtual_uid_maps  и  virtual_gid_maps , которые 
индексированы по полному адресу получателя. Каждая таблица 
содержит строку с цифровым ID пользователя и группы соответственно.
 
Параметр  virtual_minimum_uid  устанавливает нижнюю границу
значения цифрового ID пользователя, который может быть указан 
как в  virtual_owner_maps , так и в  virtual_uid_maps .
   
 БЕЗОПАСНОСТЬ 


 Агент виртуальной доставки не влияет на безопасность при условии,
что поисковые таблицы с информацией о получателях адекватно защищены.
Эта программа не расчитана на работу в изолированной среде выполнения.
   
 СТАНДАРТЫ 


 RFC 822 (ARPA Internet Text Messages)
   
 ДИАГНОСТИКА 



Если у получателя нет почтового ящика или превышена квота на диске,
то почта будет возвращена. Во всех остальных случаях почта для 
существующего получателя будет отложена, а в лог-файл 
будет записано предупреждение.
 
Проблемы и транзакции журналируются в  syslogd (8).
Поврежденные файлы сообщений помечаются, чтобы потом менеджер 
очереди мог переместить их в очередь  corrupt .
 
В зависимости от установки параметра  notify_classes 
постмастеру будут высылаться уведомления о возвращаемых
сообщениях и других проблемах.
   
 ОШИБКИ 



Данный агент доставки молча игнорирует расширения адреса.
 
У Postfix могут быть поисковые таблицы, которые могут
возвращать несколько результирующих атрибутов. Чтобы избежать
несовместимость обслуживания трех таблиц используйте базу
данных LDAP или MYSQL.
   
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 


 

Для этой программы особо актуальны следующие параметры в файле
 main.cf . Подробнее о синтаксисе и значениях по умолчанию
смотрите в файле  main.cf . После изменения конфигурации
выполните команду  postfix reload .
   
 ДОСТАВКА В ПОЧТОВЫЙ ЯЩИК 



 
 virtual_mailbox_base 
Задает путь, который вставляется в начало пути ко всем mailbox или 
maildir. Это средство безопасности, гарантирующее, что при ошибках 
в  virtual_mailbox_maps  почтовые ящики не будут разбросаны по 
всей файловой системе. Хотя параметр установлен в "/", такое значение
не рекомендуется.
 virtual_mailbox_maps  (таблицы регулярных выражений недопустимы) 
В этих таблицах производится поиск получателей, чтобы определить
путь к их mailbox'ам или maildir'ам. Если найденный путь заканчивается
слэшем ("/"), то доставка выполняется в стиле maildir, в противном
случае путь подразумевает доставку в файл почтового ящика в
стиле UNIX.
 
Помните, что в начало этого пути добавляется  virtual_mailbox_base 
безо всяких условий.
 virtual_minimum_uid 
Указывает минимальный uid, который может быть получен при поиске в 
 virtual_owner_maps  или  virtual_uid_maps . Если полученное
значение меньше указанного, то оно будет игнорироваться, а сообщение --
задерживаться.
 virtual_uid_maps  (таблицы регулярных выражений недопустимы) 
В этих таблицах производится поиск получателей, чтобы определить ID
пользователя, используемый при записи в требуемый почтовый ящик.
 virtual_gid_maps  (таблицы регулярных выражений недопустимы) 
В этих таблицах производится поиск получателей, чтобы определить ID
группы, используемый при записи в требуемый почтовый ящик.
 
   
 УПРАВЛЕНИЕ БЛОКИРОВКОЙ 



 
 virtual_mailbox_lock 
Как заблокировать почтовый ящик в стиле Unix: одним или несколькими
значениями  flock ,  fcntl  или  dotlock . Метод 
 dotlock  требует, чтобы UID или GID получателя имели
доступ к родительскому каталогу файла почтового ящика.
 
Этот параметр игнорируется при доставке в стиле  maildir , 
поскольку такие доставки безопасны и без явных блокировок.
 
Чтобы узнать, какие методы блокировки доступны в вашей системе,
используйте команду  postconf -m .
 deliver_lock_attempts 
Максимальное количество попыток установить эксклюзивную блокировку
файла почтового ящика в стиле Unix.
 deliver_lock_delay 
Время (по умолчанию: в секундах) между успешными попытками эксклюзивной
блокировки файла почтового ящика в стиле Unix. Реальная задержка будет
слегка колебаться случайным образом.
 stale_lock_time 
Ограничение времени, после которого удаляется старый файл блокировки 
(применимо только для почтовых ящиков в стиле Unix).
 
   
 УПРАВЛЕНИЕ РЕСУРСАМИ 



 
 virtual_destination_concurrency_limit 
Ограничение количества параллельных доставок в тот же самый домен
через агент доставки  virtual . Значение по умолчанию берётся
из параметра  default_destination_concurrency_limit . Ограничение
реализуется менеджером очереди Postfix.
 virtual_destination_recipient_limit 
Ограничение количества получателей на одну доставку сообщения
через агент доставки  virtual . Значение по умолчанию берётся
из параметра  default_destination_recipient_limit . Ограничение
реализуется менеджером очереди Postfix.
 virtual_mailbox_limit 
Максимальный размер в байтах файла mailbox или maildir. Для 
отключения ограничения укажите ноль.
 
   
 ИСТОРИЯ 


 

Изначально этот агент был основан на агенте локальной доставки
Postfix. Изменения в основном состояли из удаления кода, который
был либо непригоден, либо небезопасен в данном контексте: псевдонимы,
файлы ~user/.forward, доставка в "|command" или /file/name.
 
В системе Дэниеля Бернштайна (Daniel Bernstein) появляется заголовок
 Delivered-To: .
 
В системе Дэниеля Бернштайна (Daniel Bernstein) появляется структура
 maildir .
   
 СМОТРИ ТАКЖЕ 


 bounce (8) - отчеты о невыполненных доставках 
 syslogd (8) - системное журналирование
 qmgr (8) - менеджер очереди
   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 


 

С данным программным обеспечением должна поставляться лицензия от
Secure Mailer.
   
 ОБ АВТОРАХ 


 Wietse Venema
IBM T.J. Watson Research
P.O. Box 704
Yorktown Heights, NY 10598, USA

Andrew McNamara
 andrewm@connect.com.au 
connect.com.au Pty. Ltd.
Level 3, 213 Miller St
North Sydney 2060, NSW, Australia

Перевод:
Alex Savvin < savvin@mail.ru >, Dec 23, 2001

 
 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 РАСПОЛОЖЕНИЕ ПОЧТОВЫХ ЯЩИКОВ 
 ФОРМАТ ПОЧТОВОГО ЯЩИКА UNIX 
 ФОРМАТ ПОЧТОВОГО КАТАЛОГА QMAIL 
 ВЛАДЕЛЕЦ ПОЧТОВОГО ЯЩИКА 
 БЕЗОПАСНОСТЬ 
 СТАНДАРТЫ 
 ДИАГНОСТИКА 
 ОШИБКИ 
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 
 ДОСТАВКА В ПОЧТОВЫЙ ЯЩИК 
 УПРАВЛЕНИЕ БЛОКИРОВКОЙ 
 УПРАВЛЕНИЕ РЕСУРСАМИ 
 ИСТОРИЯ 
 СМОТРИ ТАКЖЕ 
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 
 ОБ АВТОРАХ 
 
 
 
 
 
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