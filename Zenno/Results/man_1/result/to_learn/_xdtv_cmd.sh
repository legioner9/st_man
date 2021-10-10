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
 
 
 
 xdtv_cmd (1) >>  xdtv_cmd  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
   
 NAME 
 xdtv_cmd -- посылает команды xdtv
   
 SYNOPSIS 

 xdtv_cmd cmd_1; cmd_2; ... cmd_n 

   
 DESCRIPTION 

 xdtv_cmd 

посылает команды xdtv
   
 КОМАНДЫ 

Такие же как в ~/.lircrc для ИК пульта или
для "-e" опции  xdtv (1).
 
 setstation [ <name> | <nr> | next | prev | back ] 

 
Установить ТВ канал.  Это позволяет выбрать один из каналов, указанных в xdtvrc config файле.  Аргументом может быть номер
или имя станции (отсчет начинается с 0).
next/prev переходит к следующему/предыдущему каналу в списке.
 status 

 
Показывает информацию о канале и список каналов (список работает только со старым OSD).
 setchannel [ <name> | next | prev ] 

 
Настроиться на к.-л. канал.
 deinterlace 

 
Выбрать деинтерлейс-фильтр.
 zap | zap fast 

 
Переключение каналов Медл. / Быстро / Выкл.
 setinput [ <nr> | next | prev ] 

 
Указать устройство входа (Television/Composite1/..)
 volume mute 

 
включить/выключить звук
 blackborders [ inc | dec | 16:9 | 4:3 | 20:9 | 1.33:1 | 

 
 1.78:1 | 2.35:1 | 1.66:1 | 1.85:1 | 2.20:1 | 2.40:1 | 

 2.55:1 | 2.65:1 | 2.76:1 | value ] 

Установить границы для изображения
 volume tvmute 

 
Включить/выключить звук с помощью микшера или ТВ-тюнера.
(полезно, когда звук теряется из-за низкого качества приема.)
 volume inc 

 
увеличить силу звука на единицу.
 volume dec 

 
уменьшить силу звука на единицу.
 volume number 

 
увеличить силу звука на число. (уменьшить, если отрицательное)
 fullscreen 

 
Включить полноэкранный режим.
 showtime 

 
Показывать время
 -setosd myownsentence 

 
Показывать ваше приветствие при запуске
 mouse 

 
Указатель мыши виден/скрыт
 title 

 
Call the last nxtvepg title info again
 stayontop 

 
Быть поверх окон да/нет
 decoration 

 
Укарашать окна да/нет
 save 

 
Сохранить все параметры в RC файле
 run 

 
Запустить внешнюю программу из xdTV (например: shutdown -h now)
 quit 

 
выйти из xdtv
 keypad n 

 
Введите число 'n'.  Это выбирает канал с 2-значным номером.
Введите 2 цифры в течение 5 секунд и переключитесь на необходимый канал.  Полезно для
lirc.
 setres color|constrast|bright|hue|capture|audio value 

 
Установить значение параметра
 record 

 
Запустить/остановить запись
 preview 

 
Если Вы начали запись, то можете ее просмотреть.
 teletext 

 
Запустить/остановить встроенный AleVT Videotext/Teletext декодер-браузер
 vtx line 1|line 2|line 3|...|line n 

 
Показать субтитры, без аргумента - очистить предыдущие субтитры.
 xosd 

 
Включает использование xosd для osd дисплея.
 togglesub 

 
Включить/выключить субтитры
 subpageno 

 
Включить субтитры: выберите номер страницы
 unsubpageno 

 
Вернуться на страницу субтитров. Работает с subpageno и togglesub командами
 snap [ jpeg|ppm ] [ full|win ] 

 
Захватить кадр с предварительно указанного канала. Первый аргумент - файловый
формат (jpeg или ppm), второй указывает производить захват в полноэкранном [full] режиме
илив окне [win].
 resmode 

 
Переключает между яркостью, контрастом, насыщенностью и цветом
 resource +|-value 

 
изменяет значение текущего параметра(выбранного resmode).
пример: resource +640 или resource -640
 
   
 SEE ALSO 

 
 xdtv (1),  xawtv-remote (1)
   
 COPYRIGHT 

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 
 

 
   Index 
 
 NAME 
 SYNOPSIS 
 DESCRIPTION 
 КОМАНДЫ 
 SEE ALSO 
 COPYRIGHT 
 
 
 
 
 
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