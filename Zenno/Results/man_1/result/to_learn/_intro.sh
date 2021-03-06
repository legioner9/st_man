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
 
 
 
 intro (1)   intro  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   intro  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  intro  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   intro  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   intro  (2)   ( Solaris man: Системные вызовы )   intro  (2)   ( FreeBSD man: Системные вызовы )   intro  (2)   ( Русские man: Системные вызовы )   intro  (2)   ( Linux man: Системные вызовы )   intro  (3)   ( Solaris man: Библиотечные вызовы )   intro  (3)   ( FreeBSD man: Библиотечные вызовы )   intro  (3)   ( Русские man: Библиотечные вызовы )   intro  (3)   ( Linux man: Библиотечные вызовы )   intro  (4)   ( Solaris man: Специальные файлы /dev/* )   intro  (4)   ( FreeBSD man: Специальные файлы /dev/* )   intro  (4)   ( Русские man: Специальные файлы /dev/* )   intro  (4)   ( Linux man: Специальные файлы /dev/* )   intro  (5)   ( Solaris man: Форматы файлов )   intro  (5)   ( FreeBSD man: Форматы файлов )   intro  (5)   ( Русские man: Форматы файлов )   intro  (5)   ( Linux man: Форматы файлов )   intro  (6)   ( Solaris man: Игры )   intro  (6)   ( Русские man: Игры )   intro  (6)   ( Linux man: Игры )   intro  (7)   ( Solaris man: Макропакеты и соглашения )   intro  (7)   ( FreeBSD man: Макропакеты и соглашения )   intro  (7)   ( Русские man: Макропакеты и соглашения )   intro  (7)   ( Linux man: Макропакеты и соглашения )   intro  (8)   ( FreeBSD man: Команды системного администрирования )   intro  (8)   ( Русские man: Команды системного администрирования )   intro  (8)   ( Linux man: Команды системного администрирования )   intro  (9)   ( FreeBSD man: Ядро )   intro  (9)   ( Linux man: Ядро ) 
   
 ИМЯ 

intro - Введение в пользовательские команды
   
 ОПИСАНИЕ 

Linux является одним из диалектов Unix и в первом приближении
все пользовательские команды для Unix точно также работают в
Linux (а также во FreeBSD и в большом количестве других Unix-подобных
систем).
 

Под Linux существуют GUI (графические интерфейсы пользователя), где
вы можете с помощью мышки выполнить необходимую работу без чтения
большого объёма документации. Но традиционное окружение Unix - это
CLI (интерфейс командной строки), где вы вводите команды, чтобы
сказать компьютеру о том, что нужно сделать. Такой подход является
более гибким и обеспечивает больше возможностей, а также более быструю
работу, но требует знания команд.
Ниже даётся минимум, который поможет сделать первые шаги.
   
 Login 

Для того, чтобы начать работу, вы предположительно должны сперва
пройти процедуру регистрации в системе (login), которая требует ввода
имени пользователя и пароля. См. также
 login (1).

Программа
 login 

после регистрации запускает для вас какой-либо
 shell 

(командный интерпретатор).
В случае если процедура регистрации происходит в графическом режиме,
вы увидите экран, где есть меню или значки и можете запустить
командный интерпретатор в каком-либо окне. См. также
 xterm (1).

   
 Командный интерпретатор shell 

Вы можете вводить команды для командного интерпретатора
 shell .

Он не является каким-то встроенным средством - это просто программа и
вы можете изменить shell. Каждый имеет свой любимый командный
интерпретатор. Стандартное имя
 sh .

См. также
 ash (1),

 bash (1),

 csh (1),

 zsh (1),

 chsh (1).

 

Сессия работы, начиная с регистрации может выглядеть так:
 
 
 knuth login:  aeb 
 Password:  ******** 
 %  date 
Tue Aug  6 23:50:44 CEST 2002
 %  cal 
     August 2002
Su Mo Tu We Th Fr Sa 
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30 31

 %  ls 
bin  tel
 %  ls -l 
total 2
drwxrwxr-x   2 aeb       1024 Aug  6 23:51 bin
-rw-rw-r--   1 aeb         37 Aug  6 23:52 tel
 %  cat tel 
maja    0501-1136285
peter   0136-7399214
 %  cp tel tel2 
 %  ls -l 
total 3
drwxr-xr-x   2 aeb       1024 Aug  6 23:51 bin
-rw-r--r--   1 aeb         37 Aug  6 23:52 tel
-rw-r--r--   1 aeb         37 Aug  6 23:53 tel2
 %  mv tel tel1 
 %  ls -l 
total 3
drwxr-xr-x   2 aeb       1024 Aug  6 23:51 bin
-rw-r--r--   1 aeb         37 Aug  6 23:52 tel1
-rw-r--r--   1 aeb         37 Aug  6 23:53 tel2
 %  diff tel1 tel2 
 %  rm tel1 
 %  grep maja tel2 
maja    0501-1136285
 %  
 

 

и здесь после нажатия Control-D эта сессия была завершена.
Символ
 %  

здесь является приглашением к вводу команды - таким способ shell
показывает, что он готов к выполнению следующей команды. Вид
приглашения может быть настроен многими способами и оно может
включать имя пользователя, имя машины, текущий каталог, время и т.д.
Например выполнение PS1="What next, master? " изменит приглашение
на то, что мы ввели.
 

Выше мы видели, что есть такие команды как
 date 

(которая выдаёт дату и время) и
 cal 

(которая выдаёт календарь).
 

Команда
 ls 

выдаёт список содержимого текущего каталога - говорит какие файлы
у вас есть. С опцией -l эта команда выдаёт длинный список,
который включает владельца, размер и дату файла, а также права
доступа, которыми обладают пользователи на чтение и/или изменение
файла. Например, файл "tel" имеет размер в 37 байт, владелец
файла пользователь aeb, а права доступа такие, что владелец может
читать и писать в этот файл, а другие могут только читать его.
Владелец и права доступа могут быть изменены командами
 chown 

и
 chmod .

 

Команда
 cat 

показывает содержимое файла.
(Имя команды является аббревиатурой от слов "concatenate and print"
(соединить и напечатать): все файлы, заданные как параметры этой команды,
будут соединины в один и отправлены на "стандартный вывод", которым в данном
случае является экран терминала).
 

Команда
 cp 

(от слова "copy") копирует файлы. С другой стороны, команда
 mv 

(от слова "move") только переименовывает (или перемещает -- прим.пер.) их.
 

Команда
 diff 

показывает разницу между двумя файлами.
В примере, который дан выше, она ничего не выдаёт, потому что различий нет.
 

Команда
 rm 

(от слова "remove") удаляет файлы и будьте осторожны! Это опасно.
Не существует возможности их восстановить. Удалённые файлы будут потеряны.
 

Команда
 grep 

(от "g/re/p") ищет указанные строки в одном или нескольких файлах.
В примере команда ищет телефонный номер Maja.
   
 Полное имя, путь и текущий каталог 

Файлы находятся в большом дереве, файловой иерархии. Каждый файл
имеет 
 path name (полное имя) 

описывающее путь от корня этого дерева (который имеет имя /) до данного
файла. Например, таким полным именем может быть /home/aeb/tel.
Постоянное использование полного имени может быть нерациональным и
имя файла в текущем каталоге может быть сокращено до последнего
компонента. Так, полное имя "/home/aeb/tel" может быть сокращено
до "tel", если текущим каталогом является каталог "/home/aeb".
 

Команда
 pwd 

показывает текущий каталог.
 

Команда
 cd 

изменяет текущий каталог.
Попытайтесь выполнить команды "cd /", "pwd", "cd" и "pwd".
   
 Каталоги 

Команда
 mkdir 

создаёт новый каталог.
 

Команда
 rmdir 

удаляет каталог, если он пустой, в противном случае выдаёт ошибку.
 

Команда
 find 

(нескольк причудливым синтаксисом) ищет файлы, с указанным именем
или другими свойствами. Например, "find . -name tel" будет искать
файл "tel" начиная с указанного каталога (которые имеет имя ".").
А команда "find / -name tel" будет делать тоже самое, но начиная
с корневого каталога дерева файлов. Поиск по многогигабайтому
диску будет занимать много времени и возможно лучше будет
воспользоваться командой
 locate (1).

   
 Диски и файловые системы 

Команда
 mount 

подключает файловую систему найденную на каком-либо диске (или
дисководе или CD-ROMе и т.д.) к основной иерархии файловой системы.
А команда
 umount 

отключает её снова.
Команда
 df 

скажет вам как много осталось свободного пространства на вашем диске.
   
 Процессы 

В Unix системах многие пользовательские и системные процессы запущены
одновременно. Некоторые запущены в режиме
 foreground (переднего плана), 

другие в режиме
 background (фоновом режиме). 

Команда
 ps 

покажет вам какие процессы активны и какие нормера они имеют.
Команда
 kill 

позволяет вам освобождаться от них. Без опций эта команда посылает
процессу сигнал завершения. А если за командой "kill -9" следует
номер процесса, то этот процесс будет немедленно убит.
Процессы переднего плана часто могут быть сняты через Control-C.
   
 Получение информации 

Существуют тысячи команд, каждая из которых имеет множество опций.
Традиционно команды документируются на страницах электронного
руководства
 man pages ,

(таких как эта), так что команда "man kill" покажет вам документ,
в котором описывается использование команды "kill" (а "man man"
документ, где описывается использование команды "man").
Программа
 man 

выводит текст через специальную утилиту
 pager ,

обычно
 less .

Нажмите пробел, чтобы перейти к следующей странице или q для выхода.
 

В документации встречаются ссылки на страницы электронного руководства
man, которые выглядят как имя и номер секции, например
 man (1).

Страницы руководства являются кратким описанием и позволят вам
быстро найти некоторые забытые подробности. Для новичков существуют
тексты введений с большим количеством примеров и разъяснений, что
является полезным.
 

Большое количество программного обеспечения GNU/FSF предоставляется
вместе с файлами info. Введите команду "info info", чтобы получить
начальное представление об использовании программы "info".
 

Некоторые специальные вопросы часто рассматриваются в документах
HOWTO. Смотрите
 /usr/share/doc/howto/en 

и используйте браузер для просмотра, если вы нашли там нужные HTML
файлы.



   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2003
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 
 Login 
 Командный интерпретатор shell 
 Полное имя, путь и текущий каталог 
 Каталоги 
 Диски и файловые системы 
 Процессы 
 Получение информации 
 
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