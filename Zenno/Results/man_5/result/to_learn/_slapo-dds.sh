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
 
 
 
 slapo-dds (5) >>  slapo-dds  (5)   ( Русские man: Форматы файлов ) 


   
 НАЗВАНИЕ 

slapo-dds - наложение динамических служб каталогов для slapd
   
 ОБЗОР 

/usr/local/etc/openldap/slapd.conf
   
 ОПИСАНИЕ 

Наложение
 dds 

для
 slapd (8)

реализует динамические объекты, описанные в RFC 2589. Название наложения
 dds 

представляет собой аббревиатуру термина  Динамические службы каталогов 
( Dynamic Directory Services ).
Наложение позволяет определять динамические объекты, характеризуемые наличием объектного класса
 dynamicObject .

 
Динамические объекты имеют ограниченное время существования, определяемое временем жизни (TTL),
которое можно перезапустить посредством специальной операции-расширения
 refresh .

Эта операция позволяет задать так называемый клиентский период подновления (Client Refresh Period, CRP),
то есть промежуток времени, через который требуется выполнять подновления во избежание устаревания
динамического объекта. Время устаревания вычисляется путём прибавления запрашиваемого TTL к текущему
времени. Когда время жизни динамических объектов заканчивается и очередного подновления не происходит,
они автоматически удаляются. Не гарантируется, что удаление будет выполняться немедленно, поэтому
клиенты не должны на это рассчитывать.
 
У динамических объектов могут быть подчиненные объекты, при условии, что они также являются динамическими
объектами. В RFC 2589 не определяется поведение динамической службы каталогов при устаревании
динамического объекта, у которого есть подчинённые (динамические) объекты. В этой реализации время
жизни динамического объекта, у которого есть подчинённые объекты, пролонгируется до тех пор, пока не
закончится время жизни всех его подчинённых динамических объектов.
 
   
 КОНФИГУРАЦИЯ 

Данная директива конфигурации
 slapd.conf (5)

добавляет наложение
 dds 

к текущей базе данных:
 
 
 overlay dds 

 
 
 
 

В базе данных должно быть настроено
 rootdn ,

в противном случае наложение
 dds 

не сможет удалять объекты, у которых превышено время жизни. Наложение
 dds 

может использоваться с любым механизмом манипуляции данными, реализующим операции
 add ,

 modify ,

 search 

и
 delete .

Поскольку при использовании этого наложения могут происходить многочисленные внутренние поиски записей,
а также добавления и удаления объектов, лучше всего применять его вместе с механизмами, имеющими
достаточно хорошую производительность при выполнении операций записи.
 
 

Специфичные для наложения
 dds 

директивы конфигурации должны иметь префикс
 dds- ,

во избежание потенциальных конфликтов с директивами базы данных, к которой применяется это наложение,
или с другими наложениями, применяемыми к той же базе данных.
 
 
 dds-max-ttl <ttl> 

 
Определяет максимальное значение TTL в секундах. Также это значение является TTL по умолчанию, которое
получают вновь создаваемые динамические объекты, если не задана директива
 dds-default-ttl .

Когда клиент запрашивает в расширенной операции refresh значение TTL, большее, чем задано в этой
директиве, ему возвращается ошибка sizeLimitExceeded. Задаваемое значение должно быть в промежутке от
86400 секунд (1 день, значение по умолчанию) до 31557600 секунд (1 год и 6 часов, согласно требованиям RFC 2589).
 
 dds-min-ttl <ttl> 

 
Определяет минимальное значение TTL в секундах; клиенты, запрашивающие в расширенной операции refresh
значение TTL, меньшее, чем задано в этой директиве, фактически получают это значение в качестве CRP.
Указание в директиве значения 0 (по умолчанию), говорит о том, что нижняя граница TTL не устанавливается.
 
 dds-default-ttl <ttl> 

 
Определяет значение TTL по умолчанию, которое получают вновь созданные динамические объекты. Если
значение задано в 0 (по умолчанию), используется значение из директивы
 dds-max-ttl .

 
 dds-interval <ttl> 

 
Определяет интервал между выполнением проверок на устаревание динамических объектов; по умолчанию - 1 час.
 
 dds-tolerance <ttl> 

 
Определяет дополнительное время, которое добавляется ко времени таймера, фактически запускающего поток,
удаляющий просроченные динамические объекты. Итак, номинальное время жизни записи - то, что указано в атрибуте
 entryTtl ,

но фактически оно будет равно сумме
 entryTtl + tolerance .

Имейте ввиду, что не даётся гарантий на то, что время жизни динамического объекта будет
 в точности соответствовать 

запрашиваемому TTL; в зависимости от деталей реализации оно может быть больше, что позволяется в
RFC 2589. По умолчанию допустимый временной зазор - 0.
 
 dds-max-dynamicObjects <num> 

 
Определяет максимальное число динамических объектов, которые могут одновременно существовать в пределах
одного контекста именования. Данная настройка позволяет ограничить количество ресурсов, используемых
динамическими объектами (главным образом с точки зрения размера очереди выполнения). По умолчанию
ограничений не устанавливается.
 
 dds-state {TRUE|false} 

 
Определяет, включена ли функция динамических служб каталогов или нет. По умолчанию включена; однако,
от прокси-сервера не требуется отслеживать динамические объекты, он должен только сообщить механизму
frontend, что поддержка динамических объектов доступна.
 
 
   
 КОНТРОЛЬ ДОСТУПА 

Наложение
 dds 

накладывает ограничение на выполнение операции refresh, требуя наличия привилегий доступа
 manage 

к атрибуту
 entryTtl 

(подробнее о привилегиях доступа
 manage 

смотрите в man-странице
 slapd.access (5)).

Поскольку атрибут
 entryTtl 

является операционным (NO-USER-MODIFICATION), прямой доступ на запись к нему невозможен. Поэтому наложение
 dds 

преобразует расширенную операцию refresh во внутреннюю операцию модификации значения атрибута
 entryTtl 

с установленным элементом управления
 relax .

 
В RFC 2589 рекомендуется не давать доступ на подновление динамических объектов анонимным клиентам.
Это можно реализовать путём надлежащей настройки контроля доступа для получения желаемого эффекта.
 
Пример: разрешить выполнение подновлений только аутентифицированным клиентам
 
 
 access to attrs=entryTtl
        by users manage
        by * read

 

 

Пример: разрешить выполнение подновлений только создателю динамического объекта
 
 
 access to attrs=entryTtl
        by dnattr=creatorsName manage
        by * read

 

 

Другой предложенный вариант использования динамических объектов - реализация динамических собраний;
в этом случае всем участникам собрания разрешено подновлять объект этого собрания, но только создателю
объекта можно его удалить (в противном случае оно будет удалено по истечении TTL).
 
Пример: подразумевая, что  participant  является валидным атрибутом, имеющим в качестве значений DN,
разрешим пользователям начинать собрание и присоединяться к нему; разрешим выполнять операцию подновления
только участникам собрания; разрешим удалять объект собрания только его создателю
 
 
 access to dn.base="cn=Meetings"
                attrs=children
        by users write

access to dn.onelevel="cn=Meetings"
                attrs=entry
        by dnattr=creatorsName write
        by * read

access to dn.onelevel="cn=Meetings"
                attrs=participant
        by dnattr=creatorsName write
        by users selfwrite
        by * read

access to dn.onelevel="cn=Meetings"
                attrs=entryTtl
        by dnattr=participant manage
        by * read

 

 

 
   
 РЕПЛИКАЦИЯ 

Данная реализация RFC 2589 обеспечивает ограниченную интерпретацию того, как должны реплицироваться
динамические объекты. Только главный сервер репликации заботится об обработке устаревания динамических
объектов, а реплики просто рассматривают динамические объекты как обычные объекты.
 
При репликации таких объектов требуется явно исключать объектный класс
 dynamicObject 

и атрибут
 entryTtl .

В данной реализации RFC 2589 представлен новый операционный атрибут
 entryExpireTimestamp ,

в котором содержится отметка времени устаревания. Он также должен быть исключён из репликации.
 
Быстрое и грубое решение - задать
 schemacheck=off 

в конфигурации syncrepl и, опционально, исключить эти операционные атрибуты из репликации с помощью настройки
 
 
 syncrepl ...
        exattrs=entryTtl,entryExpireTimestamp
 

 

 
В любом случае, чтобы потребитель репликации знал об операционном атрибуте
 entryExpireTimestamp ,

наложение должно быть либо статически встроено в slapd, либо загружено во время исполнения; однако,
оно не должно быть сконфигурировано в базе данных потребителя репликации. В настоящий момент нет
возможности удалить из записи объектный класс
 dynamicObject ;

это можно рассматривать как дополнительный функционал, поскольку этот класс позволяет увидеть
динамические свойства объекта.
 
   
 ФАЙЛЫ 

 
 /usr/local/etc/openldap/slapd.conf 
конфигурационный файл slapd по умолчанию.
 
   
 СМОТРИТЕ ТАКЖЕ 

 slapd.conf (5),

 slapd-config (5),

 slapd (8).

   
 АВТОР 

Реализовано Pierangelo Masarati.
 

 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 КОНФИГУРАЦИЯ 
 КОНТРОЛЬ ДОСТУПА 
 РЕПЛИКАЦИЯ 
 ФАЙЛЫ 
 СМОТРИТЕ ТАКЖЕ 
 АВТОР 
 
 
 
 
 
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