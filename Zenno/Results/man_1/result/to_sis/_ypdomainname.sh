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
 
 
 
 ypdomainname (1) >>  ypdomainname  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   ypdomainname  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
hostname - вывести или установить системное имя хоста
 
domainname - вывести или установить NIS/YP доменное имя
 
dnsdomainname - вывести DNS доменное имя
 
nisdomainname - вывести или установить NIS/YP доменное имя
 
ypdomainname - вывести или установить NIS/YP доменное имя
 
   
 СИНТАКСИС 

 
 hostname  [ -v ] [ -a ] [ --alias ] [ -d ] [ --domain ] [ -f ] [ --fqdn ]
[ -i ] [ --ip-address ] [ --long ] [ -s ] [ --short ] [ -y ] [ --yp ]
[ --nis ]
 
 hostname  [ -v ] [ -F имя_файла ] [ --file имя_файла ] [ имя_файла ]
 
 domainname  [ -v ] [ -F имя_файла ] [ --file имя_файла ] [ имя ]
 
 hostname  [ -v ] [ -h ] [ --help ] [ -V ] [ --version ]
 
 dnsdomainname  [ -v ]
 
 nisdomainname  [ -v ]
 
 ypdomainname  [ -v ]
 
   
 ОПИСАНИЕ 

 
 Hostname  - это программа, предназначенная для вывода либо установки
текущего имени машины или домена системы. Это имя используется множеством
сетевых программ для идентификации машины. Доменное имя также используется
системами NIS/YP.
 
 ВЫВЕСТИ ИМЯ 
 
При запуске без аргументов, программы выводят следующие текущие имена:
When called without any arguments, the program displays
the current names:
 
 hostname  выводит имя системы, возвращаемое функцией
 gethostname (2) .
 
 domainname, nisdomainname, ypdomainname  выводит
имя системы, возвращаемое функцией  getdomainname (2) .
Это имя также называется YP/NIS доменным именем системы.
 
 dnsdomainname  выводит доменную часть FQDN
(Fully Qualified Domain Name, Полностью Определенное Доменное Имя).
Полное FQDN имя системы возвращается командой  hostname --fqdn .
 
 УСТАНОВИТЬ ИМЯ 
 
При запуске с одним аргументом или опцией  --file ,
программы устанавливают имя машины или NIS/YP доменное имя.
 
Заметьте, что только суперпользователь может изменять эти имена.
 
С помощью команды  dnsdomainname  невозможно установить
FQDN имя или доменное имя DNS (см.  FQDN  ниже).
 
Имя машины обычно устанавливается один раз при старте системы
в скриптах  /etc/rc.d/rc.inet1  или  /etc/init.d/boot 
(как правило, оно считывается из соответствующего файла, содержащего
это имя, например  /etc/hostname ).
 
 FQDN 
 
С помощью этих команд нельзя сменить FQDN имя (возвращаемое  hostname --fqdn )
или доменное имя DNS (возвращаемое  dnsdomainname ).
FQDN имя системы - это имя, возвращаемое системой разрешения имен (резолвер,
 resolver (3) ) для имени машины.
 
Технически это выглядит так: FQDN - это имя, возвращаемое функцией
 gethostbyname (2)  для имени машины, возвращаемого
функцией  gethostname (2) . Доменное имя DNS системы -
это часть вышеопределенного имени, следующая за первой точкой.
 
Поэтому способ смены имен сильно зависит от конфигурации (задаваемой
обычно в файле  /etc/host.conf ). Как правило (если
файл со списком имен машин обрабатывается до запуска DNS или NIS)
они могут быть изменены в файле  /etc/hosts .
 
   
 ОПЦИИ 

 
 
 -a, --alias 
 
Вывести псевдоним хоста (если он есть).
 
 -d, --domain 
 
Вывести имя домена DNS. Не используйте для этого команду
 domainname , поскольку она выводит имя домена NIS,
а не DNS. Вместо нее используйте команду  dnsdomainname .
 
 -F, --file имя_файла 
 
Прочитать имя хоста из указанного файла. Строки, начинающиеся
символом `#', считаются комментариями и игнорируются.
 
 -f, --fqdn, --long 
 
Вывести FQDN (Fully Qualified Domain Name, Полностью Определенное Доменное Имя).
FQDN состоит из короткого имени машины и имени домена DNS.
Если Вы не используете BIND или NIS для поиска хостов,
Вы можете изменить FQDN и имя домена DNS (являющееся частью FQDN)
в файле  /etc/hosts .
 
 -h, --help 
 
Вывести краткую подсказку и завершиться.
 
 -i, --ip-address 
 
Вывести IP адрес хоста.
 
 -s, --short 
 
Вывести короткое имя хоста. Это имя машины до первой точки.
 
 -V, --version 
 
Вывести информацию о версии на стандартный вывод и успешно
завершиться.
 
 -v, --verbose 
 
Выводить дополнительную информацию.
 
 -y, --yp, --nis 
 
Вывести доменное имя NIS. Если при этом задан параметр  имя 
(либо задана опция  --file имя_файла ), то суперпользователь
может также задать новое доменное имя NIS.
 
 
   
 ФАЙЛЫ 

 
 /etc/hosts 
 
   
 АВТОР(Ы) 

 
Peter Tobias, < tobias@et-inf.fho-emden.de >
 
Bernd Eckenfels, < net-tools@lina.inka.de > (NIS и страница руководства).
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 ФАЙЛЫ 
 АВТОР(Ы) 
 
 
 
 
 
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