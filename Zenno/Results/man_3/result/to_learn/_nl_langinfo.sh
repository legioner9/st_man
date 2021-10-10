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
 
 
 
 nl_langinfo (3)   nl_langinfo  (3)   ( Solaris man: Библиотечные вызовы )   nl_langinfo  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  nl_langinfo  (3)   ( Русские man: Библиотечные вызовы )   nl_langinfo  (3)   ( Linux man: Библиотечные вызовы )   nl_langinfo  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

nl_langinfo - запросы на информацию о языке локали
   
 СИНТАКСИС 

 #include < langinfo.h > 

 char *nl_langinfo(nl_item  item ); 
 

   
 ОПИСАНИЕ 

Функция  nl_langinfo  обеспечивает доступ к информации о локали 
более гибким способом, чем позволяет это функция
 localeconv (3).

Могут быть запрошены отдельные (дополнительные) элементы в разных
категориях локали.
 

В качестве запрашиваемых элементов локали в поле  item 
могут быть указаны определенные в < langinfo.h > константы:
 
 
 CODESET  (LC_CTYPE)

 
Возвращает строку с названием кодировки символов, используемой в
выбранной локали, например "UTF-8", "ISO-8859-1", или "ANSI_X3.4-1968"
(более известной, как US-ASCII). Это такая-же строка, что вы получите 
при использовании параметра "locale charmap". Для вывода списка названий
кодировок символов попробуйте указать "locale -m", (смотрите
 locale (1) ). 

 
 D_T_FMT  (LC_TIME)

 
Возвращает строку, которую можно использовать как строку формата для функции
 strftime (3)

для представления времени и даты в формате данной локали.
 
 D_FMT  (LC_TIME)

 
Возвращает строку, которую можно использовать как строку формата для функции
 strftime (3)

для представления даты в формате данной локали.
 
 T_FMT  (LC_TIME)

 
Возвращает строку, которую можно использовать как строку формата для функции
 strftime (3)

для представления времени в формате данной локали.
 
 DAY_ {1-7} (LC_TIME)

 
Возвращает название  n -го дня недели. [ВНИМАНИЕ: подразумевается
формат США, в котором DAY_1 = Воскресенье, а не интернациональный формат
(ISO 8601), в котором первым днем недели является Понедельник.]
 
 ABDAY_ {1-7} (LC_TIME)

 
Возвращает сокращенное название  n -го дня недели.
 
 MON_ {1-12} (LC_TIME)

 
Возвращает название  n -го месяца.
 
 ABMON_ {1-12} (LC_TIME)

 
Возвращает сокращенное название  n -го месяца.
 
 RADIXCHAR  (LC_NUMERIC)

 
Возвращает математический разделитель (десятичную точку, запятую и т.п.).
 
 THOUSEP  (LC_NUMERIC)

 
Возвращает разделитель тысячных разрядов (групп по 3 цифры).
 
 YESEXPR  (LC_MESSAGES)

 
Возвращает регулярное выражение, которое может быть использовано функцией
 regex (3)

для распознания положительного ответа на вопрос да/нет.
 
 NOEXPR  (LC_MESSAGES)

 
Возвращает регулярное выражение, которое может быть использовано функцией
 regex (3)

для распознания отрицательного ответа на вопрос да/нет.
 
 CRNCYSTR  (LC_MONETARY)

 
Возвращает обозначение валюты, с предшествующими символами:
"-", если знак валюты должен стоять перед числами,
"+", если знак валюты должен стоять за числами, или
".", если знак валюты должен заменять десятичный разделитель.
 
 

Список вышеперечисленных элементов - это всего лишь небольшая часть того, что
может быть запрошено. Более подробный список можно узнать в
 The GNU C Library Reference Manual .

   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Если не была указана локаль для соответствующей категории, то
 nl_langinfo  возвращает указатель на соответствующую строку
в локали "C".
 

Если  item  указано неправильно, то возвращается указатель на пустую строку.
 

Данный указатель может указывать на статические данные, которые могут быть
уничтожены последующим вызовом  nl_langinfo  или  setlocale .
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

The Single UNIX® Specification, Version 2
   
 СМ. ТАКЖЕ 

 localeconv (3),

 setlocale (3),

 locale (1),

 locale (7),

 charsets (7),

The GNU C Library Reference Manual
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
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