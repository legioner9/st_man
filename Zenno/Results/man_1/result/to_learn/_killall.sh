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
 
 
 
 killall (1)   killall  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   killall  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  killall  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   killall  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
killall - завершить процессы по имени
 
   
 СИНТАКСИС 

 
 killall  [ -iv ] [ -сигнал ]  имя ... 
 
 killall  -l
 
 killall  -V
 
   
 ОПИСАНИЕ 

 
 killall  посылает сигнал всем процессам, которые были запущены
указанной командой. Если имя сигнала не указано, посылается сигнал
SIGTERM.
 
Сигналы могут указываться как по имени (например,  -HUP ), так и по
номеру (например,  -1 ). Сигнал 0 (проверить, существует ли процесс
) может быть указан только номером.
 
Если имя команды содержит наклонную черту ( / ), то для завершения
будут выбраны только те процессы, которые выполняют указанный файл,
независимо от их имени.
 
 killall  завершается с ненулевым кодом возврата, если для любой
из перечисленных команд не было завершено ни одного процесса. Если же
для каждой команды был завершен хотя бы один процесс,  killall 
возвращает ноль.
 
 killall  никогда не завершает свой собственный процесс (но может
завершить другие процессы, запущенные командой  killall ).
 
   
 ОПЦИИ 

 
 
 -i   
 
Спрашивать подтверждение на завершение процессов.
 
 -l   
 
Вывести имена всех известных сигналов.
 
 -v   
 
Сообщить, успешно ли был послан сигнал.
 
 -V   
 
Вывести информацию о версии.
 
 
   
 ФАЙЛЫ 

 
 
 /proc  
 
местоположение файловой системы процессов
 
 
   
 ОШИБКИ 

 
Завершение процессов по имени файла может быть сделано только для
исполнимах файлов, открытых во время исполнения, то есть процессы
косвенно исполнимых файлов не могут быть завершены таким образом.
Killing by file only works for executables that are kept
open during execution, i.e. impure executables can't be
killed this way.
 
Учтите, что команда  killall   имя_процесса 
 может не возыметь желаемого эффекта на не-Linux системах, в особенности
будучи запущенной привилегированным пользователем. 
 
   
 АВТОР(Ы) 

 
Werner Almesberger < werner.almesberger@lrc.di.epfl.ch >
 
   
 СМ. ТАКЖЕ 

 
 kill (1) 
,  fuser (1) 
,  ps (1) 
,  kill (2) 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ОПЦИИ 
 ФАЙЛЫ 
 ОШИБКИ 
 АВТОР(Ы) 
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