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
 
 
 
 host.conf (5) >>  host.conf  (5)   ( Русские man: Форматы файлов )   host.conf  (5)   ( Linux man: Форматы файлов ) 
   
 ИМЯ 

host.conf - файл с настройками для резолвера
   
 ОПИСАНИЕ 

Файл
 /etc/host.conf 

содержит настройки для библиотеки резолвера (resolver). (Резолвером
называется механизм преобразования имен узлов (обычно компьютеров)
сети в IP адреса и обратно -- так называемое прямое и обратное
преобразование. -- Прим. перев.)
Данный файл должен содержать в каждой строке одно ключевое слово, за которым
следует информация о соответствующей этому ключевому слову настройке. Вот
эти ключевые слова:
 order ,  trim ,  multi ,  nospoof ,  spoof  и  reorder .

Эти ключевые слова описываются ниже.
 
 
 order 

 
Данное ключевое слово задает метод, с помощью которого будет осуществляться
поиск адреса узла.  За этим словом должно следовать одно или несколько
названий методов, разделенных запятыми. Допустимы следующие названия
методов:
 bind ,  hosts  и  nis .

 trim  

 
Данное ключевое слово может быть использовано больше одного раза.
Каждый раз, когда указывается это слово, за ним должен следовать
список доменов, начинающихся с точки и разделённых двоеточем (`:'),
точкой с запятой (`;') или запятой (`,').
Эта настройка говорит библиотеке resolv+ отсекать указанное имя
домена из конца всех имен узлов, которые преобразуются в адреса через DNS.
Этот параметр задумывался для использования с локальными узлами и доменами.
(Важное замечание: отсечение не будет выполняться для имен узлов,
обрабатываемых через NIS или файл /etc/hosts).  Вы должны побеспокоиться
о том, чтобы первое имя узла в каждой записи в файле /etc/hosts являлось
полностью (имя узла с доменом) или не полностью (только имя узла) заданным,
в зависимости от того как это необходимо для ваших локальных настроек.
 multi 

 
Допустимыми для этого ключевого слова являются значения
 on  и  off .

Если задано
 on ,

то библиотека resolv+ будет возвращать все допустимые адреса
узла, которые встретились в файле
 /etc/hosts ,

а не только первый из них.  По умолчанию стоит
 off ,

так как в противном случае возможно
существенное снижение производительности на сайтах с большими
файлами узлов.
 nospoof 

 
Допустимыми для этого ключевого слова являются значения
 on  и  off .

Если задано
 on ,

библиотека resolv+ будет пытаться предотвращать обман по
именам узлов для усиления безопасности
 rlogin  и  rsh .

Это работает так: после выполнения поиска адреса узла по имени,
резолвер будет выполнять поиск имени узла по адресу. Если эти
два имени не совпадут, то результат операции будет признан
ошибочным. По умолчанию значение установлено в
 off .

 spoofalert 

 
Допустимыми для этого ключевого слова являются значения
 on  и  off .

Если значение данного ключевого слова установлено в
 on 

и при этом также установлено
 nospoof ,

то резолвер будет записывать в системный журнал предупреждения об ошибках
через syslog. По умолчанию значение этого ключевого слова установлено в
 off .

 spoof 

 
Допустимыми для этого ключевого слова являются значения
 off ,  nowarn  и  warn .

Если эта опция установлена в
 off ,

то обманные адреса допускаются и в системный журнал через syslog не
будет попадать никаких предупреждающих сообщений.
Если эта опция установлена в
 warn ,

то библиотека resolv+ будет пытаться предотвращать обман по
именам узлов для усиления безопасности и в системный журнал
через syslog будут записываться предупреждения об ошибках.
Если эта опция установлена в
 nowarn ,

то библиотека resolv+ будет пытаться предотвращать обман по
именам узлов для усиления безопасности, но предупреждающие
сообщения генерироваться не будут.
Устнановка этой опции в значение, отличное от вышеописанных,
будет считаться установкой в значение
 nowarn .

 reorder 

 
Допустимыми для этого ключевого слова являются значения
 on  и  off .

Если задано
 on ,

то резолвер будет пытаться перегруппировать адреса узлов так, чтобы
локальные адреса (т. е. адреса в той же подсети) были выданы первыми,
когда выполняется вызов
 gethostbyname (3).

Перегруппировка выполняется для всех методов поиска. По умолчанию
установлено значение
 off .

 
   
 ОКРУЖЕНИЕ 

Есть шесть переменных окружения, которые могут быть использованы,
чтобы позволить пользователю перекрыть поведение, настроенное в 
 /etc/host.conf .

 
 RESOLV_HOST_CONF 

 
Если значение этой переменной является именем файла, то он будет
прочитан вместо файла
 /etc/host.conf .

 RESOLV_SERV_ORDER 

 
Перекрывает команду
 order . 

 RESOLV_SPOOF_CHECK 

 
Перекрывает команды
 nospoof ,  spoofalert  и  spoof 

тем же способом как задаётся значение для команды
 spoof . 

Допустимыми являются значения
 off ,  nowarn  и  warn .

 RESOLV_MULTI 

 
Перекрывает команду
 multi . 

 RESOLV_REORDER 

 
Перекрывает команду
 reorder . 

 RESOLV_ADD_TRIM_DOMAINS 

 
Список доменов, начинающихся с точки, разделённых двоеточием (`:'),
точкой с запятой (`;') или запятой (`,'), который будет добавлен к
списку доменов для отсечения.
 RESOLV_OVERRIDE_TRIM_DOMAINS 

 
Список доменов, начинающихся с точки, разделённых двоеточием (`:'),
точкой с запятой (`;') или запятой (`,'), который заменяет список
доменов для отсечения.  Перекрывает команду
 trim . 

 
   
 ФАЙЛЫ 

 
 /etc/host.conf 

 
Файл с настройками резолвера
 /etc/resolv.conf 

 
Файл с настройками резолвера
 /etc/hosts 

 
Локальная база данных узлов
 
   
 ЗАМЕЧАНИЯ 

Существуют следующие различия с первоначальной реализацией.
Новая команда
 spoof 

и новая переменная окружения
 RESOLV_SPOOF_CHECK 

могут быть установлены в одно из значений
 off ,  nowarn  и  warn .

Комментарии могут встречаться везде, а не только вначале строки.
   
 СМОТРИ ТАКЖЕ 

 gethostbyname (3),

 hostname (7),

 resolv+ (8),

 named (8)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 ОКРУЖЕНИЕ 
 ФАЙЛЫ 
 ЗАМЕЧАНИЯ 
 СМОТРИ ТАКЖЕ 
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