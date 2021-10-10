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
 
 
 
 gtklpq (1) >>  gtklpq  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня )   gtklpq  (1)   ( Linux man: Команды и прикладные программы пользовательского уровня ) 
   
 ИМЯ 

gtklpq - средство управления очередью печати CUPS
   
 ОБЗОР 

 gtklpq  [-P|-d  принтер ] [-S  сервер ] [-p  порт ] [-D] [-V] [-U  пользователь ] [-t  интервал ] [-g  X x Y ] [-C] [-h] [-E]
 
 lpq  [-P|-d  принтер ] [-S  сервер ] [-p  порт ] [-D] [-V] [-U  пользователь ] [-t  интервал ] [-E]
 
 lprm  [-P|-d  принтер ] [-S  сервер ] [-p  порт ] [-D] [-V] [-U  пользователь ] [-E] [-] [задание(я)]
 
 reject  [-h  сервер ] [-p  порт ] [-D] [-V] [-U  пользователь ] [-E] [-r  причина ] [назначение(я)]
 
 accept  [-h  сервер ] [-p  порт ] [-D] [-V] [-U  пользователь ] [-E] [-r  причина ] [назначение(я)]
 
 disable  [-h  сервер ] [-c] [-p  порт ] [-D] [-V] [-U  пользователь ] [-E] [-r  причина ] [назначение(я)]
 
 enable  [-h  сервер ] [-p  порт ] [-D] [-V] [-U  пользователь ] [-E] [-r  причина ] [назначение(я)]
   
 ОПИСАНИЕ 

 GtkLPQ  - графическая оболочка  CUPS , (Common UNIX Printing System) - Универсальной системы печати для UNIX.
 

Эта программа предназначена для управления очередью печати CUPS.
 

 
 

 
GtkLPQ
 

Графическая оболочка
 lpq 
 

Показать очередь печати
 lprm 
 

Удалить задания
 disable/enable 
 

Остановить/запустить принтер
 reject/accept 
 

Отклонять/принимать задания для данного принтера
 

 
 GtkLPQ  входит в пакет  GtkLP .
 
   
 ПАРАМЕТРЫ 

Возможные параметры командной строки  gtklpq :
 
 -P  принтер 
 

Использовать указанный  принтер  по умолчанию.
 -d  принтер 
 

То же что "-P".
 -S  сервер 
 

Имя сервера CUPS.
 -p  порт 
 

Номер порта CUPS сервера, по умолчанию - 631.
 -D 
 

Режим отладки.
 -V 
 

Сообщить номер версии  GtkLPQ .
 -U  пользователь 
 

Имя пользователя CUPS.
 -t  интервал 
 

Интервал в секундах между проверками состояния очереди печати.
 -g  X x Y 
 

Открыть окно GtkLPQ в позиции (X,Y).
 -h 
 

Помощь
 -C 
 

Принудительно использовать терминальный режим.
 -E 
 

Принудительно использовать шифрование при соединении с сервером.
 

 
 

При вызове взамен lpq следующие параметры отличаются от параметров GtkLPQ:
 -X 
 

Использовать графический режим, даже если значение переменной GTKLP_FORCEX отлично от "1".
 

 
При вызове взамен lprm следующие параметры отличаются от параметров GtkLPQ:
 - 
 

Отменить все задания
 

 
Если задание не указано, lprm удалит текущее задание.
 

 
При вызове взамен disable следующие параметры отличаются от параметров GtkLPQ:
 -C 
 

Отменить все задания
 -r причина 
Укажите причину отмены задания
 
 

 
При вызове взамен reject следующие параметры отличаются от параметров GtkLPQ:
 -r причина 
Укажите причину отмены задания
 
   
 КАТАЛОГИ 

Чтобы скрыть принтеры от пользователей используйте следующие пути:
 

 /etc/gtklp/accept/ 
 

 /etc/gtklp/deny/ 
 

 $HOME/.gtklp/ 
 

 
Просто поместите пустой файл с именем принтера, который
должен быть доступен пользователям по умолчанию в  accept .
Поместите пустой файл с именем принтера, который
не должен быть доступен пользователям в  deny .
 

Значения  accept  могут быть перезаписаны пользователем, а 
значения  deny  - нет. 
   
 ПРИМЕЧАНИЯ 

При невозможности использования X-сервера GtkLPQ работает также как терминальный lpq. GtkLPQ может вызываться взамен lpq.
 
GtkLPQ может вызываться взамен lpq enable, disable, accept, или reject. В этом случае GtkLPQ работает в терминальном режиме и поддерживает некоторые  дополнительные параметры командной строки, описанные выше.
 
   
 ПЕРЕМЕННЫЕ 

Перечисленные ниже переменные среды оказывают влияние на работу GtkLPQ:
 
 CUPS_SERVER 
 

Сервер CUPS используемый по умолчанию.
 IPP_PORT 
 

Порт, используемый по умолчанию для соединения с сервером CUPS.
 PRINTER 
 

Принтер, используемый по умолчанию.
 GTKLP_FORCEX 
 

При значении равном "1" принудительно включается графический режим для lpr и lp.
 
   
 ОШИБКИ 

Коды ошибок GtkLPQ:
 
 0 
нормальное завершение
 

 1 
неверные параметры и т.д.
 

 2 
сервер не найден, не найден принтер по умолчанию и т.д.
 

 3 
критическая ошибка: слишком маленькие поля, слишком много принтеров и т.д.
 
   
 СМОТРИТЕ ТАКЖЕ 

 gtklp (1),  lprm (1),  lp (1), Руководство пользователя CUPS
 

 http://localhost:631/documentation.html 
   
 АВТОР 

Программа написана Тобиасом Мюллером (Tobias Mueller), 2000, 2001, 2002.
 

Распространяется на условиях GNU GENERAL PUBLIC LICENSE,
 

см. также  http://www.gnu.org. 
 
   
 КОНТАКТНЫЕ АДРЕСА 

Последняя версия  GtkLPQ  всегда доступна по адресу:
 

 http://gtklp.sourceforge.net/ 
 

 

 

С её автором можно связаться по адресу:
 

 sirtobi@stud.uni-hannover.de 
 

Пишите также, если вам просто нравится эта программа!!! ;-)
 
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 ПАРАМЕТРЫ 
 КАТАЛОГИ 
 ПРИМЕЧАНИЯ 
 ПЕРЕМЕННЫЕ 
 ОШИБКИ 
 СМОТРИТЕ ТАКЖЕ 
 АВТОР 
 КОНТАКТНЫЕ АДРЕСА 
 
 
 
 
 
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