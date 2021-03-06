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
 
 
 
 hotplug (8) >>  hotplug  (8)   ( Русские man: Команды системного администрирования )   hotplug  (8)   ( Linux man: Команды системного администрирования ) Ключ  hotplug  обнаружен в базе ключевых слов. 
   
 НАЗВАНИЕ 

hotplug - Скрипты поддержки "горячего" подключения в Linux
   
 ФОРМАТ 

 hotplug 

[ help | --help |
 NAME 

]

 /etc/init.d/hotplug 

[start|stop|status|restart]
   
 ОПИСАНИЕ 

Программа
 hotplug 

используется ядром для оповещения программ user mode о наступлении
определённых важных событиях (обычно, относящихся к оборудованию), 
например, непосредственно при подключении устройств USB или Cardbus.
Это удобно для автоматической загрузки и настройки драйверов, 
поставляемых как в виде модулей ядра, так и программ user mode.

Путь к программе hotplug регистрируется в 
 /proc/sys/kernel/hotplug 

и, как правило, имеет значение
 /sbin/hotplug .

За исключением специальных конфигураций, типа конфигурации
 initrd (4),

здесь определяется shell-скрипт, который вызывает соответствующие
"агенты политики" ("policy agents") -- 
 /etc/hotplug/NAME.agent .

Имя агента передаётся ядром в качестве первого параметра командной 
строки.  Это имя соответствует определённой подсистеме ядра, события 
которой обрабатывает ядро (например, "usb", "pci", "net" и т.п.).

Информация о событии передаётся в виде переменных среды. Большинство агентов
используют переменную "ACTION", описывающую тип события.  Она получает значения
"add" или "remove", что означает подключение или отключение данного устройства
от системы.
 

Расположение устройства передаётся в переменной "DEVPATH". В ядрах 2.5 и выше
в переменной указывается путь к соответствующему устройству sysfs без
точки монтирования, но с впереди стоящим слэшем.

Не обязательно вызов агента
 hotplug 

должен производиться ядром. При инициализации ОС (случай "холодной загрузки")
вызывается скрипт hotplug в
 /etc/init.d/hotplug ,

чтобы гарантировать правильность настройки устройств, подключенных во время 
загрузки, с использованием тех же правил, что и при более позднем подключении.

Для динамической адаптации изменений в конфигурации системы необходимо 
использовать агенты hotplug.  Удобно представлять их в виде передаваемых 
событий из различных слоёв программного обеспечения Linux. Таким образом, 
низкоуровневый код из bus framework будет передавать события подключении 
новых физических устройств, а агенты bus (шины) гарантируют загрузку, 
настройку и активацию драйвера устройства.  (Они используют описание 
устройств в стиле .BR depmod (8), используемого, среди прочего, для 
публикации в драйверах устройств kernel mode записей MODULE_DEVICE_TABLE, 
найденных в исходнике.)  Затем наступит очередь других уровней стека 
Linux, сообщающих о более высокоуровневом событии, вроде "появился 
новый сетевой интерфейс". Агенты на этих уровнях, как правило, 
предназначены для выполнения более сложных задач.

Для подчёркивания определённых проблем "горячего" подключения  
во время загрузки ОС его можно назвать "холодным" подключением. 
Так, например, файлы программ и данных, необходимые для работы 
агентов hotplug, могут находиться на файловых системах, которые 
во время загрузки ещё недоступны.
   
 ФАЙЛЫ 

 /lib/modules/*/modules.*map      вывод depmod
/proc/sys/kernel/hotplug         задаёт путь программы hotplug
/sbin/hotplug                    программа hotplug (путь по умолчанию)
/etc/hotplug/*                   файлы hotplug 
/etc/hotplug/NAME.agent          агенты hotplug конкретных подсистем
/etc/hotplug/NAME*               файлы конкретных подсистем, для агентов
/etc/hotplug/NAME/DRIVER         скрипты настройки драйверов, вызываемые агентами
/etc/hotplug/usb/DRIVER.usermap  данные depmod для драйверов пользовательского режима
/etc/init.d/hotplug              служебный скрипт системы hotplug
 

 

   
 СМОТРИ ТАКЖЕ 

 initrd (4) 

 

Веб-сайт
 http://linux-hotplug.sourceforge.net/ 

   
 АВТОРЫ 

hotplug разработан в рамках проекта Linux Hotplugging Project
 http://linux-hotplug.sourceforge.net/ 

 

Это руководство изначально было написано Fumitoshi UKAI < ukai@debian.or.jp >,
для системы Debian GNU/Linux system (но может использоваться другими),
на базе оригинальной японской версии руководства.
 
Перевод на русский язык выполнил Александр Саввин < savvin@mail.ru >
 

 
   Index 
 
 НАЗВАНИЕ 
 ФОРМАТ 
 ОПИСАНИЕ 
 ФАЙЛЫ 
 СМОТРИ ТАКЖЕ 
 АВТОРЫ 
 
 
 
 
 
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