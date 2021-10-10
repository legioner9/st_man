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
 
 
 
 debconf-set-selections (1) >>  debconf-set-selections  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   debconf-set-selections  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

 
debconf-set-selections - вставляет новые ответы по умолчанию в базу данных
debconf
   
 КРАТКИЙ ОБЗОР 

 


  debconf-set-selections файл
 debconf-get-selections | ssh другая_машина debconf-set-selections

 


   
 ОПИСАНИЕ 

 
 debconf-set-selections  может быть использована для автоматической
настройки ответов из базы данных debconf или для изменения имеющихся
ответов. Каждый вопрос будет помечен как уже заданный, чтобы debconf больше
не задавал его пользователю.
 

Если задано имя, то оно рассматривается как файл для чтения, иначе данные
берутся со стандартного входного потока (stdin).
   
 ПРЕДУПРЕЖДЕНИЕ 

 
Используйте эту команду для заполнения debconf ответами только для пакетов,
которые будут или уже установлены. Иначе всё может закончиться значениями в
базе данных для удалённых пакетов, которые нельзя удалить, или всё
усугубится, если это разделяемые значения. Программу рекомендуется
использовать только для заполнения базы данных новой машины с идентичной
установкой.
   
 ФОРМАТ ДАННЫХ 

 
Данные представляют собой набор строк. Строки, начинающиеся с символа #
считаются комментариями. Пустые строки игнорируются. Все остальные строки
являются ответом на один вопрос, и должны содержать четыре значения, каждое
отделяется от другого одним пробельным символом. Первое значение --- это имя
пакета, которому принадлежит вопрос. Второе --- это имя вопроса, третье ---
это тип вопроса, а четвёртое значение (до конца строки) --- это значение
используемое для ответа на вопрос.
 

Также третье значение может быть равно ``seen''; такая строка помечает вопрос
в базе данных debconf как заданный. Заметим, что автозаполнение ответов на
вопросы по умолчанию помечает эти вопросы как заданные, поэтому для
изменения ответа по умолчанию без пометки вопроса как заданного, вам нужны
две строки.
 

Строки продлеваются на следующую строку, если оканчиваются символом ``\''.
   
 ПРИМЕРЫ 

 


  # Принудительно задать приоритет debconf как критический.
 debconf debconf/priority select critical

 


 



  # Изменить интерфейс по умолчанию на readline, но позволить пользователю выбрать.
 debconf debconf/frontend select readline
 debconf debconf/frontend seen false

 


   
 ПАРАМЕТРЫ 

 
 
 --verbose ,  -v 
 
подробный отчёт при работе
 --checkonly ,  -c 
 
только проверить правильность формата файла, не записывать изменения в базу
данных
 
   
 СМОТРИТЕ ТАКЖЕ 

 
 debconf-get-selections (1) (доступна из пакета debconf-utils)
   
 АВТОР 

 
Petter Reinholdtsen < pere@hungry.com >
 

 
   Index 
 
 НАЗВАНИЕ 
 КРАТКИЙ ОБЗОР 
 ОПИСАНИЕ 
 ПРЕДУПРЕЖДЕНИЕ 
 ФОРМАТ ДАННЫХ 
 ПРИМЕРЫ 
 ПАРАМЕТРЫ 
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