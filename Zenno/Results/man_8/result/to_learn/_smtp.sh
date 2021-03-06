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
 
 
 
 smtp (8) >>  smtp  (8)   ( Русские man: Команды системного администрирования )   smtp  (8)   ( Linux man: Команды системного администрирования ) Ключ  smtp  обнаружен в базе ключевых слов. 


   
 НАЗВАНИЕ 

smtp
-
удаленная доставка Postfix через SMTP
   
 ОБЗОР 


 smtp  [обычные параметры демона Postfix]
   
 ОПИСАНИЕ 



Клиент SMTP выполняет запросы менеджера очереди на доставку 
сообщения. Каждый запрос задаёт файл очереди, адрес 
отправителя, домен или хост для доставки и информацию о 
получателе.
Эта программа ожидает запуска от менеджера процессов  master (8).
 
Клиент SMTP обновляет файл очереди и помечает получателей как 
обслуженных, или информирует менеджер очереди, что доставка
будет повторена ещё раз позже. Отчёты о проблемах доставки
посылаются соответственно демону  bounce (8) или  defer (8).
 
Клиент SMTP просматривает список адресов почтовых обменников компьютера
назначения, сортирует список по приоритету и соединяется с каждым
перечисленным адресом, пока не найдёт отвечающий сервер.
 
Если домены или машины указаны в виде списка, разделённого 
запятыми или пробелами, клиент SMTP повторяет вышеприведённый
процесс для всех пунктов назначения, пока он не найдёт 
отвечающий сервер.
 
Как только клиент SMTP получит приветственный баннер сервера, 
никакие ошибки не заставят его попробовать следующий адрес из
списка почтовых обменников. Вместо этого, сообщение либо
возвращается, либо его доставка откладывается на потом.
   
 БЕЗОПАСНОСТЬ 


 

Клиент SMTP умеренно чувствителен к безопасности. Он общается 
по сети с SMTP серверами и серверами DNS. Клиент SMTP можно
запустить в изолированной среде выполнения с фиксированным низким приоритетом.
   
 СТАНДАРТЫ 


 RFC 821 (Протокол SMTP)
RFC 1651 (Расширения службы SMTP)
RFC 1870 (Объявление размера сообщения)
RFC 2197 (Pipelining)
RFC 2554 (Команда AUTH)
RFC 2821 (Протокол SMTP)
   
 ДИАГНОСТИКА 



Проблемы и транзакции регистрируются в  syslogd (8).
Разрушенные файлы сообщений помечаются, чтобы менеджер очереди
мог переместить их в очередь  corrupt  для последующей
проверки.
 
В зависимости от установки параметра  notify_classes ,
постмастер будет уведомляться о возвратах, проблемах протокола
и других затруднениях.
   
 ОШИБКИ 



   
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 


 

Для этой программы особо актуальны следующие параметры в  main.cf .
Подробнее о синтаксисе и значениях по умолчанию смотрите в файле
 main.cf . После изменения конфигурации выполните команду
 postfix reload .
   
 РАЗНОЕ 



 
 best_mx_transport 
Имя транспорта доставки, используемого когда локальная 
машина является наиболее предпочитаемым почтовым обменником
(по умолчанию, сообщается о почтовой петле и сообщение 
возвращается).
 debug_peer_level 
Повышение уровня информативности журналирования для машины,
совпавшей с шаблоном в параметре  debug_peer_list .
 debug_peer_list 
Список шаблонов доменов или сетей. Когда удалённая машина 
совпадает с шаблоном, уровень информативности журналирования
возрастает на величину, указанную в параметре 
 debug_peer_level .
 disable_dns_lookups 
Запрещает поиск в DNS. Это означает, что почта должна 
перенаправляться через интеллектуальную
пересылочную машину.
 error_notice_recipient 
Получатель уведомлений об ошибках 
протокола/политики/ресурса/программы.
 fallback_relay 
Машины, на которые автоматически отправляется почта, если пункт
сообщения не найден или не доступен.
 ignore_mx_lookup_error 
Если сервер имён не отвечает на запрос MX, искать запись A вместо
задержки почтовой доставки.
 inet_interfaces 
Адреса сетевых интерфейсов, через которые данная почтовая система
получает почту. Когда любой из этих адресов появляется в списке
почтовых обменников для удалённой доставке, список усекается, 
чтобы избежать зацикливания почтовой доставки.
 notify_classes 
Когда этот параметр включает класс  protocol , постмастеру
посылается почта с описанием сессий SMTP с ошибками протокола.
 smtp_always_send_ehlo 
Всегда посылать EHLO в начале соединения.
 smtp_never_send_ehlo 
Никогда не посылать EHLO в начале соединения.
 smtp_skip_4xx_greeting 
Пропустить серверы, которые приветствуют нас кодом состояния 4xx.
 smtp_skip_5xx_greeting 
Пропустить серверы, которые приветствуют нас кодом состояния 5xx.
 smtp_skip_quit_response 
Не ожидать ответа сервера после отправки QUIT.
 smtp_bind_address 
Цифровой сетевой адрес привязки при создании соединения.
 
   
 УПРАВЛЕНИЕ АУТЕНТИФИКАЦИЕЙ 

 
 smtp_enable_sasl_auth 
Разрешить по-сессионную аутентификацию как в RFC 2554 (SASL).
По умолчанию Postfix собран без поддержки SASL.
 smtp_sasl_password_maps 
Поисковые таблицы с записями  name : passowrd  для каждой
машины или домена. Отсутствие записи для машины означает не предпринимать
попыток аутентификации.
 smtp_sasl_security_options 
Ноль или более из следующего:
 
 
 noplaintext 
Запрещает методы аутентификации, использующие пароли передаваемые открытым
текстом.
 noactive 
Запрещает методы аутентификации, которые подвержены активным не словарным
атакам.
 nodictionary 
Запрещает методы аутентификации, которые подвержены пассивной словарной
атаке.
 noanonymous 
Запрещает анонимное подключение.
 
 

 
   
 УПРАВЛЕНИЕ РЕСУРСАМИ 



 
 smtp_destination_concurrency_limit 
Ограничение количества параллельных доставок в один и тот же
пункт назначения. По умолчанию ограничение берётся из параметра
 default_destination_concurrency_limit .
 smtp_destination_recipient_limit 
Ограничение количества получателей на одну доставку.
Значение по умолчанию берётся из параметра
 default_destination_recipient_limit .
 
   
 УПРАВЛЕНИЕ ПЕРИОДАМИ ОЖИДАНИЯ 



 

По умолчанию единица измерения времени - секунда; точную 
единицу измерения времени можно задать, добавив односимвольный
суффикс к значению: s (секунды), m (минуты), h (часы), d (дни)
или w (недели).
 
 smtp_connect_timeout 
Время ожидания для завершения TCP соединения. Если в течение указанного
времени соединение не устанавливается, клиент SMTP пробует следующий
адрес из списка почтовых обменников.
 smtp_helo_timeout 
Время ожидания для получения приветственного баннера SMTP.
Если сервер сбрасывает соединение без отправки приветственного
баннера или когда он не отправляет приветственный баннер
в течение заданного времени, клиент SMTP пробует следующий
адрес из списка почтовых обменников.
 smtp_helo_timeout 
Время ожидания для отправки команды  HELO  и получения ответа
сервера.
 smtp_mail_timeout 
Время ожидания для отправки команды  MAIL FROM  и получения
ответа сервера.
 smtp_rcpt_timeout 
Время ожидания для отправки команды  RCPT TO  и получения
ответа сервера.
 smtp_data_init_timeout 
Время ожидания для отправки команды  DATA  и получения 
ответа сервера.
 smtp_data_xfer_timeout 
Время ожидания для отправки содержимого сообщения.
 smtp_data_done_timeout 
Время ожидания для отправки команды " . " и получения
ответа сервера. При отсутствии ответа будет зарегистрировано 
предупреждение, что почта может быть доставлена несколько раз.
 smtp_quit_timeout 
Время ожидания для отправки команды  QUIT  и получения ответа
сервера.
 
   
 СМОТРИ ТАКЖЕ 


 bounce (8) - отчёты о не доставленной почте
 master (8) - менеджер процессов
 qmgr (8) - менеджер очереди
 syslogd (8) - системное журналирование
   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 


 

Это программное обеспечение должно поставляться с лицензией от
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
 ОШИБКИ 
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 
 РАЗНОЕ 
 УПРАВЛЕНИЕ АУТЕНТИФИКАЦИЕЙ 
 УПРАВЛЕНИЕ РЕСУРСАМИ 
 УПРАВЛЕНИЕ ПЕРИОДАМИ ОЖИДАНИЯ 
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