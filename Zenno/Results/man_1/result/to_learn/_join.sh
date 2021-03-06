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
 
 
 
 join (1)   join  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   join  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  join  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   join  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   join  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

join - объединяет строки двух файлов в общее поле
   
 СИНТАКСИС 

 join 

[ ОПЦИЯ ]...  ФАЙЛ1 ФАЙЛ2 
   
 ОПИСАНИЕ 


 

Для каждой пары строк ввода с одинаковыми общими полями, записывает строку в 
стандартный вывод. По умолчанию общее поле считается первым, поля разделяются
пробельными знаками.  Если один из ФАЙЛОВ задан как -, читает стандартный
ввод.
 
 -a  НОМЕР 
печатать не имеющие пары строки из файла с заданным
номером (1 или 2)
 -e  СТРОКА 
замещать при выводе пустые строки указанной СТРОКОЙ
 
 -i ,  --ignore-case 
игнорировать регистр букв при сравнении полей
 -j  ПОЛЕ 
эквивалентно `-1 ПОЛЕ  -2  ПОЛЕ'
 -o  ФОРМАТ 
выводить в соответствии с ФОРМАТОМ
 -t  СИМВОЛ 
использовать СИМВОЛ как разделитель поля ввода и поля вывода
 -v  НОМЕР 
как  -a  НОМЕР, но не печатать имеющие пары строки
 -1  ПОЛЕ 
считать общим заданное ПОЛЕ файла 1
 -2  ПОЛЕ 
считать общим заданное ПОЛЕ файла 2
 --help 
показать справку и выйти
 --version 
показать информацию о версии и выйти
 
 

Если не задан  -t  СИМВОЛ, используются пробельные символы для разделения,
иначе поля разделяются по СИМВОЛУ.  Каждое ПОЛЕ является порядковым номером, начиная
с 1.  ФОРМАТ - это одно или несколько
разделяемых запятыми или пробельными знаками описаний формата в виде
`НОМЕР_ФАЙЛА.ПОЛЕ' или `0'. По умолчанию ФОРМАТ выводит общее поле,
остальные поля из ФАЙЛА1 и остальные поля из ФАЙЛА2, разделенные
СИМВОЛОМ.
 

Важно: ФАЙЛ1 и ФАЙЛ2 должны быть отсортированы по общим полям.
   
 АВТОР 

Майк Хертель
   
 СООБЩЕНИЕ ОБ ОШИБКАХ 

Об ошибках сообщайте по адресу < bug-coreutils@gnu.org >.
   
 АВТОРСКИЕ ПРАВА 

 Copyright (c) 2006 Free Software Foundation, Inc.
 

Это свободное программное обеспечение. 
Вы можете распространять его копии при соблюдении условий
GNU General Public License < http://www.gnu.org/licenses/gpl.html >.
Не предоставляется НИКАКИХ ГАРАНТИЙ в установленных законом пределах.
   
 СМ. ТАКЖЕ 

Полная документация для
 join 

поддерживается в виде руководства в формате Texinfo. Если программы
 info 

и
 join 

установлены и настроены в системе, то по команде
 
 
 info join 

 
 

вы получите доступ к более полному руководству.
   
 ПЕРЕВОД 

Перевод с английского russians < pawel5@mail.ru > 2007

 
   Index 
 
 ИМЯ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 АВТОР 
 СООБЩЕНИЕ ОБ ОШИБКАХ 
 АВТОРСКИЕ ПРАВА 
 СМ. ТАКЖЕ 
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