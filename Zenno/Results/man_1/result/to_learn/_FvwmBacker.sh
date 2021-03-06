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
 
 
 
 FvwmBacker (1)   FvwmBacker  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  FvwmBacker  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
 FvwmBacker  - модуль изменения фона
 
   
 СИНТАКСИС 

 
 FvwmBacker  вызывается оконным менеджером fvwm и не работает при вызове из
командной строки.
 
   
 ОПИСАНИЕ 

 
Модуль  FvwmBacker  предоставляет возможность изменять фон
при смене виртуального рабочего стола (desktop). Для этого могут быть
запущены любые команды. Эти команды должны завершаться после изменения
фона (т.е. `xv -root zzz.gif' недопустимо без опции
-quit), иначе  FvwmBacker  зависнет.
 
   
 ПРАВА 

 
Модуль  FvwmBacker  является оригинальной работой Mike Finger.
 
Copyright 1994, Mike Finger. Автор не дает каких-либо
гарантий при использовании данного модуля. Используйте его
на свой страх и риск. Вы можете свободно использовать
данный модуль или его часть для любых целей при сохранении
copyright.
 
   
 Инициализация 

 
Во время инициализации  FvwmBacker  просматривает
файл конфигурации, используеый FVWM при запуске, и
ищет там свои опции. Эти опции обсуждаются ниже.
 
   
 Вызов 

 
 FvwmBacker  может быть вызван оконным менеджером fvwm во время
запуска при наличии строки  `Module FvwmBacker'  в
файле  .fvwmrc. 
 
 FvwmBacker  должен находится в каталоге, указанном
опцией  ModulePath  файла  .fvwmrc. 
 
   
 Параметры конфигурации 

 
 
 *FvwmBackerDesk НомерДесктопа команда 
 
Определяет команду, которая запустится, когда
указанный десктоп станет активным.
 
Если команда начинается с -solid,  FvwmBacker 
использует следующий аргумент как цвет из базы
данных X и устанавливает фон с этим цветом без вызова
 xsetroot .
 
 
   
 Простейшая конфигурация 

 
Ниже дан фрагмент файла  .fvwmrc , описывающий
команды инициализации  FvwmBacker. 
 
 
####
# Установить фоновые цвета для различных десктопов
####
*FvwmBackerDesk 0 -solid steelblue
*FvwmBackerDesk 1 -solid midnightblue
*FvwmBackerDesk 2 -solid yellow
*FvwmBackerDesk 3 xpmroot /usr/include/X11/pixmaps/background2.xpm

 

 
   
 АВТОР(Ы) 

 
Mike Finger ( mfinger@mermaid.micro.umn.edu )
( Mike_Finger@atk.com )
(doodman on IRC, check the #linux channel)
 
   
 Модифицировал 

 
Andrew Davison ( davison@cs.monash.edu.au )
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРАВА 
 Инициализация 
 Вызов 
 Параметры конфигурации 
 Простейшая конфигурация 
 АВТОР(Ы) 
 Модифицировал 
 
 
 
 
 
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