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
 
 
 
 podebconf-display-po (1) >>  podebconf-display-po  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   podebconf-display-po  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 НАЗВАНИЕ 

 
podebconf-display-po --- показывает содержимое PO-файла в debconf интерфейсе
   
 СИНТАКСИС 

 
 podebconf-display-po  [ -h ] [ -f   ИНТЕРФЕЙС ]  файл.po 
   
 ОПИСАНИЕ 

 
Как и в любой работе по локализации, переводчики должны протестировать свои
переводы, запуская программу, над которой они работают. Часто это очень
сложно сделать с помощью сценария, так как нет способа автоматически
показать все сообщения.
 

Программу  podebconf-display-po  можно назвать  Бедный тестировщик
локализации  debconf. Она анализирует PO-файл, пытаясь восстановить вид
первоначального файла шаблонов, и показывает сообщения в debconf интерфейсе.
 

Естественно, права суперпользователя не нужны и никаких изменений в
системных настройках debconf программа  podebconf-display-po  не делает.
   
 ПАРАМЕТРЫ 

 
 
 -h ,  --help 
 
Показать справку по использованию и завершить работу.
 -f ,  --frontend= ИНТЕРФЕЙС 
 
Задать другой debconf интерфейс.
 
   
 ПРЕДОСТЕРЕЖЕНИЯ 

 
 
 * 
Так как  podebconf-display-po  полагается на  "debconf"  при выводе, ваша
рабочая среда должна быть настроена на показ локализованных вопросов на
языке PO-файла. Если вы хотите проверить перевод другого языка, нужно
временно изменить свои настройки, например


 



   $ LANGUAGE=de podebconf-display-po de.po

 



 


Если PO-файл не удаётся преобразовать в вашу текущую кодировку, будут
показаны строки на английском языке вместо локализованных версий. Чтобы
этого не происходило настройте кодировку  UTF-8  в рабочей среде.
 * 
До версии 0.8.3,  "po-debconf"  вставляла только имена полей в
PO-файлах. Обсуждение в списке рассылки показало, что формат текста должен
зависеть от типа шаблона , например показ строковых и логических типов
должен отличаться, так как первый тип --- это открытый вопрос и пользователь
вводит какой-то текст, а второй тип --- это обычно вопрос Да/Нет. Авторы
думают об этом когда пишут свои файлы шаблонов, но и переводчики должны это
понимать.


 


Это условие выполняется, если PO-файлы генерируются po-debconf версии >=
0.8.3 и тип шаблона вставляется в PO-файлы. В старых версиях
 podebconf-display-po  имела простейший алгоритм определения
первоначального типа шаблона и иногда могла ошибаться.
 * 
Интерфейс  "dialog" , который использует библиотеку  "whiptail" ,
перехватывает системные сигналы, поэтому при использовании этого интерфейса
 podebconf-display-po  нельзя прервать комбинацией  "Ctrl-C" .
 
   
 СМОТРИТЕ ТАКЖЕ 

 
 debconf (1)
   
 АВТОР 

 


   Denis Barbier < barbier@linuxfr.org >

 


 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 ПРЕДОСТЕРЕЖЕНИЯ 
 СМОТРИТЕ ТАКЖЕ 
 АВТОР 
 
 
 
 
 
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