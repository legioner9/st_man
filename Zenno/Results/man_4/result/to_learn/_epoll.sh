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
 
 
 
 epoll (4) >>  epoll  (4)   ( Русские man: Специальные файлы /dev/* )   epoll  (4)   ( Linux man: Специальные файлы /dev/* )   epoll  (7)   ( Linux man: Макропакеты и соглашения ) 
   
 НАЗВАНИЕ 

epoll - фабрика уведомлений о событиях ввода/вывода
   
 СИНТАКСИС 

 #include < sys/epoll.h > 

   
 ОПИСАНИЕ 

 epoll 

является вариантом
 poll (2),

используемой либо как Edge, либо как Level Triggered интерфейс и хорошо
масштабируемой для больших номеров наблюдаемых fds. Для настройки и управления 
 epoll 

предлагаются три системных вызова:
 epoll_create (2),

 epoll_ctl (2),

 epoll_wait (2).

 
 epoll 

подключается к описателю файла, созданного
 epoll_create (2).

Интерес к соответствующим описателям файлов затем регистрируется через
 epoll_ctl (2).

Наконец, фактическое ожидание запускается
 epoll_wait (2).

 
   
 ЗАМЕЧАНИЯ 

Интерфейс распределения событий
 epoll 

имеет два типа поведения: Edge Triggered (ET) и Level Triggered (LT).
Разница между механизмами распределения событий ET и LT может быть
описана так. Предположим, что реализован следующий сценарий событий:
 
 1 

 
Описатель файла, представляющий считывающую сторону при перенаправлении (
 RFD 

) добавляется внутрь устройства
 epoll .

 2 

 
Перенаправление записывает 2Кб данных на записываемую сторону.
 3 

 
Вызов к
 epoll_wait (2)

закончен, при этом возвращается
 RFD 

как готовый описатель файла.
 4 

 
Перенаправление считывает 1Кб данных с
 RFD .

 5 

 
Вызов к
 epoll_wait (2)

закончен.
 
 

 
Если описатель файла
 RFD 

добавлен к интерфейсу
 epoll ,

используя флаг
 EPOLLET ,

то вызов к
 epoll_wait (2),

законченный на шаге
 5 ,

повиснет из-за возможных данных, все еще находящихся в буфере ввода.
Причиной этого является то, что Edge Triggered доставляет события
только если статус отслеживаемого устройства изменяеся с
недоступного пространства ввода/вывода ( состояние
 0 )

на доступное пространство ввода/вывода ( состояние
 1 ).

В приведенном выше примере событие на
 RFD 

будет сгенерировано ( предполагая, что считывающий буфер перенаправления был
до этого пуст ) из-за записи, сделанной в 
 2 ,

и события, предполагаемого в 
 3 .

Так-как операция чтения, сделанная в
 4 ,

не предполагает полного буфера данных ( то есть условие наличия
остатка доступного пространства ввода/вывода )that is, the condition
remains I/O space available ) и передача
 0 

->
 1 

не может случиться в
 5 .

Интерфейс
 epoll 

при использовании с флагом
 EPOLLET 

( Edge Triggered )
должно использовать неблокированные описатели файлов для избежания
блокировок чтения или записи для задания, обрабатывающего
множество описателей файлов. Предлагается использовать далее
 epoll ,

как интерфейс Edge Triggered (
 EPOLLET )

и возможные методы обхода проблем.

 
 i 

 
неблокированные описатели файлов
 ii 

 
начинать ожидать события только после того, как
 read (2)

или
 write (2)

возвратят EAGAIN

 
 

Напротив, при использовании интерфейса Level Triggered,
 epoll 

по всем показателям лучше и быстрее
 poll (2),

и может быть использован в любом случае, так как разделяет
ту же семантику.
 
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 
При использовании
 epoll 

с интерфейсом Level Triggered имеет ту же семантику
 poll (2),

а Edge Triggered требует больше четкости для избежания зависаний
в циклических приложениях. В этом примере слушающим является
не блокированный сокет, для которого было вызвано
 listen (2).

Функция do_use_fd() использует новые готовые описатели файлов
до тех пор, пока не возвратится EAGAIN от другого
 read (2)

или
 write (2).

Машина приложения, с переданным статусом события, должна плсде получения
EAGAIN записать свое текущее состояние так, чтобы последующий вызов do_use_fd()
продолжил
 read (2)

или
 write (2)

с места остановки.  
 
 struct epoll_event ev, *events;

for(;;) {
    nfds = epoll_wait(kdpfd, events, maxevents, -1);

    for(n = 0; n < nfds; ++n) {
        if(events[n].data.fd == listener) {
            client = accept(listener, (struct sockaddr *) &local,
                            &addrlen);
            if(client < 0){
                perror("accept");
                continue;
            }
            setnonblocking(client);
            ev.events = EPOLLIN | EPOLLET;
            ev.data.fd = client;
            if (epoll_ctl(kdpfd, EPOLL_CTL_ADD, client, &ev) < 0) {
                fprintf(stderr, "epoll set insertion error: fd=%d,
                        client);
                return -1;
            }
        }
        else
            do_use_fd(events[n].data.fd);
    }
}
 

 
При использовании в виде интерфейса Edge Triggered для качества работы
возможно добавлять описатель файла внутрь интерфейса epoll (
 EPOLL_CTL_ADD ),

указывая  (
 EPOLLIN | EPOLLOUT ).

Это позволит вам избежать постоянного переключения между
 EPOLLIN 

и
 EPOLLOUT 

вызывающими
 epoll_ctl (2)

и
 EPOLL_CTL_MOD .

 
   
 ВОПРОСЫ И ОТВЕТЫ (из linux-kernel) 

 

 
 Q1  

 
Что случится, если вы добавите один fd в epoll_set дважды?
 A1  

 
Вероятно, вы получите EEXIST. However, it is possible that two
threads may add the same fd twice. This is a harmless condition.
 Q2  

 
Могут ли два набора
 epoll 

ожидать один fd? Если так, то сообщают ли события в оба набора
 epoll 

fds?
 A2 

 
Да. Однако, это не рекомендуется. Да, будет сообщено в оба.
 Q3 

 
Может ли
 epoll 

fd само по себе выбрать poll/epoll?
 A3 

 
Да.
 Q4  

 
Что случается, если
 epoll 

fd помещается в свой собственный набор fd?
 A4 

 
Произойдет ошибка. Однако, можно добавлять
 epoll 

fd внутрь другого набора epoll fd. 
 Q5 

 
Могу я отправить
 epoll 

fd через сокет unix на другой процесс?
 A5 

 
Нет.
 Q6 

 
Будет ли закрытие fd приводить к его автоматическому удалению из всех наборов
 epoll ?

 A6 

 
Да.
 Q7  

 
Если более одного события придут между вызовами
 epoll_wait (2),

то они будут скомбинированы или будут сообщены отдельно?
 A7 

 
Они будут скомбинированы.
 Q8 

 
Влияет ли операция на fd на уже собранные, но пока еще не сообщенные события?
 A8 

 
Можно выполнять две операции на существующем fd. Удаление в этом случае
бессмысленно. Изменение приведет к повторному чтению всего доступного ввода/вывода.
 Q9 

 
Должен ли я постоянно читать/записывать fd до получения EAGAIN при использовании флага
 EPOLLET 

( поведение Edge Triggered ) ?
 A9 

 
Нет, не должны. Получение события от
 epoll_wait (2)

должно сообщить вам, что такой описатель файла готов для запрошенной операции
ввода/вывода. Вы должны просто предположить, что он готов, пока вы не получите
следующий EAGAIN. Когда и как вы будете использовать описатель файла - полностью
зависит от вас. Также условия, при которых чтение/запись пространства ввода/вывода
закончилось, могут быть определены через проверки количества считанных/записанных
данных из/в описатель файла. Например, если вы вызвали
 read (2)

запросом на чтение определенного количества данных и
 read (2)

возвращает меньшее количество байтов, то можно быть уверенным, что вы истратили
пространство чтения ввода/вывода для этого описателя файла. То же самое справедливо
для записи через функцию
 write (2).


 
 
   
 ВОЗМОЖНЫЕ ЛОВУШКИ И МЕТОДЫ ИХ ОБХОДА 


 
 o Ложное срабатывание ( Edge Triggered ) 

 
 
 

Возможно, что во время чтения (предположим, что вы читаете в цикле ожидания EAGAIN),
больше вводов/выводов пришло на второе событие. Этот ввод/вывод будет считан
немедленно. Однако, в следующий раз, когда вы вызовете
 epoll_wait (2)

на этот fd, вам сообщится, что уже есть готовое событие,
хотя ввод/вывод для него уже был сделан.
 

 
 1 

 
Некоторое количество данныз приходит на просматриваемый описатель файла.
 2 

 
Вызов
 epoll_wait (2)

возвращается с указанным выше описателем файла.
 3 

 
Другой кусок данных приходит на тот же описатель файла.
 4 

 
Описатель файла внутренне сигнализирует о готовности.
 5 

 
Вызов
 read (2)

расходует все доступные данные.
 6 

 
Другой вызов
 epoll_wait (2)

возвратит указанный выше описатель файла, даже если данные недоступны,
тем самым приводя следующий вызов
 read (2)

к возврату EAGAIN.
 
 

 

В случае с неблокированными описателями файлов это приведет к тому, что
следуюющий вызов чтения немедленно возвратит EAGAIN. В случае блокировки
описателей файлов вы зависните, ожидая чтения ввода/вывода, которого нет.
Автор не рекомендует использовать блокировку описателей файлов вместе с
поведением Edge Triggered, но и останавливать вас тоже не будет.
 

 

Одним из методов решения этой ситуации является пометка описателей файлов
как "готовых" в ассоциированной структуре данных после получения первого события,
а затем игнорирование других событий, пока он в состоянии "готов".
Когда вы читаете до получения EAGAIN, уберите флаг "готов" перед вызовом
 epoll_wait (2)

снова на этом fd.
 

 
 o Недостаток ( Edge Triggered ) 

 
 
 

Если существует большое пространство ввода/вывода, то возможно, что при
попытке его очистки другие файлы не будут обрабатываться, привода к
недостатку данных. Этого обычно не происходит с
 epoll .

 

 

Решением будет поддержка списка готовности и помечение "готовых" описателей
файлов в ассоциированной структуре данных, тем самым позволяя приложению
запоминать файлы, требуемые для обработки, но все еще не обработанных
среди уже "готовых" файлов. Это также поддерживает игнорирование
последующих событий, получаемых вами для fd, которые уже "готовы".
 

 
 
 o Если использовать кэш событий... 

 
 
 

Если вы используете кэш событий или храните все fd, возвращенные от
 epoll_wait (2),

то убедитесь, что вы обеспечите способ его динамического закрытия
(например - после обработки предыдущего события). Предположим, что вы
получите 100 событий от
 epoll_wait (2),

и что в событии #47 некоторое условие определяет, что событие #13 должно быть закрыто.
Если вы уберете структуру и закроете close() fd для события #13, то ваш кэш событий
все еще может сообщать о том, что есть ожидаемые события, непонятные для этого fd.
 

 

Одним из решений будет вызов во время обработки события 47
 epoll_ctl ( EPOLL_CTL_DEL )

для удаления fd 13 и close(), а затем отметки его ассоциированной структуры данных
как удаленной и связки его со списком очистки. Если найдется другое событие для fd 13
по работе, то ему сообщится, что fd уже было удалено и конфликтов не будет.
 

 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

 epoll (4)

является новым API, представленном в ядре Linux 2.5.44.
Его интерфейс должен окончательно определиться к Linux 2.5.66.
   
 СМ. ТАКЖЕ 

 epoll_ctl (2),

 epoll_create (2),

 epoll_wait (2)

 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЯ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
 ВОПРОСЫ И ОТВЕТЫ (из linux-kernel) 
 ВОЗМОЖНЫЕ ЛОВУШКИ И МЕТОДЫ ИХ ОБХОДА 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 СМ. ТАКЖЕ 
 
 
 
 
 
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