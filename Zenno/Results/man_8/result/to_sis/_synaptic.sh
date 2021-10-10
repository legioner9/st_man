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
 
 
 
 synaptic (8) >>  synaptic  (8)   ( Русские man: Команды системного администрирования )   synaptic  (8)   ( Linux man: Команды системного администрирования ) 


   
 НАЗВАНИЕ 

synaptic - Графический интерфейс для управления пакетами
   
 СИНТАКСИС 

 synaptic  [опции]
 

   
 ОПИСАНИЕ 

Synaptic - это графическая оболочка для APT.  Synaptic в использовании
очень похож на apt-get. Сначала необходимо выполнить команду 'Получить
сведения о пакетах' (Update), которая обновит список пакетов с серверов,
записанных в файле  sources.list . На этом шаге не происходит
обновление пакетов, обновляется только информация о доступных пакетах.
После этого можно посмотреть список пакетов, доступных для обновления.
Для этого необходимо активизировать фильтр 'Обновляемые'.
Список пакетов изменится, и останутся отображенными только те пакеты,
для которых доступна новая версия на сервере. Сейчас вы можете
обновить индивидуальные пакеты, выбрав их и нажав маленькую кнопку
`Обновить' слева (либо выполнив двойной щелчок мышью в gtk-версии), или выбрать
для обновления все пакеты, выполнив щелчок по большой кнопке
`Обновить', расположенной вверху. Пока еще никакие пакеты не будут
загружены/обновлены, они всего лишь отмечены для обновления. Возможно,
вы захотите снова сменить фильтр на `Запланированные изменения', чтобы
увидеть что произойдет, если вы будете продолжать обновление. Если вам
нравится то, что вы видите, то нажмите кнопку `Выполнить', и выбранные
пакеты будут загружены и установлены.
 
 
   
 Различие между `Обновить' и  `Обновить дистрибутив' 

 
Различие между `Обновить' (Upgrade) и  `Обновить дистрибутив'
(DistUpgrade) невелико, но очень важно. `Обновить' означает отметить
для обновления пакеты, которые возможно обновить, исключая пакеты с
новыми зависимостями. Ни при каких условиях не будут удалены
установленные пакеты, либо установлены новые.
 
`Обновить дистрибутив' в добавок к функции `Обновить' также разумно
обрабатывает изменяющиеся зависимости на новые пакеты и использует
интеллектуальную систему разрешения конфликтов при необходимости.
 
Как правило, вам необходимо будет пользоваться только функцией
`Обновить дистрибутив', если вы выполняете обновление между основными
версиями вашего дистрибутива
(if you upgrade between major versions of your distribution).
 
 
   
 Множественный выбор пакетов 

 
Вы можете выбирать более одного пакета за раз. Для этого необходимо
использовать клавиши SHIFT или CTRL для выбора нескольких пакетов. При
нажатии на кнопку действия (установить/обновить/удалить) для
нескольких пакетов, действие будет выполнено для каждого пакета (как
вы, вероятно, уже догадались (: ).
 



 
 
   
 Комбинации клавиш 

 
GTK-версия имеет некторые глобальные комбинации клавиш:
 

 CTRL-k  удержать
 

 CTRL-i  установить
 

 CTRL-r  удалить
 

 CTRL-s  искать
 

 CTRL-u  обновить
 

 CTRL-p  выполнить
 

 CTRL-q  выйти
 
 
 
   
 Фильтры 

 
Synaptic отображает основной список пакетов в соответствии с выбранным
фильтром. Наиболее простым фильтром является, конечно же, `Все
пакеты'. Но существуют и другие фильтры. Вы можете посмотреть
предопределённые фильтры либо сделать собственные нажав на кнопку
`Фильтры' над списком пакетов.
 
   
 ОПЦИИ 

Synaptic распознает стандартные опции X-приложений, а также следующие:
 
 -f ,  --filter-file = filename 
задать альтернативный файл фильтров
 -i ,  --initial-filter = int 
начать с фильтром под номером  int 
 -o ,  --option = option 
установить опцию synaptic/apt (только для экспертов)
 
 
   
 АВТОРЫ 

Synaptic был разработан Alfredo K. Kojima
< kojima@conectiva.com.br >. Его последний официальный релиз был
0.16. Michael Vogt < mvo@debian.org > took over his CVS version, where
Alfredo added a nearly complete port to Gtk+. Michael завершил
портирование и добавил несколько новых возможностей.  Видимые
пользователю изменения начиная с этого времени смотрите в файле
 NEWS . Также в разработке synaptic'а участвует компания
Connectvia. Gustavo Niemeyer < niemeyer@conectiva.com > выполняет
большую часть работы.
 

Вся разработка выполняется на  http://savannah.gnu.org/projects/synaptic 
 

Это руководство было написано Wybo Dekker < wybo@servalys.nl > и
Michael Vogt < mvo@debian.org >.
   
 ПЕРЕВОД 

Перевод с английского выполнил Святослав Свиридов < svd@altlinux.ru >

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 Различие между `Обновить' и  `Обновить дистрибутив' 
 Множественный выбор пакетов 
 Комбинации клавиш 
 Фильтры 
 ОПЦИИ 
 АВТОРЫ 
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