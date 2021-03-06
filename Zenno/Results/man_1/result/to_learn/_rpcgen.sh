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
 
 
 
 rpcgen (1)   rpcgen  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   rpcgen  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  rpcgen  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   rpcgen  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

 rpcgen  - компилятор протокола RPC
   
 СИНТАКСИС 

 
 rpcgen  infile 
 


 

 
 rpcgen [-D name [= value ]] [-T] [-K  secs ]  infile 
 


 

 
 rpcgen -c|-h|-l|-m|-t [-o  outfile  ]  infile 
 


 

 
 rpcgen [-I] -s  nettype  [-o  outfile ]  infile 
 


 

 
 rpcgen -n  netid  [-o  outfile ]  infile 
   
 ОПИСАНИЕ 


 rpcgen 
является тем инструментом, который генерирует код языка C для применения протокола RPC.
Входными данными для
 rpcgen 
является язык, похожий на C и известный как
RPC (Remote Procedure Call Language - Язык Удаленного Выполнения Процедур).

 rpcgen 
обычно используется в первом виде, при этом
из одного файла ввода генерируется до четырех файлов вывода.
Если 
 infile 
называется
 proto.x ,
то
 rpcgen 
сгенерирует файл заголовков
 proto.h ,
файл процедур XDR
 proto_xdr.c ,
серверную часть в
 proto_svc.c ,
и часть клиентa в
 proto_clnt.c .
С параметром
 -T 
будет сгенеририрована таблица переходов RPC в
 proto_tbl.i .
С параметром
 -Sc 
будет сгенерирован простой код, поясняющий, как использовать
удаленные процедуры со стороны клиента. Этот код будет создан в файле
 proto_client.c .
С параметром
 -Ss 
будет сгенерирован простой код для сервера, поясняющий, как написать
удаленные процедуры. Код будет сохранен в файле
 proto_server.c .

Созданный сервер может быть запущен либо через мониторы порта
(например  inetd  или  listen ) или сам по себе.
Когда сервер запущен через монитор порта, сервер создается только для 
того траснпорта, для которого был передан описатель файла  0 .
Название транспорта должно быть указано через переменую окружения
 PM_TRANSPORT .
Когда запускается сервер, созданный
 rpcgen ,
то он запускает обработку сервером всех транспортов, указанных в 
переменной окружения  NETPATH  или, если такая не указана,
сервером будут обрабатываться все видимые транспорты из файла  /etc/netconfig .
Примечание:
транспорты выбираются во время запуска а не во время компиляции.
Когда стартует сервер, он переводит себя в фоновый режим по умолчанию.
Для запуска сервера в основном режиме необходимо определить специальный символ
 RPC_SVC_FG .

Второй вид использования rpcgen обеспечивает создание дополнительных возможностей,
позволяющих создание более сложных RPC-серверов.
Эти возможности включают в себя поддержку пользовательских  #defines 
и таблиц переходов RPC.
В таблице переходов содержатся такие элементы:
 

 
 * 
указатели на вспомогательную программу, соответствующую процедуре,
 * 
указатель на входящие и исходящие агрументы
 * 
размер этих программ

 
 

Сервер может использовать таблицу переходов для проверки 
авторизации и затем исполнять вспомогательные программы; 
библиотека клиента может использовать ее для работы с
порядком расположения данных и преобразованиями данных XDR.

Оставшиеся три вида синтаксиса используются, когда
нужно генерировать не все файлы вывода, а только один.
В разделе ПРИМЕРЫ ниже приведено несколько вариантов использования программы.
Когда 
 rpcgen 
исполняется с параметром
 -s ,
то создаются серверы только для частного класса транспортов.
Когда программа исполняется с параметром
 -n ,
то создается сервер для транспортов, определенных
 netid .
Если
 infile 
не определено, то
 rpcgen 
считывает данные со стандартного устройства ввода.

На файле ввода запускается препроцессор C,
 cc -E 
[см.  cc (1)],
прежде чем он будет интерпретирован
 rpcgen .
Для каждого вида файлов вывода
 rpcgen 
определяет специальный символ препроцессова для использования программистами
 rpcgen :


 
 RPC_HDR 
определяется при компилировании в файлы заголовков
 RPC_XDR 
определяется при компилировании в файл процедур XDR
 RPC_SVC 
определяется при компилировании в программу сервера
 RPC_CLNT 
определяется при компилировании в программу клиента
 RPC_TBL 
определяется при компилировании в таблицу переходов RPC


Любая строка, начинающаяся с 
` % ',
записывается напрямую в файл вывода, не интерпретируясь
 rpcgen .

Для каждого типа данных, к которым идет обращение в файле ввода
 infile ,
 rpcgen 
подразумевает существование процедуры со строкой
 xdr_ 
связанной с названием этого типа данных.
Если эта процедура не существует в библиотеке RPC/XDR,
то она должна быть создана. Передача данных неопределенного
типа позволяет обеспечивать множественность процедур XDR.
 



Доступны следуюшие параметры:
 -a 
Генерировать все файлы, включая примеры кода для клиента и сервера.
 -b 
Генерировать код формата SunOS4.1. Существует для обеспечения совместимости.
Является параметром по умолчанию.
 -5 
Генерировать код формата SysVr4. Используется Transport Independent RPC,
работающей на системах Svr4. По умолчанию rpcgen делает код в формате SunOS4.1.
 -c 
Компилировать процедуры XDR.
 -C 
Генерировать код в формате ANSI C. С этим параметром также генерируется код, который
может быть скомпилирован компилятором C++. Является параметром по умолчанию.
 -k 
Генерировать код в формате K&R C. Параметром по умолчанию является компиляция в ANSI C.
 -D name [= value ] 
Определить символ
 name .
Эквивалентно директиве
 #define 
в исходниках.
Если не задано
 value , то
 value 
определяется как  1 .
Этот параметр пожет быть указан несколько раз.
 -h 
Компилировать в определения данных
 C 
(файл заголовков).
 -T 
параметр может использоваться совместно с предыдущим чтобы создать файл заголовков,
который поддерживает таблицы переходов RPC.
 -I 
Генерировать службу, которая может быть запущена через inetd.
По умолчанию генерируется статическая служба, которая обрабатывает транспорты,
выбранные по  -s .
Использование  -I  позволяет запускать службы обоими методами.
 -K  secs 
По умолчанию созданные с использованием  rpcgen  службы ждут  120  секунд
после выполнения сервиса и затем завершуют работу.
Этот интервал может быть изменен использованием флага  -K .
Для создания сервера, который завершает работу сразу 
после обработки запроса, надо использовать
 -K 0 .
Для создания сервера, который до этого никогда не существовал,
необходимо использовать соответсвующий аргумент
 -K -1 .
 
При осуществлении мониторинга сервера некоторые мониторы порта, такие как
 listen (1M),
 всегда 

порождают новый процесс в ответ на запрос службы.
Известно, что, если сервер используется с такого рода мониторами, то
он должен заканчивать свою работу немедленно после выполнения всех заданий.
Для таких серверов необходимо использовать  rpcgen с параметрами  -K -1 .
 -l 
Компилировать часть клиента.
 -m 
Компилировать часть сервера, но не генерировать
процедуру lqmainrq . Этот параметр полезен
при выполнении зацикленных процедур и для 
пользователей, которым нужно писать свои собственные 
процедуры lqmainrq для выполнения инициализации.
 -n  netid 
Компилирование части сервера для транспорта, определенного
 netid .
Должна быть запись для
 netid 
в базе данных netconfig.
Этот параметр может указываться несколько раз,
для компилирования мультитранспорного сервера.
 -N 
Использовать новый стиль rpcgen. Позволяет процедурам иметь несколько аргументов. 
Также использует стиль передачи параметров очень похожий на C. Поэтому, когда
вы передаете аргумент удаленной процедуре, вам надо передавать не указатель на
аргумент, а сам аргумент. Такой стиль отличается от обычной генерации кода rpcgen.
Новый стиль не включен по умолчанию для совместимости.
 -o  outfile 
Указать имя для файла вывода.
Если не указано, то используется стандартный порт вывода
(только режимы 
 -c ,
 -h ,
 -l ,
 -m ,
 -n ,
 -s ,
 -sSc,
-sSs
и
-t ).
 -s  nettype 
Компилировать в часть сервера для всех транспортов, принадлежащих классу
 nettype .
Поддерживаемые классы -
 netpath ,
 visible ,
 circuit_n ,
 circuit_v ,
 datagram_n ,
 datagram_v ,
 tcp ,
и
 udp 
[см.  rpc (3N)
для значений, связанных с этими классами].
Этот параметр может быть указан несколько раз.
Примечание:
транспорты выбираются в момент запуска, а не во время компиляции.
 -Sc 
Генерировать простой код для демонстрации работы удаленных процедур
и привязки к серверу перед вызовом клиентской части, сгенерированной rpcgen.
 -Ss 
Генерировать основу кода для удаленных процедур для серверной стороны. 
Вам понадобится внести сюда потом настоящий код удаленных процедур.
 -t 
Компилировать в таблицу переходов RPC.
 -T 
Генерировать код для поддержки таблиц переходов RPC.

Параметры
 -c ,
 -h ,
 -l ,
 -m ,
 -s 
и
 -t 
используются исключительно для генерации отдельных видов файлов,
в то время как параметры
 -D 
и
 -T 
являются глобальными и могут быть использованы с другими параметрами.
 


 
   
 ЗАМЕЧАНИЯ 

Язык RPC не поддерживает рекурсивность структур.
Как подобие этого, могут быть объявлены структуры высокого уровня,
а их имена использоваться внутри других структур для достижения подобного эффекта.

При использовании определений программ могут случиться конфликты имен, так-как
видимого разграничения фактически не происходит.
Много можно избежать заданием уникальных названий для программ, версий, процедур и типов.

Код сервера, сгенерированного с параметром
 -n ,
обращается к транспорту, определяемому
 netid 
и поэтому очень зависит от адреса.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Следующий пример:
 
 
 
$ rpcgen -T prot.x
 

генерирует пять файлов:
 prot.h ,
 prot_clnt.c ,
 prot_svc.c ,
 prot_xdr.c 
и
 prot_tbl.i .

Следующий пример посылает определения данных C (файл заголовков)
на стандартное устройство вывода.
 
 
$ rpcgen -h prot.x
 

Для отправки тестовой версии
 -DTEST ,
стороной сервера для всех транспортов, принадлежащих классу
 datagram_n 
на стандартное устройство вывода сипользуйте:
 
 
$ rpcgen -s datagram_n -DTEST prot.x
 

Для создания стороны сервера для транспорта, определенного
 netid 
 tcp ,
используйте:
 
 
$ rpcgen -n tcp -o prot_svc.c prot.x
 
 
   
 СМ. ТАКЖЕ 

 gcc (1).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЯ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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