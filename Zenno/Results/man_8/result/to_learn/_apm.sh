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
 
 
 
 apm (8)   apm  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   apm  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня )   apm  (4)   ( FreeBSD man: Специальные файлы /dev/* )   apm  (4)   ( Русские man: Специальные файлы /dev/* )   apm  (4)   ( Linux man: Специальные файлы /dev/* )   apm  (8)   ( FreeBSD man: Команды системного администрирования ) >>  apm  (8)   ( Русские man: Команды системного администрирования ) Ключ  apm  обнаружен в базе ключевых слов. 
 
 
 apm(8) 
 Руководство системного администратора FreeBSD 
 apm(8) 
 
 

 НАЗВАНИЕ 

 apm ,  zzz  - управление подсистемой APM BIOS и выдача ее информации 

 СИНТАКСИС 
 
	apm [-ablstzZ] [-d  статус ] [-e  статус ] [-h  статус ] [-r  дельта ] 
	zzz
 

 ОПИСАНИЕ 

 Программа  apm  управляет подсистемой расширенного управления питанием Intel/Microsoft
(APM - Advanced Power Management) BIOS и выдает текущее состояние подсистемы APM на ноутбуках.
Программа  zzz  останавливает систему с помощью функций APM. 

 Следующие опции поддерживаются для программы  apm  (у программы  zzz  опций нет).
Если опции не указаны,  apm  выдает подробную информацию и текущее состояние подсистемы APM.
Если указано несколько опций отображения, значения выдаются по одному в строке в указанном далее
порядке. 

 
 -a 
Выдает текущее состояние питания от сети как целочисленное значение. Значения 0 и 1 обозначают
"отключено" и "включено", соответственно. 
 -b 
Выдает целочисленное значение, отражающее состояние батареи. Значения 0, 1, 2, 3 обозначают
"заряжена", "разряжена", "критически разряжена" и "заряжается", соответственно. 
 -d статус 
Включает/отключает выдачу информации отдельно от обычной приостановки с помощью булева (0 или 1)
значения  статуса . Эта опция, по-видимому, не работает на многих ноутбуках, в том числе, на
Libretto 30CT и 50CT. 
 -e статус 
Включение или отключение функций APM компьютера, в зависимости от булева значения аргумента
 статус . 
 -h статус 
В зависимости от булева значения  статуса , включает или отключает поддержку инструкции
 HLT  в подпрограмме переключения контекста ядра. Эта опция не нужна почти для всех реализаций
APM, но для некоторых, чей вызов " Idle CPU " вызывает остановку часов процессора и посылку
инструкции  HLT , необходимо указывать опцию  -h , чтобы избежать снижения пиковой
производительности системы. Подробнее см. на странице справочного руководства 
 apm(4) . 
 -l 
Выдает процент заряженности батареи. Если ваш ноутбук не поддерживает эту функцию, выдается 
255. 
 -r дельта 
Запускает таймер включения (resume), если ноутбук поддерживает такую возможность. Эта команда не
останавливает работу ноутбука, но если он будет остановлен и поддерживает автоматическое 
включение после останова, то будет включен через  дельта  секунд (с момента выполнения 
этой команды, а не с момента останова). 
 -s 
Выдает состояние поддержки функций APM как целочисленное значение. Значения 0 и 1 обозначают
"отключена" и "включена", соответственно. 
 -t 
Выдает предположительно оставшееся время работы батареи в секундах. Если оно неизвестно,
выдается  -1 . 
 -Z 
Переводит систему в режим ожидания. В этом режиме энергопотребление ниже, чем обычно, но выше,
чем в режиме останова. Некоторые ноутбуки поддерживают включение из этого состояния
по таймеру или по событиям Ring Indicator (по входящему звонку?). Результат выполнения команды 
 apm  покажет, что именно предположительно поддерживает ваш ноутбук. 
 -z 
Останавливает систему. Эта опция эквивалентна команде  zzz . 
 

 ОШИБКИ 

 Некоторые реализации APM не поддерживают параметры, необходимые для программы  apm .
В таких системах  apm  выдает значения этих параметров как  unknown . 

 Некоторые реализации APM не обрабатывают события типа нажатия на кнопку включения питания
или закрытие ноутбука. Система с такой реализацией должна останавливаться только с помощью команды
 apm  или  zzz . 

 ПРИМЕЧАНИЯ 

 Утилита  apmconf(8)  вошла в состав  apm(8)  и поэтому  apm(8)  поддерживает
все ее функциональные возможности. 

 ССЫЛКИ 
 
	 apm(4) 
 

 АВТОР 

 Тацуми Хосокава (Tatsumi Hosokawa) 
( hosokawa@jp.FreeBSD.org ) 

 FreeBSD 4.6, 1 ноября 1994 года 

 Copyright 2002  В. Кравчук ,
 OpenXS Initiative , перевод на русский язык
 

 
 
 
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