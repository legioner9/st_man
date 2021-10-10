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
 
 
 
 grodvi (1)   grodvi  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  grodvi  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   grodvi  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
grodvi - преобразует вывод groff в формат TeX dvi
 
   
 СИНТАКСИС 

 
 grodvi  [  -dv  ] [  -wn  ] [  -Fкаталог  ] [  файлы ... ]
 
   
 ОПИСАНИЕ 

 
 grodvi  это драйвер для  groff,  который делает формат TeX
dvi. В обычном случае он должен быть вызван командой
 groff -Tdvi . Это может быть осуществлено  troff -Tdvi , а
также
                использованием макроса
 /usr/share/groff/tmac/tmac.dvi . Если ввод должен быть
подвергнут препроцессорной обработке с  eqn , то также
используется макрос  /usr/share/groff/font/devdvi/eqnchar .
 
Сгенерированный программой  grodvi  dvi файл может быть
напечатан любым корректным dvi драйвером. Примитивы,
которые рисуются командой troff реализуются с
использованием tpic версии 2. Если ваш dvi драйвер не
поддерживает эти вещи, то команды  \D  внутри файла не будут
ничего выдавать на вывод.
 
 
 В дополнение к команде рисования доступны: 
 
 \D'R   dh dv' 
 
Рисует линейку (сплошной черный четырехугольник), с
одним углом на текущей позиции и противоположный по
диагонали угол на текущей позиции +( dh , dv ).
Впереди от текущей позиции будет противоположный
угол. Это приводит к появлению линейки в dvi фале и
также может быть напечатано даже с драйвером,
который не поддерживает спецификацию tpic, что
маловероятно для других команд  \D . 
 
Команда groff  \X'что_угодно'  транслируется в такую же
команду в dvi файле такую же как по команде  \spe cial{что_угодно} 
в TeX;  что_угодно не должно содержать
символа новой строки. 
 
Файл шрифтов для  grodvi  может быть создан из файлов tfm
командой  tfmtodit (1) 
. Файл описания шрифта должен
содержать следующую дополнительные команды:
 
 внутреннее_имя   имя 
 
Имя файла tfm (без расширения  .tfm  ) это
 имя .
 
 контрольная_сумма   n 
 
Контрольная сумма в файле tfm это  n .
 
 designsize   n   
 
    The designsize in the tfm file is  n .
 
Все это автоматически генерируется программой  tfmtodit. 
В  troff  ESC последовательность  \N  может быть использована
для доступа к символам через позицию, которую они занимают
в файле tfm; все символы в фале tfm могут быть назначены
таким образом.
 
 ОПЦИИ 
 
 -d   
 
     Не использовать tpic для реализации команд
рисования. Горизонтальные и вертикальные линии
будут реализованы линейками. Другие команды
рисования будут игнорированы.
 
 -v   
 
     Выводит номер версии.
 
 -wn   
 
    Устанавливает толщину линии по умолчанию в  n  тысяч
em.
 
 -Fкаталог 
 
Ищет в каталоге  каталог/devdvi  файлы описания
устройства и шрифта.
 
 ФАЙЛЫ 
 
/usr/share/groff/font/devdvi/DESC 
Файл описания устройства.
 
 /usr/share/groff/font/devdvi/ F 
 
Файл описания шрифта для шрифта  F .
 
 /usr/share/groff/tmac/tmac.dvi 
 
Макрос для использования с  grodvi .
 
 БАГИ 
 
Dvi файлы произволяься программой  grodvi  с различным
разрешением (57816 единиц на дюйм). Неправильно
написанные драйвера, которые назначают разрешение
используемое TeX, вместо того чтобы использовать
разрешение означенное внутри dvi файла не будут работать с
grodvi.
 
Когда тспользуется опция  -d  с таблицами в боксах, то
вертикальные и горизонтальные линии могут иногда смещаться
на однут точку. Это фича TeX требует чтобы высота и
ширина линеек была округлена.
 
 СМОТРИТЕ ТАКЖЕ 
 
 tfmtodit (1) 
,  groff (1) 
,  troff (1) 
,  eqn (1) 
,  groff_out (5) 
,
 groff_font (5) 
,  groff_char (7) 
 
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 
 
 
 
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