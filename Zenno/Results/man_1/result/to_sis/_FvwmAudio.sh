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
 
 
 
 FvwmAudio (1)   FvwmAudio  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  FvwmAudio  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
FvwmAudio - модуль FVWM Audio
 
   
 СИНТАКСИС 

 
 FvwmAudio  вызывается из оконного менеджера fvwm
и не будет работать при вызове из командной строки. Он может быть
вызван из файла  .fvwmrc  , как показано ниже:
 
        Module FvwmAudio

 

или из всплывающего (pop-up) меню:
 
AddToMenu Module-Popup "Modules"    Title
+         "Audio"        Module FvwmAudio
+         "Auto"         Module FvwmAuto 200
+         "Buttons"      Module FvwmButtons
+         "Ident"        Module FvwmIdent
+         "Banner"       Module FvwmBanner
+         "Pager"        Module FvwmPager 0 3

 

 
   
 ОПИСАНИЕ 

 
Модуль  FvwmAudio  привязывает к действиям оконного менеджера
Fvwm различные звуки.  FvwmAudio  может использоваться с
любым проигрывателем звуков и, следовательно, не требует
специальных библиотек. Простой в устройстве, он только
привязывает имена звуковых файлов к определенным действиям
и запускает проигрывание файла, если выполнилось связанное
с ним действие.
 
 FvwmAudio  имеет также встроенную поддержку для библиотеки
 rplay. 
 
   
 Параметры конфигурации 

 
При запуске  FvwmAudio  он читает файл  .fvwmrc 
и проверяет в нем наличие следующих параметров конфигурации:
 
 
 *FvwmAudioPlayCmd /usr/bin/X11/demos/auplay 
 
Определяет программу проигрывания звуков. Если этот
параметр установлен в значение  builtin-rplay , то
будет задействована встроенная  rplay  поддержка.
 
Например:
 
 
*FvwmAudioPlayCmd builtin-rplay

 

 
 *FvwmAudioDir /usr/lib/sounds 
 
Определяет каталог поиска звуковых
файлов. Эта опция игнорируется при использовании
 rplay. 
 
 *FvwmAudioDelay 5 
 
Указывает, что звуковая реакция на событие произойдет
только в том случае, если оно произошло не менее, чем
через 5 секунд после предыдущего проигрывания.
События, которые произойдут во время данного периода задержки,
будут проигнорированы. Эта опция полезна, если вы не
хотите, чтобы одновременно проигрывалось несколько
звуков. По умолчанию задержки нет - FvwmAudioDelay
0.
 
 *FvwmAudioRplayHost имя_хоста 
 
Определяет, какой хост будет играть звуки.  имя_хоста 
может быть переменной окружения, например, $HOSTDISPLAY.
Эта опция допустима только с поддержкой
 rplay. 
 
 *FvwmAudioRplayPriority 0 
 
Определяет, какой приоритет будет назначен для
проигрывания звуков. Эта опция допустима только с поддержкой
 rplay. 
 
 *FvwmAudioRplayVolume 127 
 
Определяет, какая громкость будет назначена для
проигрывания звуков. Эта опция допустима только с поддержкой
 rplay. 
 
 *FvwmAudio событие_оконного_менеджера имя_звукового_файла 
 
Привязывает определенное событие оконного менеджера к
звуковому файлу.
 
 
*FvwmAudio startup TaDa.au
*FvwmAudio shutdown Elvis_Left.au
*FvwmAudio unknown doh.au
*FvwmAudio add_window drip.au
*FvwmAudio raise_window swoosh.au
*FvwmAudio lower_window swoosh.au
*FvwmAudio focus_change boing.au
*FvwmAudio destroy_window explosion.au
*FvwmAudio iconify ploop.au
*FvwmAudio deiconify ploop.au
*FvwmAudio toggle_paging fwop.au
*FvwmAudio new_page beam_trek.au
*FvwmAudio new_desk beam_trek.au
*FvwmAudio configure_window huh.au
*FvwmAudio window_name beep.au
*FvwmAudio icon_name beep.au
*FvwmAudio res_class beep.au
*FvwmAudio res_name beep.au
*FvwmAudio end_windowlist twang.au


 

 
 
   
 ВЫЗОВ 

 
Метод вызова данного модуля был показан в секции  Синтаксис .
Невозможно вызвать модуль из командной строки. FvwmAudio
должен быть вызван из оконного менеджера fvwm.
 
   
 ОШИБКИ 

 
Шумит при запуске и перезапуске fvwm.
 
   
 ПРАВА 

 
Данный модуль основан на подобном модуле Fvwm, названном
 FvwmSound  , который написал Mark Boyns.
 FvwmAudio  является расширением оригинальной
программы для работы с любыми аудиопроигрывателями.
Весь интерфейс данного модуля с оконным менеджером -
оригинальная работа Robert Nation.
 
Copyright 1994, Mark Boyns и Mark Scott. Без каких-либо
гарантий с чьей-либо стороны. Вы используете эту программу
на свой страх и риск. Даются права на использование этой программы в
любых целях при сохранении этой секции об авторских
правах.
 
   
 АВТОР(Ы) 

 
Mark Boyns ( boyns@sdsu.edu ), Mark Scott
( mscott@mcd.mot.com )
 
Перевел с английского Виктор Вислобоков (2:5054/ 8.34@Fidonet.org )
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 Параметры конфигурации 
 ВЫЗОВ 
 ОШИБКИ 
 ПРАВА 
 АВТОР(Ы) 
 
 
 
 
 
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