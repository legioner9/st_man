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
 
 
 
 aliases (5)   aliases  (4)   ( Solaris man: Специальные файлы /dev/* )   aliases  (5)   ( FreeBSD man: Форматы файлов ) >>  aliases  (5)   ( Русские man: Форматы файлов )   aliases  (5)   ( Linux man: Форматы файлов ) 


   
 НАЗВАНИЕ 

aliases
-
формат базы данных псевдонимов для Postfix.
   
 ОБЗОР 


 

 newaliases 
   
 ОПИСАНИЕ 



Таблица  aliases  обеспечивает общесистемный механизм 
перенаправления почты локальных получателей. Перенаправления
осуществляются агентом доставки  local  входящем в Postfix.
 
Обычно, таблица  aliases  составляется в виде текстового файла,
который затем обрабатывается командой  postalias (1). Для
быстрого поиска почтовой системой используется получаемый 
индексированный файл в формате dbm или db. После изменений в 
в базе данных псевдонимов выполните команду  newaliases  для
создания нового индексированного файла.
 
Предполагается, что форматы входного и выходного файлов совместимы
с Sendmail версии 8 и пригодны для использования в качестве
таблиц NIS.
 
Пользователи могут управлять доставкой своей почты с помощью 
настройки файлов  .forward  в своих домашних каталогах. Строки 
в пользовательских файлах  .forward  имеют тот же синтаксис,
что и правая сторона записей в  aliases .
 
Формат входного файла базы данных псевдонимов следующий:
 
 . 
Определение псевдонима имеет вид
 
 
     
 name :  value1 ,  value2 ,  ... 
 . 
Строки, начинающиеся с пробела, продолжают предыдущую строку.
 . 
Пустые строки игнорируются, как и строки, начинающиеся с `#'.
 
 

 name  -- это локальный адрес (без доменной части). Если
имя содержит специальные символы, такие как пробел, `#', `:',
или `@', используйте двойные кавычки. Чтобы сделать поиск в 
базе данных независимым от регистра,  name  переводится в
нижний регистр.
 
 

Кроме того, если существует псевдоним для  owner- name , то
диагностика доставки направляется на этот адрес, а не автору. Обычно
это используется для направления сообщений об ошибках доставки
владельцу списка рассылки, который лучше разберётся с проблемами
доставки по списку рассылки, чем автор не доставленного письма.
 

 value  содержит одно или более из следующих выражений:
 
 address 
Почта перенаправляется на  address , удовлетворяющий 
стандарту RFC 822.
 /file/name 
Почта добавляется к  /file/name . Подробнее о доставке в
файл смотрите в  local (8). Доставка не ограничивается 
обычными файлами. Например, для удаления нежелательной почты
направьте её в  /dev/null .
 | command 
Почта передаётся  command 'е. Команды, содержащие специальные
символы, такие как пробелы, должны быть заключены в двойные 
кавычки. Подробнее о доставке в команду смотрите в  local (8).
 
При сбое команды отправителю отправляется назад ограниченное 
количество выходной информации команды. Ожидаемые исходящие коды
статуса определены в файле  /usr/include/sysexits.h .
Например, для симуляции ошибки "user unknown" используйте
 |"exit 67" , а для реализации дорогой чёрной дыры -- 
 |"exit 0" .
 :include: /file/name 
Почта направляется в пункты назначения, перечисленные в 
указанном файле. Строки в файлах  :include:  имеют
тот же синтаксис, что и правые части записей псевдонимов.
 
Пунктом назначения может быть любой из описанных в этом 
руководстве. Однако по-умолчанию доставка для "| command " 
и  /file/name  запрещена. Чтобы её разрешить, 
отредактируйте конфигурационные параметры 
 allow_mail_to_commands  и  allow_mail_to_files .
 
   
 РАСШИРЕНИЕ АДРЕСА 


 

Если поиск в базе данных псевдонимов ничего не дал, а локальная
часть адреса получателя содержит дополнительный разделитель
получателей (например,  user+foo ), поиск повторяется для
не расширенного адреса (например,  user ).
   
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 


 

Для этой темы особенно уместны следующие параметры файла  main.cf .
Подробнее о синтаксисе и значениях по умолчанию смотрите в файле
 main.cf  Postfix'а. После изменения конфигурации используйте
команду  postfix reload .
 
 alias_maps 
Список баз данных псевдонимов.
 allow_mail_to_commands 
Ограничивает использование доставки почты во внешние команды.
 allow_mail_to_files 
Ограничивает использование доставки почты во внешний файл.
 expand_owner_alias 
При доставке на псевдоним, имеющий сопутствующий псевдоним
 owner- , установить в конверте адрес отправителя в 
соответствие с правой частью псевдонима owner, вместо левой 
части адреса.
 owner_request_special 
Задаёт специальную обработку для адресов  owner- xxx  и
 xxx -request .
 recipient_delimiter 
Разделитель, отделяющий получателей в адресных расширениях.
 
   
 СТАНДАРТЫ 


 RFC 822 (ARPA Internet Text Messages)
 

   
 СМОТРИ ТАКЖЕ 


 local (8) - агент локальной доставки
 postalias (1) - управление базой данных псевдонимов
   
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 


 

С этим программным обеспечением должна поставляться лицензия от
Secure Mailer.
   
 ОБ АВТОРАХ 


 Wietse Venema
IBM T.J. Watson Research
P.O. Box 704
Yorktown Heights, NY 10598, USA

Перевод:
Alex Savvin < savvin@mail.ru >, Dec 15, 2001

 
 
   Index 
 
 НАЗВАНИЕ 
 ОБЗОР 
 ОПИСАНИЕ 
 РАСШИРЕНИЕ АДРЕСА 
 ПАРАМЕТРЫ КОНФИГУРАЦИИ 
 СТАНДАРТЫ 
 СМОТРИ ТАКЖЕ 
 ЛИЦЕНЗИОННОЕ СОГЛАШЕНИЕ 
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