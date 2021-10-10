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
 
 
 
 sources.list (5) >>  sources.list  (5)   ( Русские man: Форматы файлов )   sources.list  (5)   ( Linux man: Форматы файлов ) 
   
 НАЗВАНИЕ 

sources.list - список ресурсов пакетов для APT
   
 ОПИСАНИЕ 

Список ресурсов пакетов используется для задания местоположения архивов пакетов дистрибутива системы. 
 

Список источников разрабатывается для поддержки любого количества активных источников и различных видов этих источников. В данном файле перечисляется по одному источнику на строку, где источники следуют в порядке их приоритета. Формат каждой строки такой:  type uri args . Первый элемент,  type , определяет формат для
 args .  uri  - это Универсальный Идентификатор Ресурса (Universal Resource Identifier (URI)), который является родителем для более специфичного и хорошо известного Универсального Локатора Ресурса (Universal Resource Locator или URL).
   
 Типы deb и deb-src  

Тип  deb  описывает типичный двухуровневый архив Debian,  дистрибутив/компонент . Обычно,  дистрибутив  это один из  stable ,  unstable  или  frozen , а  компонент  - это один из  main ,  contrib ,  non-free  или  non-us . Тип  deb-src  описывает исходный код дистрибутива Debian в той же самой форме как и  deb . Строка  deb-src  требуется для выкачивания индексов источников. Формат для записей  sources.list  использующих типы  deb  и  deb-src  такой:
 
  
deb uri дистрибутив [компонент1] [компонент2] [...]
 

 
URI для типа  deb  должен задавать основной дистрибутив Debian, от которого  APT  будет искать нужную информацию.  дистрибутив  может быть задан полным путем и в этом случае  компонент ы должны быть опущены, и  дистрибутив  должен заканчиваться символом  "/". Это полезно, когда интерес представляют только отдельные подсекции архива, заданного через URI. Если  дистрибутив  не задан полным путем, то по крайней мере, должен быть указан хотя бы один  компонент . 
 

 дистрибутив  также может содержать переменную,  $(ARCH) , которая будет заменена на архитектуру Debian (i386, m68k, powerpc, ...), которая используется в текущей системе. Это позволяет создавать архитектурно-независимые файлы  sources.list . Обычно такая возможность интересна только при задании полного пути, так как  APT  будет автоматически генерировать URI с текущей архитектурой. 
 

Поскольку в одной строке может быть указан только один дистрибутив, то возможно понадобится несколько строк с одним и тем же URI, если необходим весь класс доступных дистрибутивов или компонентов.  APT  впоследствии будет сортировать список URI для генерации полного списка внутри и будет объединять множество ссылок на один и тот же узел Интернет, например, в одно соединение, чтобы не происходило соединение по FTP, его закрытие, обращение к другим узлам и повторное соединение с тем же узлом. Данная особенность полезна для доступа к загруженным FTP серверам с ограничением на количество соединений для анонимных пользователей.  APT  также распараллеливает соединения для разных узлов для более эффективного выполнения своих функций для сайтов с низкой скоростью выкачивания. 
 

Важно, чтобы список источников располагался в порядке их приоритетов с более приоритетными источниками вначале. Обычно их сортируют по скорости от более быстрых к более медленным (CD-ROM, затем источники в локальной сети и затем удаленные узлы Интернет).
 

Некоторые примеры:
 
  
deb  http://http.us.debian.org/debian  stable main contrib non-free
 

  
  
deb  http://http.us.debian.org/debian  dists/stable-updates
 

   
 Типы rpm и rpm-src 

Тип  rpm  описывает репозитарий базирующийся на RPM, разделённый на два уровня,  дистрибутив  и  компонент .  дистрибутив  обычно состоит из версии дистрибутива и названия поставщика, такое как  6.0/conectiva .  компонент  - это название компоненты, такой как тип  rpm-src , описывающий исходные тексты дистрибутива, в той же форме, что и тип  rpm . Строка  rpm-src  необходима для получения целевых индексов. Формат для записей  sources.list  использующих типы  rpm  и  rpm-src  таков:
 
  
rpm [[поставщик]] uri дистрибутив [компонент1] [компонент2] [...]

 

 
URI для типа  rpm  должен задавать базу дистрибутива, в которой  APT  будет искать нужную информацию. Так же, должен быть указан хотя бы один  компонент . 
 

Поскольку в одной строке может быть указан только один дистрибутив, то возможно понадобится несколько строк с одним и тем же URI, если необходим весь класс доступных дистрибутивов или компонентов.  APT  впоследствии будет сортировать список URI для генерации полного списка внутри и будет объединять множество ссылок на один и тот же узел Интернет, например, в одно соединение, чтобы не происходило соединение по FTP, его закрытие, обращение к другим узлам и повторное соединение с тем же узлом. Данная особенность полезна для доступа к загруженным FTP серверам с ограничением на количество соединений для анонимных пользователей.  APT  также распараллеливает соединения для разных узлов для более эффективного выполнения своих функций для сайтов с низкой скоростью выкачивания. 
 

Важно, чтобы список источников располагался в порядке их приоритетов с более приоритетными источниками вначале. Обычно их сортируют по скорости от более быстрых к более медленным (CD-ROM, затем источники в локальной сети и затем удаленные узлы Интернет).
 

Некоторые примеры:
 
 
rpm  ftp://ftp.conectiva.com/pub/conectiva/.0  6.0/conectiva main extra non-us non-free

 

   
 Аутентификация Зеркала Репозитария 

Если вы пользуетесь зеркалом дистрибутива, то существует риск, что держатель узла может внедрить в пакеты злонамеренный код, тем самым ставя под угрозу защиту всех систем, которые используют такой сайт как источник пакетов. Для снижения возможности возникновения ситуации, подобной этой, apt в состоянии аутентифицировать репозитарии пакетов. Имейте в виду, что аутентификация НЕ гарантирует, что содержимое репозитария абсолютно безопасно. Она лишь позволяет убедиться, что:
 
 о 
все пакеты в репозитарии имеют верную контрольную сумму, соответствующую той, которая содержится в списке пакетов;
 o 
apt-get к получению доступны только те пакеты, которые присутствуют в списке пакетов;
 o 
все списки пакетов имеют верные контрольные суммы, соответствующие содержащемся в индексном файле;
 o 
индексный файл имеет цифровую подпись поставщика, идентифицированного в  sources.list , соответствующую отпечатку gpg в  vendors.list .
 
 

apt способен проверить, что сайт, который зеркалирует архив, имеет то же самое содержание как оригинальный сайт.
 

Для получения дополнительной информации о настройке аутентификации смотрите  vendors.list (5) .
   
 Спецификация URI 

В настоящий момент распознаются следующие типы URI: cdrom, file, http и ftp.
 
 file 
Схема file позволяет указать как архив нужный каталог в файловой системе. Это полезно для каталогов, смонтированных по NFS и локальных зеркал или архивов.
 cdrom 
Схема cdrom позволяет  APT  использовать локальное устройство CDROM со сменным носителем. Используйте программу  apt-cdrom (8)  для создания записей cdrom в файле содержащем список источников.
 http 
Схема http задает архив на HTTP сервере. Если установлена переменная окружения  $http_proxy  в формате  http://server:port/ , то будет использован прокси сервер заданный в  $http_proxy . Пользователи HTTP/1.1 прокси с авторизацией доступа могут использовать строку формата   http://user:pass@server:port/ . Заметим, что это метод авторизации, который не отвечает безопастности.
 ftp 
Схема ftp задает архив на FTP сервере. Поведение APT FTP хорошо настраивается; для подробностей смотрите страницу руководства  apt.conf (5) . Пожалуйста заметьте, что используя переменную окружения ftp_proxy может быть задан ftp прокси. Возможно задать http прокси (http прокси серверы часто понимают URL для ftp) используя данный метод и ТОЛЬКО этот метод. Заданные в файле с настройками ftp прокси, использующие http, будут игнорированы. 
 copy 
Схема copy идентична схеме file за исключением того, что пакеты копируются в каталог кэша вместо того, чтобы использоваться непосредственно из их местоположения. Это полезно для людей, использующих диск zip для копирования файлов для APT.
 
   
 ПРИМЕРЫ 

Ниже даны примеры, в которых указаны архивы, хранящиеся локально (или смонтированные по NFS) в каталоге /home/jason/debian для stable/main, stable/contrib и stable/non-free.
 
"deb file:/home/jason/debian stable main contrib non-free"
 

 

Как и выше, только используется unstable (development) дистрибутив.
 
"deb file:/home/jason/debian unstable main contrib non-free"
 

 

Строка для источника исходных текстов для примера данного выше
 
"deb-src file:/home/jason/debian unstable main contrib non-free"
 

 

А здесь используется HTTP для доступа к архиву на archive.debian.org
и только к области hamm/main.
 
"deb  http://archive.debian.org/debian-archive  hamm main"
 

 

Здесь используется FTP для доступа к архиву  ftp.debian.org  в каталог
debian, а также только область stable/contrib.
 
"deb  ftp://ftp.debian.org/debian  stable contrib"
 

 

В данном случае FTP используется для доступа к основным компонентам дистрибутива conectiva версии 6.0 в архиве  ftp.conectiva.com , из каталога /pub/conectiva.
 
"rpm  ftp://ftp.conectiva.cpm/pub/conectiva  6.0/conectiva main"
 

 

Здесь используется FTP для доступа к архиву  ftp.debian.org  в каталог
debian и область unstable/contrib. Если данная строка будет включена
также как и в предыдущем примере в  sources.list , то для обоих
строк будет использована одна сессия FTP.
 
"deb  ftp://ftp.debian.org/debian  unstable contrib"
 

 

Здесь используется HTTP для доступа к архиву nonus.debian.org, в каталог
debian-non-US.
 
"deb  http://nonus.debian.org/debian-non-US  stable/non-US main contrib non-free"
 

 

Тоже, что и выше, но здесь используется аутентификация от поставщика по имени  bla , который должен быть указан в  vendors.list .
 
"deb [bla]  http://nonus.debian.org/debian-non-US  stable/non-US main contrib non-free"
 

 

Здесь используется HTTP для доступа к архиву nonus.debian.org, в каталог
debian-non-US и только для файлов в unstable/binary-i386 на i386 машинах,
unstable/binary-m68k на m68k и так для четырех других поддерживаемых
архитектур. [Заметим, что этот пример только иллюстрирует как используется
подстановка переменной, так как non-us теперь имеет другую структуру]
 
"deb  http://ftp.de.debian.org/debian-non-US  unstable/binary-$(ARCH)/"
 

 

   
 СМОТРИТЕ ТАКЖЕ 

 apt-cache (8) ,  apt.conf (5) ,  vendors.list (5) 
   
 ОШИБКИ 

Смотри  http://bugs.debian.org/apt.  Если вы хотите отправить отчет об ошибке
в  apt-cache , пожалуйста смотрите  /usr/doc/debian/bug-reporting.txt 
или команду  bug (1) . Если вы используете систему базирующуюся на RPM, то в этом случае, пожалуйста,  воспользуйтесь  http://distro.conectiva.com.br/bugzilla/. 
   
 АВТОР 

 apt-get  была написана командой APT < apt@packages.debian.org > и портирован на системы базирующиеся на RPM Alfredo K. Kojima, < kojima@conectiva.com.br  >, из Conectiva S.A.
   
 ПЕРЕВОД 


Перевод с английского сделал Виктор Вислобоков < victor_v@permonline.ru >


Дополнено и обновлено Александр Блохин < sass@altlinux.ru >, ALT Linux Team

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 Типы deb и deb-src  
 Типы rpm и rpm-src 
 Аутентификация Зеркала Репозитария 
 Спецификация URI 
 ПРИМЕРЫ 
 СМОТРИТЕ ТАКЖЕ 
 ОШИБКИ 
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