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
 
 
 
 auditd.conf (5) >>  auditd.conf  (5)   ( Русские man: Форматы файлов )   auditd.conf  (5)   ( Linux man: Форматы файлов ) 
   
 ИМЯ 

auditd.conf - файл конфигурации службы аудита
   
 ОПИСАНИЕ 

В файле 
 /etc/audit/auditd.conf 

определяются параметры службы аудита.
На одной строке может быть не больше одной директивы. Директива состоит из ключевого слова (названия параметра), знака равенства 
и соответствующих ему данных (значения параметра).
Допустимые ключевые слова:
 log_file ,  log_format ,  flush ,  freq ,  num_logs ,

 max_log_file ,  max_log_file_action ,  space_left ,

 action_mail_acct ,  space_left_action ,  admin_space_left ,

 admin_space_left_action ,

 disk_full_action  и  disk_error_action .

Далее даётся описание каждого из них.
 
 
 log_file 

 
Полное имя файла, в который следует записывать протокол.
 log_format 

 
Оформление данных в протоколе. Допустимы два значения: raw и nolog.
При указании 
 RAW ,

данные будут записываться в том виде, в котором они получаются от ядра. Значение
 NOLOG 

отключает запись данных об аудите.
Этот параметр не влияет на обработку данных диспетчером событий системы аудита.
 priority_boost 

 
Неотрицательное число, определяющее повышение приоритета выполнения службы аудита.
Значение по умолчанию: 3. Для того чтобы не изменять приоритет, укажите 0.
 flush 

 
Стратегия работы с дисковым буфером. Допустимые значения:
 none ,  incremental ,  data  и  sync .

Вариант 
 none ,

отключает какие-либо дополнительные действия со стороны службы по синхронизации буфера с диском.
При значении 
 incremental ,

запросы на перенос данных из буфера на диск выполняются с частотой задаваемой параметром 
 freq. 

При значении 
 data 

данные файла синхронизируются немедленно. Значение
 sync 

указывает на необходимость немедленной синхронизации как данных, так и метаданных файла при записи на диск.
 freq 

 
Максимальное число записей протокола, которые могут храниться в буфере.
При достижении этого числа производится запись буфериованных данных на диск.
Данный параметр допустим только если
 flush 

имеет значение 
 incremental. 

 num_logs 

 
Максимальное число файлов с протоколами. Используется если параметр 
 max_log_file_action 

имеет значение rotate.
Если указано число меньше 2, при достижении ограничения на размер файла он обнуляется.
Значение параметра не должно превышать 99.
Значение по умолчанию: 0. При указании большого числа может потребоваться увеличить
ограничение на количество ожидающих запросов. Это можно сделать в файле /etc/audit/audit.rules.
 dispatcher 

 
Диспетчер - программа, которой (на стандартный ввод) будут передаваться копии сообщений о событиях аудита.
Она запускается (с правами администратора) службой аудита при загрузке последней.
 disp_qos 

 
Разрешить ли блокирование при взаимодействии с диспетчером.
Для передачи информации диспетчеру используется буфер размером 128 кб.
Это значение является оптимальным для большинства случаев.
Если блокирование запрещено (lossy), то все сообщения, поступающие
при полном буфере, не будут доходить до диспетчера 
(записи о них по-прежнему будут вноситься в файл на диске, если только log_format не равно nolog).
В случае, если блокирование разрешено (lossless), служба аудита будет ожидать 
появления свободного места в очереди, передавать сообщение диспетчеру и только потом записывать его на диск.
Допустимые значения: lossy и lossless.
Значение по умолчанию - lossy.
 max_log_file 

 
Ограничение на размер файла протокола в мегабайтах.
Действие, выполняемое при достижении размера файла указанного значения, можно настроить с помощью следующего параметра.
 max_log_file_action 

 
Действие предпринимаемое при достижении размером файла протокола максимального значения.
Допустимые значения: 
 ignore ,  syslog ,  suspend ,  rotate  и keep_logs.

Вариант 
 ignore ,

отключает контроль за размером файла. При значении
 syslog 

в системный протокол будет внесено соответствующее сообщение. При значении
 suspend 

дальнейшее ведение протокола будет прекращено. Служба по-прежнему будет работать. При значении 
 rotate 

текущий файл будет переименован и для протокола будет создан новый файл.
Имя предыдущего протокола будет дополнено числом 1, а номера других протоколов (если они имеются) будут увеличены на единицу.
Таким образом, чем больше номер у протокола, тем он старше. Максимальное число файлов определяется параметром num_logs (естественно, соответствие ему достигается за счёт удаления самых старых протоколов).
Такое поведение аналогично поведению утилиты logrotate. Вариант 
 keep_logs 

аналогичен предыдущему, но число файлов не ограничено.
 action_mail_acct 

 
Адрес электронной почты.
Значение по умолчанию: root.
Если адрес не локальный по отношению к данной системе,
необходимо чтобы в ней был настроен механизм отправки почты.
В частности, требуется наличие программы /usr/lib/sendmail.
 space_left 

 
Минимум свободного пространства в мегабайтах, при достижении которого
должно выполняться действие определяемое следующим параметром.
 space_left_action 

 
Действие предпринимаемое при достижении объёмом свободного пространства на диске указанного минимума.
Допустимые значения - 
 ignore ,  syslog ,  email ,  exec ,  suspend ,  single  и  halt .

При значении 
 ignore ,

никаких действий не производится. При значении 
 syslog 

в системный протокол добавляется соответствующая запись. При значении 
 email 

по адресу указанному в 
 action_mail_acct 

отправляется уведомление. При значении 
 exec 

 <путь к программе>  

запускается программа по указанному пути. Передача параметров не поддерживается. При значении 
 suspend 

служба аудита прекратит вести протокол событий на диске, но будет продолжать работать. Указание 
 single 

приведёт к переводу компьютера в однопользовательский режим. Указание 
 halt 

приведёт к выключению компьютера.
 admin_space_left 

 
Критический минимум свободного пространства в мегабайтах, при достижении которого
должно выполняться действие определяемое следующим параметром.
Данное действие следует рассматривать как последнюю меру предпринимаемую перед тем как закончится место на диске.
Значение настоящего параметра должно быть меньше значения space_left.
 admin_space_left_action 

 
Действие предпринимаемое при достижении объёмом свободного пространства на диске указанного критического минимума.
Допустимые значения - 
 ignore ,  syslog ,  email ,  exec ,  suspend ,  single  и  halt .

При значении 
 ignore ,

никаких действий не производится. При значении 
 syslog 

в системный протокол добавляется соответствующая запись. При значении 
 email 

по адресу указанному в 
 action_mail_acct 

отправляется уведомление. При значении 
 exec 

 <путь к программе>  

запускается программа по указанному пути. Передача параметров не поддерживается. При значении 
 suspend 

служба аудита прекратит вести протокол событий на диске, но будет продолжать работать. Указание 
 single 

приведёт к переводу компьютера в однопользовательский режим. Указание 
 halt 

приведёт к выключению компьютера.
 disk_full_action 

 
Действие предпринимаемое при обнаружении отсутствия свободного пространства на диске.
Допустимые значения - 
 ignore ,  syslog ,  email ,  exec ,  suspend ,  single  и  halt .

При значении 
 ignore ,

никаких действий не производится. При значении 
 syslog 

в системный протокол добавляется соответствующая запись. При значении 
 email 

по адресу указанному в 
 action_mail_acct 

отправляется уведомление. При значении 
 exec 

/некоторый-путь запускается сценарий по указанному пути. Передача параметров сценарию не поддерживается. При значении 
 suspend 

служба аудита прекратит вести протокол событий на диске, но будет продолжать работать. Указание 
 single 

приведёт к переводу компьютера в однопользовательский режим. Указание 
 halt 

приведёт к выключению компьютера.
 disk_error_action 

 
Действие предпринимаемое при возникновении ошибки в работе с диском.
Допустимые значения - 
 ignore ,  syslog ,  email ,  exec ,  suspend ,  single  и  halt .

При значении 
 ignore ,

никаких действий не производится. При значении 
 syslog 

в системный протокол добавляется соответствующая запись. При значении 
 email 

по адресу указанному в 
 action_mail_acct 

отправляется уведомление. При значении 
 exec 

/некоторый-путь запускается сценарий по указанному пути. Передача параметров сценарию не поддерживается. При значении 
 suspend 

служба аудита прекратит вести протокол событий на диске, но будет продолжать работать. Указание 
 single 

приведёт к переводу компьютера в однопользовательский режим. Указание 
 halt 

приведёт к выключению компьютера.
 
   
 ПРИМЕЧАНИЯ 

В среде CAPP (Controlled Access Protection Profile - контролируемый профиль защиты доступа) 
ведение протоколов настолько важно, что невозможность его продолжения может служить основанием отказа в доступе к ресурсам.
Поэтому мы рекомендуем выделять для файла /var/log/audit специальный раздел.
 

Кроме того, параметру flush следует присвоить значение sync или data.
 

Для обеспечения полного использования раздела параметрам max_log_file и num_logs следует присвоить соответствующие значения.
Учитывайте, что чем больше файлов создаётся на диске (и соответственно переименовывается),
тем больше времени будет уходить на обработку событий при достижении размером очередного файла максимума.
Параметру max_log_file_action рекомендуется присвоить значение keep_logs.
 

Значение space_left должно быть таким, которое позволит администратору 
вовремя среагировать на предупреждение. Обычно в число действий выполняемых администратором входит
запуск  aureport -t  и архивирование самых старых протоколов.
Значение space_left зависит от системы, в частности от частоты поступления сообщений о событиях.
Значение space_left_action рекомендуется установить в email.
Если требуется отправка сообщения snmp trap, укажите вариант exec.
 

Установите значение admin_space_left таким образом,
чтобы хватило свободного места для сохранения записей о последующих действиях администратора.
Значение параметра admin_space_left_action следует установить в single,
ограничив таким образом способы взаимодействия с системой консолью.
 

Действие указанное в disk_full_action выполняется когда в разделе уже не осталось свободного места. Доступ к ресурсам машины должен быть полностью прекращён, т.к. нет возможности контролировать работу системы.
Это можно сделать указав значение single или halt.
 

Значение disk_error_action следует установить в syslog, single, либо halt в зависимости от соглашения относительно обращения со сбойным аппаратным обеспечением.
 
   
 ФАЙЛЫ 

 
 /etc/audit/auditd.conf 

 
Файл конфигурации службы аудита 
 
 
   
 СМ. ТАКЖЕ 

 auditd (8).

 
   
 АВТОР 

Стив Граб (Steve Grubb)
 
   
 ПЕРЕВОД 

Перевод с английского Николай Шафоростов < shafff@ukr.net > 2007
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ПРИМЕЧАНИЯ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
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