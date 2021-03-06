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
 
 
 
 tc-pfifo_fast (8) >>  tc-pfifo_fast  (8)   ( Русские man: Команды системного администрирования )   tc-pfifo_fast  (8)   ( Linux man: Команды системного администрирования ) 
   
 ИМЯ 

pfifo_fast - очередь FIFO с тремя полосами
 
   
 ОПИСАНИЕ 

pfifo_fast является очередью по умолчанию для каждого интерфейса.
 
Когда создается интерфейс, ему автоматически назначается очередь pfifo_fast. При
назначении другой очереди очередь pfifo_fast выгружается.
 
   
 АЛГОРИТМ 

Алгоритм очень похож на безклассовую очередь 
 tc-prio (8) . 

 pfifo_fast 

напоминает три очереди (полосы) 
 tc-pfifo (8)

пакеты по которым ставятся в очередь в зависимости от типа услуги (TOS) или заданного приоритета.
 
Не все три полосы освобождаются одновременно: пока нижние полосы имеют трафик, 
верхние каналы не будут освобождаться. Это используется для повышения приоритета 
интерактивного трафика или задержки трафика с "низкой стоимостью".
 
Каждая полоса вмещает txqueuelen пакетов, что может быть изменено через 
 ifconfig (8)

или 
 ip (8).

Пакеты, которые не помещаются в очередь, отбрасываются.
 
См. 
 tc-prio (8)

для сведений о том, как биты TOS позволяют разделять трафик по каналам.
   
 ПАРАМЕТРЫ 

 
 txqueuelen 
длина трёх полос, зависящая от параметра интерфейса txqueuelen, указанного через
 ifconfig (8)

или
 ip (8).

 
 
   
 ОШИБКИ 

Очередь не поддерживает статистику и не показывается в списке очередей поскольку является очередью по умолчанию. 
 
   
 СМ. ТАКЖЕ 

 tc (8)

 
   
 АВТОРЫ 

Алексей Кузнецов < kuznet@ms2.inr.ac.ru >.
man-страница сопровождается Бертом Хубертом (Bert Hubert) < ahu@ds9a.nl >
 
   
 ПЕРЕВОД 

Андрей Черепанов < cas@altlinux.ru > 2007
 
 
 

 
   Index 
 
 ИМЯ 
 ОПИСАНИЕ 
 АЛГОРИТМ 
 ПАРАМЕТРЫ 
 ОШИБКИ 
 СМ. ТАКЖЕ 
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