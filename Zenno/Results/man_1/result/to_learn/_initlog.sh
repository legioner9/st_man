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
 
 
 
 initlog (1) >>  initlog  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   initlog  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

initlog - регистрирует сообщения и события для системного журнала
   
 СИНТАКСИС 

 initlog  [ -cefnpqrs ] [ --cmd = ARG ] [ --event = ARG ] [ --facility = ARG ] [ --name = ARG ] [ --priority = ARG ] [ --run = ARG ] [ --string = ARG ]
   
 ОПИСАНИЕ 

 initlog  регистрирует сообщения и события в системный журнал.
В основном он разработан для использования в сценариях инициализации. 
initlog считывает свои настройки из файла конфигурации, по умолчанию это
 /etc/initlog.conf . Любая строка, начинающаяся с  # , является комментарием; распознаются следующие конфигурационные директивы:
 
 facility  (средство регистрации) 
Задает средство журналирования по умолчанию.
 priority  (приоритет регистрации) 
Задает приоритет журналирования по умолчанию.
 ignore  (регулярное выражение) 
Сообщения, совпадающие с регулярным выражением, не регистрируются.
 Поведение initlog также можно конфигурировать параметрами командной строки. 
 
   
 ПАРАМЕТРЫ 

 
 -c, --cmd =[ программа ] 
Выполняет указанную программу, журналируя весь вывод на stdout или stderr.
 -e, --event =[ номер ] 
Журналирует появление заданного события. Обычно используется совместно с  --name . В настоящее время заданными событиями могут быть:
   1   действие завершено успешно
  2   действие провалено (failed)
  3   действие было прекращено по запросу пользователя
  4   действие было провалено из-за неисправности (failure) зависимого действия
 -f, --facility =[ средство ]" Журналировать при заданном средстве syslog. По умолчанию -
 daemon  (см.  syslog (3)).
 -n, --name =[ выражение ] Журналировать событие заданное строкой, такой как "inetd".
 -p, --priority =[ приоритет ]" Журналировать при заданном приоритете syslog. По умолчанию -  notice  (см.  syslog (3)).
 -q Печатать вывод программы только в том случае, если она завершила работу с не нулевым кодом возврата.
 -r, --run =[ программа ]" Выполнить заданную программу с открытым дескриптором файла так, чтобы программа могла передать команды обратно в initlog.
 -s, --string =[ строка ] Журналировать заданную строку в журнал.
 --conf =[ файл ] Выбрать другой конфигурационный файл.
 
   
 ФАЙЛЫ 

 /etc/initlog.conf 
   
 СМ. ТАКЖЕ 

 syslog (3),  logger (1)
   
 ОБ АВТОРАХ 

Перевод: Alex Savvin < savvin@mail.ru > Февраль, 2002
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ФАЙЛЫ 
 СМ. ТАКЖЕ 
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