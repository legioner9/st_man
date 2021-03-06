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
 
 
 
 uniq (1)   uniq  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   uniq  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  uniq  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   uniq  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   uniq  (1)   ( POSIX man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

uniq - выводит или пропускает повторяющиеся строки
   
 СИНТАКСИС 

 uniq 

[ ОПЦИЯ ]... [ ВВОД  [ ВЫВОД ]]
   
 ОПИСАНИЕ 


 

Удаляет все кроме одной повторяющиеся строки из ВВОДА (или
стандартного ввода) и печатает на ВЫВОД (или стандартный вывод).
 

Обязательные аргументы для длинных ключей обязательны и для коротких.
 
 -c ,  --count 
выводить число повторов в начале каждой строки
 -d ,  --repeated 
выводить только повторяющиеся строки
 -D ,  --all-repeated [= delimit-method ]  
печатать все повторяющиеся строки
delimit-method={none(по умолчанию),prepend,separate}
Разделение делается по пустым строкам.
 -f ,  --skip-fields = N 
не сравнивать первые N полей
 -i ,  --ignore-case 
игнорировать регистр при сравнении
 -s ,  --skip-chars = N 
не сравнивать первые N знаков
 -u ,  --unique 
выводить только неповторяющиеся строки
 -w ,  --check-chars = N 
сравнивать только первые N символов в строке
 --help 
показать справку и выйти
 --version 
показать информацию о версии и выйти
 
 

Полем считается последовательность пробельных знаков, за которой следуют непробельные знаки.
Сначала пропускаются поля, потом знаки.
   
 АВТОРЫ 

Ричард Столманн и Девид МакКензи.
   
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
 uniq 

поддерживается в виде руководства в формате Texinfo. Если программы
 info 

и
 uniq 

установлены и настроены в системе, то по команде
 
 
 info uniq 

 
 

вы получите доступ к более полному руководству.
   
 ПЕРЕВОД 

Перевод с английского russians < pawel5@mail.ru > 2007

 
   Index 
 
 ИМЯ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 АВТОРЫ 
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