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
 
 
 
 services (5)   services  (4)   ( Solaris man: Специальные файлы /dev/* )   services  (4)   ( Русские man: Специальные файлы /dev/* )   services  (5)   ( FreeBSD man: Форматы файлов ) >>  services  (5)   ( Русские man: Форматы файлов )   services  (5)   ( Linux man: Форматы файлов ) 
   
 НАЗВАНИЕ 

services - список служб сети интернет
   
 ОПИСАНИЕ 

 services 

является простым ASCII-файлом, обеспечивающим распределение 
соответствующих текстовых имен между службами интернет, связанных
с ними назначений портов и типов протоколов.
Любая сетевая программа должна сначала обратится к этому файлу
для получения номера порта (и протокола) для своих служб.
Программы библиотеки C
 getservent (3),

 getservbyname (3),

 getservbyport (3),

 setservent (3),

и
 endservent (3)

обеспечивают запросы программ к этому файлу.
Номера портов назначаются IANA (Internet Assigned Numbers Authority),
и их текущей политикой является указание TCP- и UDP-протоколов
при назначении номера порта.
Следовательно, большинство элементов будет иметь двойные значения
даже для служб, которые используют только TCP.
Номера портов меньше 1024-х (так называемый 'низкий уровень')
могут быть назначены только суперпользователем (смотрите
 bind (2),

 tcp (7)

и
 udp (7)).

Это делается для того, чтобы клиенты, подключающиеся к портам низкого уровня,
могли не сомневаться в правильной работе сервисов этого порта, являющихся
обычными сервисами, а не "подставными" сервисами какого-нибудь пользователя
в машине. Известные номера портов, определенные IANA,
обычно предназначены в этом пространстве только суперпользователю.
Присутствие элемента службы в файле
 services 

не обязательно означает, что эта служба сейчас в машине действует. Смотрите
 inetd.conf (5)

для знакомства с предложенной конфигурацией служб интернета. Заметим, что 
не все сетевые
  службы запускаются с помощью
 inetd (8),

поэтому не появятся в
 inetd.conf (5).

В частности, серверы новостей (NNTP) и почтовые серверы (SMTP) часто 
инициализируются
  с помощью системных загрузочных скриптов.
Расположение файла
 services 

определяется параметром
 _PATH_SERVICES 

в
 /usr/include/netdb.h .

Обычно оно установлено в 
 /etc/services .

Каждая строка определяет одну службу и имеет такую форму:
 
 
 service-name   port / protocol    [ aliases ... ] ,
 где: 
 service-name 

 
является известным именем службы, по которому она
в дальнейшем будет определяться. Оно зависит от регистра.
Часто программы пользователя называются
 service-name .

 port 

 
является номером порта (в десятичном формате), используемым данной службой.
 protocol 

 
является типом протокола, который будет использоваться.
Это поле должно совпадать с элементом в файле
 protocols (5)


 tcp 

и
 udp .

 aliases 

 
является дополнительным списком имен этой службы, разделенных символами
табуляции или пробелами (смотрите секцию СООБЩЕНИЯ ОБ ОШИБКАХ ниже).
Снова заметим, что имена зависят от регистра.
 
 

Для разделения полей могут использоваться пробелы или символы табуляции.
Комментарии начинаются с символа решетки (#) и продолжаются до конца
строки. Пустые строки пропускаются.
 service-name 

должно начинаться с первого столбца файла,
так как начальные пробелы не удаляются.
 service-names 

могут быть любыми печатаемыми символами (исключая пробелы и табуляцию),
однако, лучше использовать стандартный набор символов для уменьшения
вероятности ошибок. Например, a-z, 0-9 и дефис (-)
  входят в стандартный набор.
Строки не в этом формате не должны присутствовать в файле.
В данный момент они просто пропускаются программами
 getservent (3),

 getservbyname (3)

и
 getservbyport (3).

Однако, на это в дальнейшем не стоит полагаться.
Для совместимости со старыми стандартами косая черта (/) между номером
 port 

и именем
 protocol 

может быть заменена запятой (,).
В современных версиях запятая не используется.
Данный файл может распространяться по сети с помощью сетевой службы
имен, таких, как: Yellow Pages/NIS или BIND/Hesiod.
Эталонный файл
 services 

может выглядеть таким образом:
 
 

netstat         15/tcp
qotd            17/tcp          quote
msp             18/tcp          # протокол отправки сообщения
msp             18/udp          # протокол отправки сообщения
chargen         19/tcp          ttytst source
chargen         19/udp          ttytst source
ftp             21/tcp
# 22 - не назначено
telnet          23/tcp

 

 

   
 НАЙДЕННЫЕ ОШИБКИ 

Максимальное число существующих псевдонимов - 35 из-за особенностей написания
 getservent (3).

Строки, длиннее
 BUFSIZ 

символов (в данный момент 1024), будут игнорироваться программами
 getservent (3),

 getservbyname (3)

и
 getservbyport (3).

Однако, это, возможно, приведет к тому, что последующая строка будет
ошибочно разделена.
   
 ФАЙЛЫ 

 
 /etc/services 

 
- список служб интернет.
 /usr/include/netdb.h 

 
- определение
 _PATH_SERVICES 

 
   
 СМ. ТАКЖЕ 

 getservent (3),

 getservbyname (3),

 getservbyport (3),

 setservent (3),

 endservent (3),

 protocols (5),

 listen (2),

 inetd.conf (5),

 inetd (8)

Assigned Numbers RFC, most recently RFC 1700, (AKA STD0002)
Guide to Yellow Pages Service
Guide to BIND/Hesiod Service
 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 НАЙДЕННЫЕ ОШИБКИ 
 ФАЙЛЫ 
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