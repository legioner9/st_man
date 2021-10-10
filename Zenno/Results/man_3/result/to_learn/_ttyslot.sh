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
 
 
 
 ttyslot (3)   ttyslot  (3)   ( Solaris man: Библиотечные вызовы )   ttyslot  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  ttyslot  (3)   ( Русские man: Библиотечные вызовы )   ttyslot  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

ttyslot - поиск слота текущего терминала пользователя в некотором файле
   
 СИНТАКСИС 

 
 #include < unistd.h >     /* для систем BSD  */

 

 #include < stdlib.h >     /* для систем SYSV */

 
 int ttyslot(void); 

   
 ОПИСАНИЕ 

Функция
 ttyslot ()

возвращает индекс текущей записи пользователя в некотором файле.
 

"В каком файле?" - спросите вы. Ну, давайте сначала глянем историю.
   
 Древнейшая история 

Давным, давно, в далекой далекой... в общем,
однажды в системе Unix V6 существовал файл
 /etc/ttys ,

считываемый программой
 init (8)

для определения действий с каждой терминальной строкой.
Каждая строка состоит из трех символов.
Первый символ - '0' или '1', где '0' обозначает игнорирование "ignore".
Второй символ обозначает терминал: например, '8' соответствует "/dev/tty8".
Третий символ является аргументом для
 getty (8),

указывающий последовательность используемых скоростей на линии ('-'
обозначало: начать на скорости 110 бод).
Поэтому обычным значением строки было "18-".
Зависание на некоторой линии решалось изменением '1' на '0',
сигнализируя init об изменениях, затем обратное изменение
и снова сигнализирование init.
 

В Unix V7 формат был изменен: теперь второй символ был аргументом к
 getty (8),

указывая на последовательность используемых скоростей на линии ('0'
обозначало цикл 300-1200-150-110 бод; '4' обозначало консоль DECwriter),
а остаток строки содержал имя терминала.
Поэтому типичным значением строки было "14console".
 

Далее системы еще больше расширили синтаксис.
Системы типа SYSV вместо этого файла используют файл
 /etc/inittab .

   
 Древнейшая история (2) 

С другой стороны - существовал файл
 /etc/utmp ,

перечисляющий всех пользователей, зарегистрированных в системе.
Он обрабатывался с помощью
 login (8).

У него фиксированный размер, и соответствующий индекс в файле определялся
 login (8),

используя вызов
 ttyslot ()

для определения номера строки в
 /etc/ttys 

(начиная отсчет с 1).
   
 Семантика ttyslot 

Таким образом, функция
 ttyslot ()

возвращает индекс управляющего терминала текущего процесса в файле
 /etc/ttys ,

и (обычно) это то же самое, что и индекс записи для
текущего пользователя в файле
 /etc/utmp .

В BSD все еще существует файл
 /etc/ttys ,

но в системах SYSV его уже нет, и поэтому на него ссылаться нельзя.
Таким образом, на таких системах документация говорит, что
 ttyslot ()

вовзращает текущий индекс пользователя в базе данных учетных записей.
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы эта функция возвращает номер слота.
При ошибках (например, если ни один из описателей файлов 0, 1 или 2
не ассоциирован с терминалом, указанном в этой базе данных)
возвращается 0 на системах Unix V6 и V7 и на BSD-подобных, но -1
на системах, подобных SYSV.
   
 ЗАМЕЧАНИЯ 

Файл utmp находится в разных местах на разных системах, например
 /etc/utmp ,

 /var/adm/utmp ,

 /var/run/utmp .

 

Реализация glibc2 этой функции считывает файл
 _PATH_TTYS ,

определенный в
 < ttyent.h > 

как "/etc/ttys". При ошибке возвращается 0.
Так как в системах Linux обычно нет файла "/etc/ttys",
то всегда будет возвращаться 0.
 

В Minix также есть
 fttyslot ( fd ).

   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

 ttyslot ()

появилось в Unix V7.
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

XPG2. Унаследовано в SUSv2. Удалено в SUSv3.
SUSv2 требует возврата -1 при ошибках.
   
 СМ. ТАКЖЕ 

 getttyent (3),

 ttyname (3),

 utmp (5)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 Древнейшая история 
 Древнейшая история (2) 
 Семантика ttyslot 
 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 ЗАМЕЧАНИЯ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
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