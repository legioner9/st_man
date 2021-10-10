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
 
 
 
 group (4)   group  (4)   ( Solaris man: Специальные файлы /dev/* ) >>  group  (4)   ( Русские man: Специальные файлы /dev/* )   group  (5)   ( FreeBSD man: Форматы файлов )   group  (5)   ( Русские man: Форматы файлов )   group  (5)   ( Linux man: Форматы файлов ) Ключ  group  обнаружен в базе ключевых слов. 
 
 
 Форматы файлов 
 group(4) 
 
 

 НАЗВАНИЕ 
 group  - файл с информацией о группах 

 ОПИСАНИЕ 
 Файл  group  - локальный источник информации о группах. Файл  group 
может использоваться совместно с другими источниками информации о группах,
включая NIS-карты  group.byname  и  group.bygid , а также таблицу
групп NIS+. Программы используют процедуры  getgrnam(3C) 
для получения этой информации. 

 Файл  group  содержит по одной строке следующего вида для каждой группы в 
системе: 

 
имя_группы:пароль:gid:список_пользователей
 

 где 

 
 имя_группы 
Имя соответствующей группы.
 
 gid 
Уникальный числовой идентификатор группы ( GID ) в системе.
 
 список_пользователей 
Список пользователей, входящих в группу, через запятую.
 
 

 Максимальное значение поля  gid  - 2137483647. Для большей переносимости
и совместимости, администраторам рекомендуется, по возможности, назначать 
группам идентфикаторы со значениями до 60000. 

 Если поле  пароль  - пустое, пароль не запрашивается. При идентификации 
и аутентификации пользователя, список дополнительных групп строится последовательно на основе
информации из этого файла. Если пользователь входит в большее количество групп,
чем сконфигурировано для системы , { NGROUPS_MAX }, будет выдано предупреждение
и последующие спецификации будут проигнорированы. 

 Неверно сформированные записи приводят к остановке процедур, читающих этот файл,
и дальнейшее формирование списков групп прекращается. Для предотвращения этого
периодически используйте утилиту  grpck(1B) ,
проверяющую базу данных  /etc/group . 

 В прежних версиях запись о группе, начинающаяся символом  +  (знак плюс)
или  -  (знак минус), использовалась для избирательного включения
записей групп из NIS-карт. Если это по-прежнему необходимо, то надо добавить
 group:compat  в файл  nsswitch.conf(4) .
Источник " compat " в следующих версиях может не поддерживаться.
Предпочтительнее указать источники " files " и затем "nisplus".
В результате, все содержимое таблицы групп NIS+ включается после файла  group . 

 ПРИМЕРЫ 

    Пример 1: Фрагмент файла group. 

 Вот фрагмент файла  group : 

 
root::0:root 
stooges:q.mJzTnu8icF.:10:larry,moe,curly
 

 и пример записи  group  из файла  nsswitch.conf : 

 
group: files nisplus
 

 При наличии этих записей в группу  stooges  будут входить пользователи
 larry ,  moe  и  curly , а все группы, перечисленные в таблице 
групп NIS+, включаются после записи для группы  stooges . .

 Если бы файл  group  имел следующий вид: 

 
root::0:root 
stooges:q.mJzTnu8icF.:10:larry,moe,curly 
+:
 

 а запись  group  в файле  nsswitch.conf  была такой: 

 
group: compat
 

 все группы, перечисленные в картах NIS  group.bygid  и
 group.byname , были бы включены после записи для группы  stooges . 

 ССЫЛКИ 
 
 groups(1) ,
 grpck(1B) , 
 newgrp(1) , 
 getgrnam(3C) ,
 initgroups(3C) , 
 nsswitch.conf(4) , 
 unistd(3HEAD) 
 
System Administration Guide, Volume 1
 

 Последнее изменение: 14 мая 1998 года 

 
Copyleft (no c) - Fuck copyright!, 2003  В. Кравчук ,
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