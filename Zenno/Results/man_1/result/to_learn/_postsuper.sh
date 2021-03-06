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
 
 
 
 postsuper (1) >>  postsuper  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   postsuper  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 


   
 НАЗВАНИЕ 

postsuper
-
суперинтендант Postfix
   
 ОБЗОР 


 

 postsuper  [ -psv ] [ -d  queue_id ]
[ -r  queue_id ] [ directory ... ]
   
 ОПИСАНИЕ 



Команда  postsuper  предназначена для обслуживания очереди Postfix.
Эта команда выполняется только супер-пользователем.
 
По умолчанию, операции, содержащие в параметрах командной строки  -s  и 
 -p ,  postsuper  выполняет для всех каталогов очереди Postfix, 
т.е. для каталогов  incoming ,  active  и  deferred , содержащих
почтовые файлы, и для каталогов  bounce ,  defer  и  flush ,
содержащих лог-файлы.
 
Параметры:
 
 -d  queue_id  (версии Postfix >= 20010525) 
Удалить одно сообщение с указанным ID из указанной почтовой
очереди(ей) (по умолчанию:  incoming ,  active  и
 deferred ).
Если вместо  queue_id  указать  - , то программа возьмёт номера
сообщений из стандартного ввода.
 
Для удаления всех сообщений укажите  -d ALL , например, чтобы удалить
почту из очереди  deferred , укажите  -d ALL deferred . В качестве
защиты от случайностей слово  ALL  необходимо указать в верхнем 
регистре (большими буквами).
 
 
Номера (ID) в очереди Postfix используются повторно. Существует очень
небольшая вероятность того, что postsuper удалит не тот файл сообщения,
если команда выполняется на работающей системе Postfix.
 
 
Сценарий такой:
 
 
 1) 
Завершив обработку сообщения, которое должен будет удалить  postsuper ,
менеджер очереди удаляет его сам.
 2) 
Поступает новая почта и новому сообщению присваивается ID-номер того 
сообщения, которое должен будет удалить  postsuper . Вероятность 
повторного использования удаленного номера около 1 на 2**15 (количество 
разных значений микросекунд, на которое системные часы могут отклониться 
в течение секунды).
 3) 
 postsuper  удаляет новое сообщение вместо старого, которое уже
удалено.
 
 

 -p 
Удалить старые временные файлы, оставшиеся после краха системы или
программы.
 -r  queue_id  (версии Postfix >= 20010525) 
Повторно поставить в очередь сообщение с указанным ID-номером из
указанной почтовой очереди(-ей) (по умолчанию:  incoming , 
 active  и  deferred ).
Для повторной постановки в очередь нескольких сообщений укажите в 
командной строке несколько ключей  -r .
По другому, если вместо  queue_id  указать  - , то программа
будет считывать номера очереди со стандартного ввода.
 
Для повторной установки в очередь всех сообщений, укажите  -r ALL .
В качестве защиты, слово  ALL  необходимо ввести в верхнем регистре.
 
Повторно поставленное в очередь сообщение помещается в очередь
 maildrop , откуда оно копируется демоном pickup в новый файл,
имя которого гарантировано совпадает с inode-номеров нового файла 
очереди. Новый файл очереди снова становиться субъектом перезаписи
почтового адреса и подмены. Это полезно, когда правила перезаписи 
или виртуальной подмены изменились.
 
ID номера в очереди используются повторно.
Существует очень маленькая вероятность того, что  postsuper  
поставит в очередь не тот файл сообщения, если он выполняется во
время работы почтовой системы, но вреда от этого быть не должно.
 -s 
Проверить и восстановить структуру. Крайне рекомендуется выполнять
эту операцию сразу после запуска Postfix.
 
 
 . 
(версии Postfix >= 20010525)
Переименовывает файлы, чьи имена не соответствуют номеру inode файла 
сообщения. Эта операция необходима после восстановления почтовой очереди 
с другой машины или резервного носителя.
 . 
Перемещает файлы очереди, расположенные в неправильном месте иерархии
файловой системы, и удаляет подкаталоги, которые больше не нужны.
Восстановление правильного расположения файла необходимо после изменений
конфигурационных параметров в  hash_queue+names  и/или 
 hash_queue_depth .
 
 

 -v 
Включает подробный отчет в целях отладки. Использование нескольких
ключей  -v  увеличивает степень подробности.
 
   
 ДИАГНОСТИКА 



Сообщения об ошибках направляются в стандартный поток ошибок и в
 syslogd .
 
 postsuper  сообщает о количестве сообщений удаленных с помощью
 -d , количестве сообщений восстановленных в очереди с помощью 
 -r  и количестве сообщений, чьи имена файлов в очереди исправлены
с помощью  -s . Отчет направляется в стандартный поток ошибок и в
 syslogd .
   
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 


 

Подробнее о синтаксисе и значениях по умолчанию смотрите в файле
 main.cf .
 
 hash_queue_depth 
Количество уровней подкаталогов для хэшированных очередей.
 hash_queue_names 
Имена очередей, которые организованы в виде многоуровневых подкаталогов.
 
   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 


 

С данным программным обеспечением должна поставляться лицензия от
Secure Mailer.
   
 ОБ АВТОРАХ 


 Wietse Venema
IBM T.J. Watson Research
P.O. Box 704
Yorktown Heights, NY 10598, USA

Перевод:
Alex Savvin < savvin@mail.ru >, Jan 02, 2002

 
 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 ДИАГНОСТИКА 
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 
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