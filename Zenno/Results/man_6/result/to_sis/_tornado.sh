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
 
 
 
 tornado (6) >>  tornado  (6)   ( Русские man: Игры ) 
   
 НАЗВАНИЕ 

 tornado 

- клон одноимённой игры с C64.
   
 УПОТРЕБЛЕНИЕ 

 tornado [--connect IP|--demo|--help|--server|--version] 

   
 ОПИСАНИЕ 

Цель игры
 Торнадо 

-- разрушить дом вашего противника при помощи 5-ти стихий: дождь, град,
снег, молния и торнадо. 

Для начала игры, противники вводят свои имена. Если оставить поле ввода
свободным, играть будет компьютер. На поле стоят ваши дома, отмеченные
именами игроков, а над ними парит грозная тучка. Звёздочка
 * 

у имени игрока указывает, кому наносить разрушения.

Меню в центре экрана позволяет выбрать коварную стихию. В следующем
окне нужно ввести желаемую поправку на ветер. Значение текущей
 скорости ветра 

указано в середине нижней строки. Если подставить значение прицела
 2 

при скорости ветра
 -2 

, например, то ваши дождь/град/снег/торнадо обрушатся из тучки
вертикально вниз. Поскольку стихия вырывается случайным образом
(из левой или правой части тучки), то прицелиться бывает не так просто,
как это может показаться на первый взгляд.

При попадании в дом противника (или свой собственный), значение
счётчика процентов будет уменьшаться, в зависимости от причинённых
повреждений до
 0% 

-- игрок проиграл.

Используемые в игре клавиши:
 
 s  выбрать снег 

 
Снег -- это оружие защиты. Он покрывает дом слоем, который можно потом
смыть только дождём. Молния и торнадо не дадут эффекта.
 r  выбрать дождь 

 
Разрушает один слой дома. Так же используется для размывания снега.
 h  выбрать град 

 
Разрушает два слоя дома, и в то же время не может пробить снежный покров.
 l  выбрать молнию 

 
Может разрезать дом пополам. Не зависит от скорости ветра.
 t  выбрать торнадо 

 
Не столь эффективно, как молния, но хорошо справляется с фундаментом дома.
 q  выйти из игры 

 
 o  Показать галерею славы 

 
 c  Показать количество набранных очков 

 
 
   
 ОПЦИИ 

Можно запускать игру со следующими опциями:

 --connect IP, 

игра подключится к серверу на указанном хосте (IP или hostname);

 --demo, 

запуск в режиме демонстрации;

 --get-players, 

получить список игроков, подключённых в данный момент к сайту Торнадо.
Это выведет на экран небольшую таблицу со списком игроков и их IP адреса;

 --help, 

небольшой экран помощи;

 --login, 

подключиться к странице игроков в интернете. Это передаст ваше имя и IP адрес
скрипту на сайте игры. Ваше имя появится в списке в сети, после чего некто
запустивший торнадо с --get-players сможет играть и с вами;

 --server, 

запустить игру в режиме сервера и ожидать подключения клиента;

 --version, 

показать версию и выйти...
   
 ФАЙЛЫ 

 /usr/bin/tornado
/usr/man/man6/tornado.6
/var/games/tornado.scores
 

   
 ПРИМЕЧАНИЕ 

При работе в сетевом режиме, должны быть одинаковые версии игры, как с
клиентской, так и с серверной стороны.
Программы разных версий запустятся, но могут рухнуть в любой момент.
   
 ОШИБКИ 

Разрушение собственного дома так же добавит очков. :^)
   
 АВТОРЫ 

 Oliver Feiler < kiza@kcore.de >
 

 

 
   Index 
 
 НАЗВАНИЕ 
 УПОТРЕБЛЕНИЕ 
 ОПИСАНИЕ 
 ОПЦИИ 
 ФАЙЛЫ 
 ПРИМЕЧАНИЕ 
 ОШИБКИ 
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