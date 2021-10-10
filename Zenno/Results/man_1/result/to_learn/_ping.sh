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
 
 
 
 ping (1)   ping  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  ping  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   ping  (8)   ( FreeBSD man: Команды системного администрирования )   ping  (8)   ( Русские man: Команды системного администрирования )   ping  (8)   ( Linux man: Команды системного администрирования ) Ключ  ping  обнаружен в базе ключевых слов. 
 
 
 ping(1M) 
 ping(1M)  
 
 

 НАЗВАНИЕ
 ping  - посылка пакетов ICMP ECHO_REQUEST сетевым хостам
 
 СИНТАКСИС
 
   
        /usr/sbin/ping  хост  [ таймаут ]
     /usr/sbin/ping -s [-drvRlfnq] [-i  время_ожидания ]
        [-p  шаблон ]  хост  [ размер_данных  [ кол_пакетов ]]
      
 

 ОПИСАНИЕ
 Команда  ping  использует датаграмму ECHO_REQUEST протокола ICMP,
чтобы вызвать ответ ICMP ECHO_RESPONSE указанного хоста или
сетевого шлюза. Если хост отвечает,  ping  выдает сообщение, что хост
жив ( хост is alive ), в стандартный выходной поток и завершает работу.
В противном случае, после  таймаут  секунд она выдает сообщение, что
от хоста ответа нет ( no answer from хост ). Стандартное значение
таймаута - 20 секунд.
 
    Файлы
 
         
        /usr/lib/locale/локаль/LC_MESSAGES/uxping
         
         
                файл сообщений для текущего языка
                (См. LANG в  environ(5) .)
         
 

 ИСПОЛЬЗОВАНИЕ
 Когда указан флаг  -s ,  ping  посылает датаграмму каждую секунду и
печатает одну строку вывода для каждого полученного ответа
ECHO_RESPONSE. В этом случае  ping  вычисляет  времена обхода  (round
trip times) и статистику потери пакетов; после завершения или по
истечении  таймаута  команда печатает соответствующую итоговую
информацию. Если указано необязательное количество пакетов
( кол_пакетов ),  ping  посылает только соответствующее количество
запросов. Если количество пакетов не указано, команда будет
выполняться бесконечно. Для прекращения продолжающегося вывода,
используйте клавишу прерывания (Delete).
 
 Стандартный размер пакета датаграммы равен 64 байтам, но можно
задать и другой размер с помощью аргумента командной строки
 размер_данных . Учтите, что поскольку  ping  автоматически добавляет 8-
байтовый заголовок к каждой посылаемой датаграмме, размер пакета,
показываемый при использовании опции  -s  с аргументом
 размер_данных , всегда будет на 8 байтов больше, чем указанное вами
значение.
 
 При использовании  ping  для поиска сбоев в сети, необходимо сначала
выполнить  ping  на локальный хост, чтобы убедиться, что работает
локальный сетевой интерфейс.

    Опции

 Команда  ping  воспринимает следующие опции:
 
 
 -d
         Режим отладки. Поставщику передается опция
        SO_DEBUG.
 
 -f
         Лавинный  ping . Выдает пакеты сразу после
        возвращения или сто раз в секунду, в
        зависимости от того, что быстрее. Для каждого
        посланного ECHO_REQUEST печатается точка
        " . ", а для каждого полученного ECHO_REPLY
        печатается забой (backspace). Это позволяет
        быстро оценить, сколько пакетов потеряно.
        Только привилегированный пользователь может
        использовать эту опцию. Эта команда может
        существенно увеличить загрузку сети и ее надо
        использовать осторожно.
 
 -i время_ожидания
         Ожидать  время_ожидания  секунд между
        посылками пакетов. По умолчанию интервал
        между посылками пакетов - одна секунда. Эта
        опция несовместима с опцией  -f .
 
 -l
         Исключить маршрут к источнику. Использует эту
        опцию в заголовке IP для посылки пакета
        указанному  хосту  и обратно. Обычно
        указывается с опцией  -R . Опция  -l  допустима
        только когда в качестве хоста указан  localhost 
        или  `uname -n` .
 
 -n
         Только числовая выдача. Не предпринимать
        попытки искать символьные имена для адресов
        хостов.
 
 -p шаблон
         Указанный  шаблон  используется для заполнения
        посылаемых пакетов.  Шаблон  задается, как
        шестнадцатеричная строка байтов и может иметь
        длину до 16 байтов. Шаблон повторяется для
        заполнения раздела данных пакета. Например,  -p
        ff  вызывает заполнение пакетов единицами. Эта
        опция полезна при поиске проблем сети,
        связанных с передаваемыми данными.
 
 -q
         Сокращенный вывод. Не выдается ничего, кроме
        суммарных строк при запуске и завершении
        работы.
 
 -r
         Не использовать обычные таблицы
        маршрутизации и посылать напрямую указанному
         хосту  в подключенной сети. Если  хост  не
        находится в непосредственно подключенной сети,
        возвращается ошибка. Эту опцию можно
        использовать для обращения к локальному хосту
        через интерфейс, удаленный демоном
        маршрутизации (см.  routed(1M) ).
 
 -R
         Записать маршрут. Устанавливает опцию записи
        маршрута IP, в результате чего маршрут пакета
        будет записан в заголовке IP. Содержимое
        записи маршрута будет выдано, только если
        указана опция  -v  и будет устанавливаться для
        возвращаемых пакетов, только если целевой хост
        сохраняет запись маршрута между выдачами или
        если задана опция  -l .
 
 -s
         Посылать датаграмму каждую секунду и печатать
        строку вывода для каждого полученного ответа
        ECHO_RESPONSE (если ответа нет, ничего не
        выдается).
 
 -v
         Детальный вывод. Выдает все полученные пакеты
        ICMP, кроме ECHO_RESPONSE.
 

 ССЫЛКИ
 
         ICMP(7) ,
         ifconfig(1M) ,
         netstat(1M) ,
         routed(1M) ,
         rpcinfo(1M) 
 


 Copyright 1994 Novell, Inc.
 Copyright 1999  В. Кравчук ,
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