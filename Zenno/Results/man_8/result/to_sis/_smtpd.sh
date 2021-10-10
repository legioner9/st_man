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
 
 
 
 smtpd (8) >>  smtpd  (8)   ( Русские man: Команды системного администрирования )   smtpd  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

smtpd
-
SMTP-сервер Postfix
   
 ОБЗОР 


 smtpd  [обычные параметры демона Postfix]
   
 ОПИСАНИЕ 



Сервер SMTP принимает запросы на сетевое соединение и выполняет
ноль или более SMTP транзакций на одно соединение. Каждое
принятое сообщение пропускается через демон  cleanup (8) и
помещается в очередь  incoming  в виде одного файла очереди. 
Для работы в этом режиме программа ожидает запуска от менеджера
процессов  master (8).
 
Кроме того, сервер SMTP использует установленное соединение со
стандартным вводом и помещает сообщения непосредственно в очередь
 maildrop . В этом, так называемом одиноком (stand-alone),
режиме сервер SMTP может принять почту во время остановки
почтовой системы.
 
Сервер SMTP применяет различные политики к запросам на соединение
и к параметрам, указываемым с командами  HELO, ETRN, MAIL FROM, 
VRFY  и  RCPT TO . Подробнее они описаны ниже и в 
конфигурационном файле  main.cf .
   
 БЕЗОПАСНОСТЬ 


 

Сервер SMTP умеренно влияет на безопасность. По сети он общается 
с клиентами SMTP и серверами DNS. Сервер SMTP можно запускать в
изолированной среде выполнения с фиксированным низким приоритетом.
   
 СТАНДАРТЫ 


 RFC 821  (Протокол SMTP)
RFC 1123 (Требования к машине)
RFC 1651 (Расширения службы SMTP)
RFC 1652 (8bit-MIME транспорт)
RFC 1854 (SMTP Pipelining)
RFC 1870 (Объявление размера сообщения)
RFC 1985 (Команда ETRN)
RFC 2554 (Команда AUTH)
RFC 2821 (Протокол SMTP)
   
 ДИАГНОСТИКА 



Проблемы и транзакции регистрируются в  syslogd (8).
 
В зависимости от установки параметра  notify_classes ,
постмастер уведомляется об возвратах, проблемах протокола,
нарушениях политики и других затруднениях.
   
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 


 

Для этой программы особо актуальны следующие параметры в  main.cf .
Подробнее о синтаксисе и значениях по умолчанию смотрите в файле 
 main.cf . После изменения конфигурации выполните команду
 postfix reload .
   
 УПРАВЛЕНИЕ СОВМЕСТИМОСТЬЮ 



 
 strict_rfc821_envelopes 
Запрещает адресацию конверта в стиле, отличном от RFC 821.
Например, разрешить форматы адреса в стиле RFC 822 с комментариями,
как делает Sendmail.
 
 broken_sasl_auth_clients 
Поддержка старых клиентов Microsoft, в которых неверно реализован 
протокол AUTH и которые ожидают в ответ на EHLO "250 AUTH=list"
вместо "250 AUTH list".
 
   
 УПРАВЛЕНИЕ ПРОВЕРКОЙ СОДЕРЖАНИЯ 

 
 content_filter 
Имя транспорта почтовой доставки, который фильтрует почту и который
либо возвращает почту, либо помещает результат обратно в Postfix.
Этот параметр имеет тот же синтаксис, что и правая часть в таблице 
transport.
 
   
 УПРАВЛЕНИЕ АУТЕНТИФИКАЦИЕЙ 

 
 enable_sasl_authentication 
Разрешает по-сессионную аутентификацию, как для RFC 2554 (SASL).
Эта возможность доступна в том случае, если она выбрана во время
сборки программы и разрешена во время выполнения.
 smtpd_sasl_local_domain 
Имя локальной области аутентификации.
 smtpd_sasl_security_options 
Ноль или более из следующего:
 
 
 noplaintext 
Запрещает методы аутентификации, использующие пароли передаваемые открытым текстом.
 noactive 
Запрещает методы аутентификации, подверженные не словарным активным
атакам.
 nodictionary 
Запрещает методы аутентификации, подверженные пассивным словарным 
атакам.
 noanonymous 
Запрещает анонимное подключение.
 
 

 
   
 РАЗНОЕ 



 
 always_bcc 
Адрес для отправки копии каждого сообщения, входящего в систему.
 command_directory 
Расположение команд поддержки Postfix (по умолчанию:
 $program_directory ).
 debug_peer_level 
Повышение уровня подробности журналирования при совпадении
удалённой машины с шаблоном в параметре  debug_peer_list .
 debug_peer_list 
Список шаблонов доменов или сетей. Когда удалённая машина совпадает
с шаблоном, уровень подробности журналирования увеличивается на
величину, указанную в параметре  debug_peer_level .
 error_notice_recipient 
Получатель уведомлений об ошибках протокола/политики/ресурса/программы.
 hopcount_limit 
Ограничение на количество заголовков сообщения  Received: .
 local_recipient_maps 
Список таблиц с именами пользователей, которые локальны для 
 $myorigin  или  $inet_interfaces . Если этот параметр
определён, то сервер SMTP отвергает письма для неизвестных 
локальных пользователей.
 notify_classes 
Список классов ошибок. Наиболее интересны:
 
 
 policy 
При нарушении клиентом любой политики отправить постмастеру
письмо с описанием всей SMTP сессии.
 protocol 
При нарушении клиентом SMTP протокола или выдаче не поддерживаемой
команды отправить постмастеру письмо с описанием всей SMTP сессии.
 
 

 smtpd_banner 
Текст, следуемый за кодом состояния  220  в приветственном
баннере SMTP.
 smtpd_recipient_limit 
Ограничивает количество получателей одного сообщения, для которого 
сервер SMTP может выполнить доставку.
 smtpd_timeout 
Ограничение времени на посылку ответа сервера и приёма запроса клиента.
 soft_bounce 
Сменить жёсткие (5xx) ответы отказа на мягкие (4xx) ответы 
отказа. Может быть полезно в целях тестирования.
 
   
 УПРАВЛЕНИЕ РЕСУРСАМИ 



 
 line_length_limit 
Ограничение количества памяти в байтах, используемой для обработки
частично введённых строк.
 message_size_limit 
Ограничение полного размера сообщения в байтах, включая дисковое
хранилище информации для конверта.
 queue_minfree 
Минимальное количество свободного места в байтах в файловой
системе очереди SMTP-сервера для получения любого письма в принципе.
 
   
 TARPITTING 



 
 smtpd_error_sleep_time 
Время ожидания в секундах перед отправкой ответа ошибки сервера
4xx или 5xx.
 smtpd_soft_error_limit 
При выполнении клиентом SMTP указанного количества ошибок, сделать
паузу на  error_count  секунд перед возобновлением ответов на 
любые запросы клиента.
 smtpd_hard_error_limit 
Отключиться после того, как клиент сделает указанное количество ошибок.
 smtpd_junk_command_limit 
Ограничение на количество неосновных команд, таких как NOOP, VRFY, 
ETRN или RSET, которые клиент может сделать в сессии SMTP до того, 
как он будет штрафоваться tarpit задержками.
 
   
 УПРАВЛЯЮЩИЕ ОГРАНИЧЕНИЯ UCE 



 
 smtpd_client_restrictions 
Ограничение на виды клиентов, которые могут подключиться к
этой почтовой системе.
 smtpd_helo_required 
Требовать, чтобы клиент представлялся в начале SMTP сессии.
 smtpd_helo_restrictions 
Ограничение на допустимые имена машин-клиентов в командах
 HELO  и  EHLO .
 smtpd_sender_restrictions 
Ограничения на допустимые адреса отправителей в командах 
 MAIL FROM .
 smtpd_recipient_restrictions 
Ограничения на допустимые адреса получателей в командах
 RCPT TO .
 smtpd_etrn_restrictions 
Ограничения на допустимые имена доменов в командах 
 ETRN  и на клиентов, которые могут выполнять команды
 ETRN .
 allow_untrusted_routing 
Разрешить ненадёжным клиентам указывать адреса с маршрутизацией 
отправителя. Включение этого параметра открывает опасные цикличные пересылки, 
запутывая надёжные резервные MX хосты.
 smtpd_restriction_classes 
Объявляет имя нулевого или более числа параметров, содержащих 
список UCE ограничений. Затем имена этих параметров можно 
использовать вместо списков ограничений, которые они представляют.
 maps_rbl_domains 
Список DNS доменов, публикующих адреса машин в чёрном списке.
 relay_domains 
Ограничение на домены или сети, для и от которых эта почтовая
система будет пересылкой.
 
   
 УПРАВЛЯЮЩИЕ ОТВЕТЫ UCE 



 
 access_map_reject_code 
Ответ сервера при нарушении клиентом ограничения доступа к базе 
данных.
 invalid_hostname_reject_code 
Ответ сервера при нарушении клиентом ограничения 
 reject_invalid_hostname .
 maps_rbl_reject_code 
Ответ сервера при нарушении клиентом ограничения
 maps_rbl_domains .
 reject_code 
Код ответа при совпадении клиента с ограничением  reject .
 relay_domains_reject_code 
Ответ сервера при попытках клиента нарушить политику пересылки почты.
 unknown_address_reject_code 
Ответ сервера при нарушении клиентом ограничения 
 reject_unknown_address .
 unknown_client_reject_code 
Ответ сервера, при нарушении клиентом без адреса, для замены
имени ограничения  reject_unknown_clients .
 unknown_hostname_reject_code 
Ответ сервера при нарушении клиентом ограничения
 reject_unknown_hostname .
 
   
 СМОТРИ ТАКЖЕ 


 cleanup (8) - канонизация сообщения
 master (8) - менеджер процессов
 syslogd (8) - системное журналирование
   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 


 

С данным программным обеспечением должна поставлять лицензия от
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
 БЕЗОПАСНОСТЬ 
 СТАНДАРТЫ 
 ДИАГНОСТИКА 
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 
 УПРАВЛЕНИЕ СОВМЕСТИМОСТЬЮ 
 УПРАВЛЕНИЕ ПРОВЕРКОЙ СОДЕРЖАНИЯ 
 УПРАВЛЕНИЕ АУТЕНТИФИКАЦИЕЙ 
 РАЗНОЕ 
 УПРАВЛЕНИЕ РЕСУРСАМИ 
 TARPITTING 
 УПРАВЛЯЮЩИЕ ОГРАНИЧЕНИЯ UCE 
 УПРАВЛЯЮЩИЕ ОТВЕТЫ UCE 
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