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
 
 
 
 eview (1) >>  eview  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   eview  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

evim - простой Vim, позволяет редактировать файл с помощью Vim в безрежимном режиме
   
 КОМАНДНАЯ СТРОКА 

 

 evim 

[ключи] [файл ..]
 

 eview 

   
 ОПИСАНИЕ 

Команда
 evim 

запускает
 Vim 

и настраивает ряд опций таким образом, что он начинает вести себя
как обычный безрежимный редактор. В этом режиме Vim напоминает
Notepad из MS-Windows.
 eVim 

всегда запускается с поддержкой графического интерфейса, чтобы обеспечить
использование меню и инструментальной панели.
 

Эта команда создана для тех, кто по каким-то причинам не в состоянии 
работать с Vim в обычном режиме. Редактирование файлов при этом происходит
гораздо менее эффективно, чем при использовании обычного Vim.
 

Команда
 eview 

выполняет почти ту же самую задачу, но файл открывается в режиме "только
для чтения". Использование этой команды полностью идентично использованию 
evim -R.
 

Подробнее о Vim, ключах запуска и т.п. смотрите на странице справочника 
 vim (1).
 

При использовании
 evim 

включается опция 'insertmode', что позволяет вводить текст напрямую.
 

Кроме того, настраиваются привязки, позволяющие использовать кнопки MS-Windows
для выполнения команд копирования и вклейки. CTRL-X используется для вырезания 
текста, CTRL-C для копирования и CTRL-V для вклейки. Чтобы воспользоваться
изначальным значением кнопки CTRL-V, используйте CTRL-Q.
   
 ПАРАМЕТРЫ ЗАПУСКА 

См.  vim (1).
   
 ФАЙЛЫ 

 
 /usr/share/vim/evim.vim 
Сценарий, который загружается для инициализации eVim.
 
   
 AKA 

eVim также известен как "Vim для чайников".
Для наилучшего эффекта рекомендуется во время использования повязать
на голове платок, предварительно завязав на каждом конце по узелку.
   
 СМОТРИ ТАКЖЕ 

 vim (1)
   
 АВТОРЫ 

Большая часть
 Vim 

создана Брамом Мооленааром (Bram Moolenaar), которому помогает огромное 
количество людей. См. меню Справка/Благодарности.
 

 
   Index 
 
 ИМЯ 
 КОМАНДНАЯ СТРОКА 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ ЗАПУСКА 
 ФАЙЛЫ 
 AKA 
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