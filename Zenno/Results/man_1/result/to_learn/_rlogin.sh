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
 
 
 
 rlogin (1)   rlogin  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня )   rlogin  (1)   ( FreeBSD man: Команды и прикладные программы пользовательского уровня ) >>  rlogin  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   rlogin  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
 
 
 rlogin(1) 
 rlogin(1) 
 
 

 НАЗВАНИЕ
 rlogin  - удаленная регистрация
 
 СИНТАКСИС
 
   
        rlogin [-L] [-7] [-8] [-ex] [-l  имя_пользователя ]  имя_хоста
       
 

 ОПИСАНИЕ
 Команда  rlogin  устанавливает сеанс удаленной регистрации (remote login
session) с вашего терминала на удаленной машине  имя_хоста . 

    Файлы
 
         /etc/passwd
        /etc/hosts.equiv
                список обладающих доверием хостов с разделяемыми именами
                пользователей
     $HOME/.rhosts
                личный список комбинаций имен обладающих доверием хостов и
                имен пользователей
     /usr/lib/locale/локаль/LC_MESSAGES/uxrlogin
                файл сообщений для текущего языка
                (См. LANG в  environ(5) .)
 

 ИСПОЛЬЗОВАНИЕ
 Имена хостов перечислены в базе данных хостов, которая может
находиться в файле  /etc/hosts , на
 доменном сервере имен  Internet
(domain name server), или в обоих местах. Каждый хост имеет одно
официальное имя (первое имя в записи базы данных) и, возможно, один
или несколько псевдонимов. В качестве  имени_хоста  можно указывать
как официальное имя, так и псевдоним.
 
 Если  имя_хоста  не указано,  rlogin  использует строку, с помощью
которой он вызван, в качестве имени хоста. Это позволяет создать
 символическую связь  (symbolic link) с  /usr/bin/rlogin , в качестве имени
которой указать имя часто используемого хоста. Например,
символическую связь  $HOME/bin/marble , указывающую на
 /usr/bin/rlogin , можно вызывать как  marble  (если в переменной  PATH 
пользователя содержится  $HOME/bin ).
> 
 На каждой удаленной машине может быть файл  /etc/hosts.equiv ,
содержащий список имен хостов, обладающих доверием, с которыми
она разделяет имена пользователей. Пользователи с одним и тем же
именем на локальной и удаленной машинах могут выполнять  rlogin  с
машин, перечисленных в файле  /etc/hosts.equiv  удаленной машины, не
вводя пароль. Отдельные пользователи могут создавать аналогичный
личный список эквивалентностей в файле  .rhosts  в своих начальных
каталогах. Каждая строка в этом файле содержит два имени: имя хоста
и имя пользователя, разделенные пробелом. Запись в файле  .rhosts 
удаленного пользователя позволяет пользователю с соответствующим
именем, зарегистрировавшемуся на соответствующем хосте,
регистрироваться на удаленной машине как удаленный пользователь без
ввода пароля. Если имя локального хоста не найдено в файле
 /etc/hosts.equiv  на удаленной машине, а локальное имя пользователя и
имя хоста не найдены в файле  .rhosts  удаленного пользователя,
удаленная машина предложит ввести пароль. В файлах  /etc/hosts.equiv 
и  .rhosts  должны указываться официальные имена хостов,
содержащиеся в базе данных хостов; псевдонимы в этих файлах
использовать нельзя.
 
 Чтобы предотвратить проблемы защиты, владельцем файла  .rhosts 
должен быть удаленный пользователь или привилегированный
пользователь.
 
 Тип удаленного терминала совпадает с локальным типом
терминала (содержащимся в переменной среды  TERM ). Размер
терминала или окна также копируется на удаленную систему, если
сервер поддерживает такую возможность; изменения размера также
отображаются. Вся выдача символов выполняется на удаленной стороне,
так что (за исключением задержек) удаленная регистрация полностью
прозрачна. Управление выдачей информации с помощью  CTRL-S  и
 CTRL-Q , а также сброс ввода и вывода в случае прерываний
выполняется должным образом.
 
 Если не использованы опции  -L ,  -7  и  -8 , сохраняются локальные
установки  stty opost  и  istrip .
 
    Опции
 Программа  rlogin  воспринимает следующие опции:
 
 
 -L 
         Отключает локальную обработку выдачи
        символа tty ( stty -opost ) на время сеанса.
 
 -7
         Усекает вводимые локально символы до 7
        битов ( stty strip ).
 
 -8
         Не усекает вводимые локально символы до 7
        битов ( stty -strip ).
 
 -ec
         Указывает другой управляющий символ,  c , для
        строки, используемой для отключения от
        удаленного хоста.
 
 -l имя_пользователя
         Задает другое имя пользователя для удаленной
        регистрации. Если эта опция не задана, в
        качестве имени удаленного пользователя
        берется ваше локальное имя пользователя.
 

    Управляющие последовательности
 Введенные пользователем строки, начинающиеся с символа тильда ( ~ )
являются "управляющими последовательностями" (управляющий символ
можно изменить с помощью опции  -e ):
 
 
 ~.
         Отключиться от удаленного хоста. Учтите, что это
        не то же самое, что обычный выход, поскольку
        локальный хост просто обрывает соединение, не
        предупреждая удаленную сторону.
 
 ~!
         Запустить локальный порожденный командный
        интерпретатор.
 
 ~символ_приост
         Приостановить сеанс (только если используется
        командный интерпретатор с управлением
        заданиями).  символ_приост  - это символ
        приостановки терминала, обычно  CTRL-Z  (см.
         tty(1) ).
 

    Предупреждения
 Учтите, что если система указана в  hosts.equiv , ее защита должна быть
не хуже защиты локальной системы. Указания одной незащищенной
системы в файле  hosts.equiv  достаточно, чтобы свести на нет защиту
всей системы.
 
 Когда строка вида  имя_хоста   имя_пользователя  указана в  hosts.equiv ,
указанный пользователь может зарегистрироваться как кто угодно в
локальной системе, а затем подключаться с помощью команды
 
 
         rlogin -l  имя_пользователя   имя_хоста 
 

 где  имя_пользователя  является любым допустимым именем пользователя
в файле  passwd .
 
 Текущая реализация может использовать только сетевую службу TCP.
 
 ССЫЛКИ
 
         hosts(4) ,
         hosts.equiv(4) ,
         named(1M) ,
         rsh(1) ,
         stty(1) ,
         tty(1)
 
 
 Copyright 1994 Novell, Inc. 
Copyright 1999  В. Кравчук ,
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