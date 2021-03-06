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
 
 
 
 vimdiff (1) >>  vimdiff  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   vimdiff  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

vimdiff - позволяет редактировать две или три версии файла с помощью Vim 
с отображением различий.
   
 КОМАНДНАЯ СТРОКА 

 

 vimdiff 

[ключи] файл1 файл2 [файл3]
 

 gvimdiff 

   
 ОПИСАНИЕ 

Команда
 vimdiff 

загружает в
 Vim 

два (или три) файла. Каждый файл открывается в собственном окне.
Различия между файлами отображаются с помощью подсветки синтаксиса.
Эта команда позволяет наглядно отображать внесённые изменения и переносить
различающиеся фрагменты из одной версии файла в другую.
 

Подробнее о Vim см. на странице справочника  vim (1).
 

При запуске с помощью команды
 gvimdiff  

редактор запускается в режиме графического интерфейса, если это возможно.
 

В каждом окне включается опция 'diff', что позволяет использовать подсветку 
синтаксиса для отображения различий между файлами.
 

Для улучшения работы с файлами в режиме отображения отличий также включаются
опции 'wrap' и 'scrollbind'.
 

Значение опции 'foldmethod' устанавливается равным "diff", что позволяет
прятать в складку области текста, которые не отличаются в различных версиях файла.
Значение опции 'foldcolumn' устанавливается равным 2, чтобы было проще 
находить, открывать и закрывать такие складки.
   
 КЛЮЧИ ЗАПУСКА 

Для выравнивания строк между окнами используется вертикальное разделение окон,
как если бы использовался ключ "-O". Для того, чтобы использовать разделение
окон по горизонтали, следует указать в командной строке ключ "-o".
 

Остальные ключи командной строки рассматриваются на странице справочника  vim (1).
   
 СМОТРИ ТАКЖЕ 

 vim (1)
   
 АВТОРЫ 

Большая часть
 Vim 

создана Брамом Мооленааром (Bram Moolenaar), которому помогает огромное 
количество людей. См. ":help credits" в
 Vim. 

 

 
   Index 
 
 ИМЯ 
 КОМАНДНАЯ СТРОКА 
 ОПИСАНИЕ 
 КЛЮЧИ ЗАПУСКА 
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