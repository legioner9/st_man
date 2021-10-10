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
 
 
 
 ipc (5)   ipc  (2)   ( Русские man: Системные вызовы )   ipc  (2)   ( Linux man: Системные вызовы ) >>  ipc  (5)   ( Русские man: Форматы файлов )   ipc  (5)   ( Linux man: Форматы файлов ) Ключ  ipc  обнаружен в базе ключевых слов. 
   
 ИМЯ 

ipc - механизмы межпроцессного взаимодействия System V
   
 ОБЗОР 

 # include < sys/types.h > 
 # include < sys/ipc.h > 
 # include < sys/msg.h > 
 # include < sys/sem.h > 
 # include < sys/shm.h > 
   
 ОПИСАНИЕ 

Данная страница руководства описывает реализацию механизмов межпроцессного
взаимодействия System V для Linux:
очереди сообщений, списки семафоров и сегменты разделяемой памяти.
Далее, слово
 ресурс 

означает сущность, созданную в результате работы одного из этих
механизмов.
   
 Права доступа к ресурсу 

Для каждого ресурса система использует обобщенную структуру типа
 struct ipc_perm 

для хранения информации, которая необходима для определения прав
на выполнение какой-либо операции ipc.
Структура
 ipc_perm 

определяется в заголовочном файле
 < sys/ipc.h > 

и содержит следующие поля:
 
         ushort cuid;     

/* идентификатор пользователя, создавшего ресурс */
 

         ushort cgid;     

/* идентификатор группы, создавшей ресурс */
 

         ushort uid; 

/* идентификатор владельца */
 

         ushort gid; 

/* идентификатор группы */
 

         ushort mode; 

/* права на чтение/запись */
 

В поле
 mode 

структуры
 ipc_perm 

рабочими являются младшие 9 битов и представляют собой права доступа к
ресурсу для процесса, сделавшего ipc вызов.
Права интерпретируются так:
 
         0400    Чтение для пользователя
        0200    Запись для пользователя

        0040    Чтение для группы
        0020    Запись для группы

        0004    Чтение для других
        0002    Запись для других
 

 

Биты 0100, 0010 и 0001 (биты выполнения) системой не используются.
Кроме того
"запись"
для списка семафоров фактически означает
"изменение".
 

В том же заголовочном файле также определяются следующие символьные
константы:
 
 IPC_CREAT 

 
Создать запись, если ключ не существует.
 IPC_EXCL 

 
Ошибка, если ключ существует.
 IPC_NOWAIT 

 
Ошибка, если запрос должен ждать.
 IPC_PRIVATE 

 
Личный ключ.
 IPC_RMID 

 
Удалить ресурс.
 IPC_SET 

 
Установить опции ресурса.
 IPC_STAT 

 
Получить опции ресурса.
 
 

Заметим, что
 IPC_PRIVATE 

имеет тип
 key_t ,

в то время как все остальные символьные константы являются полями-флагами,
для которых может выполняться операция логического сложения в переменную типа
 int. 

   
 Очереди Сообщений 

Очередь сообщений идентифицируется уникальным положительным целым числом
( msqid ),

связанным со структурой данных типа
 struct msqid_ds ,

которая определяется в заголовочном файле
 < sys/msg.h > ,

и которая содержит следующие поля:
 
         struct ipc_perm msg_perm; 

 

         ushort msg_qnum;         

/* количество сообщений в очереди */
 

         ushort msg_qbytes;       

/* максимальное количество байт в очереди */
 

         ushort msg_lspid;        

/* pid, идентификатор процесса, выполнившего последний вызов msgsnd */
 

         ushort msg_lrpid;        

/* pid, идентификатор процесса, выполнившего последний вызов msgrcv */
 

         time_t msg_stime;        

/* время последнего вызова msgsnd */
 

         time_t msg_rtime;        

/* время последнего вызова msgrcv */
 

         time_t msg_ctime;        

/* время последнего изменения */
 
 msg_perm 

 
Структура
 ipc_perm 

задает права доступа к очереди сообщения.
 msg_qnum 

 
Количество сообщений, которые в данный момент находятся в очереди.
 msg_qbytes 

 
Максимальное количество байтов текста сообщения, которое допускается
в очереди.
 msg_lspid 

 
Идентификатор процесса, который выполнил последний
системный вызов
 msgsnd .

 msg_lrpid 

 
Идентификатор процесса, который выполнил последний
системный вызов
 msgrcv .

 msg_stime 

 
Время, когда был выполнен последний системный вызов
 msgsnd .

 msg_rtime 

 
Время, когда был выполнен последний системный вызов
 msgcv .

 msg_ctime 

 
Время, когда был выполнен последний системный вызов,
который изменил в структуре поле
 msqid_ds .

 
   
 Списки семафоров 

Список семафоров идентифицируется уникальным положительным целым
числом
( semid ),

связанным со структурой данных типа
 struct semid_ds ,

которая определяется в заголовочном файле
 < sys/sem.h > 

и которая содержит следующие поля:
 
         struct ipc_perm sem_perm; 

 

         time_t sem_otime;        

/* время последней операции */
 

         time_t sem_ctime;        

/* время последнего изменения */
 

         ushort sem_nsems;        

/* количество семафоров в списке */
 
 sem_perm 

 
Структура
 ipc_perm ,

которая задает права доступа к списку семафоров.
 sem_otime 

 
Время последнего системного вызова
 semop .

 sem_ctime 

 
Время последнего системного вызова
 semctl ,

который изменяет значение какого-либо из полей структуры или один
из семафоров в списке.
 sem_nsems 

 
Количество семафоров в списке.
Семафоры в списке нумеруются положительными целыми числами от нуля до
 sem_nsems-1 .

 
 

Семафор -- это структура данных типа
 struct sem ,

которая содержит следующие поля:
 
         ushort semval;   

/* значение семафора */
 

         short sempid;    

/* pid последней операции */
 

         ushort semncnt;  

/* Количество ожидающих увеличения semval */
 

         ushort semzcnt;  

/* Количество ожидающих установки semval в нуль */
 
 semval 

 
Значение семафора: неотрицательное целое число.
 sempid 

 
Идентификатор последнего процесса, который работал с данным семафором.
 semncnt 

 
Количество процессов, приостановленных в ожидании увеличения
 semval .

 semznt 

 
Количество процессов, приостановленных в ожидании установки значения
 semval 

в нуль.
 
   
 Сегменты Разделяемой Памяти 

Сегмент разделяемой памяти идентифицируется уникальным положительным
целым числом
( shmid ),

которое связано со структурой данных типа
 struct shmid_ds ,

которая определяется в заголовочном файле
 < sys/shm.h > 

и которая содержит следующие поля:
 
         struct ipc_perm shm_perm; 

 

         int shm_segsz;   

/* размер сегмента */
 

         ushort shm_cpid;         

/* pid создателя */
 

         ushort shm_lpid;         

/* pid последней операции */
 

         short shm_nattch;        

/* Количество подключенных в данный момент */
 

         time_t shm_atime;        

/* время последнего подключения */
 

         time_t shm_dtime;        

/* время последнего отключения */
 

         time_t shm_ctime;        

/* время последнего изменения */
 
 shm_perm 

 
Структура
 ipc_perm ,

которая задает права доступа к разделяемому сегменту памяти.
 shm_segsz 

 
Размер разделяемого сегмента памяти в байтах.
 shm_cpid 

 
Идентификатор процесса, который создал разделяемый сегмент памяти.
 shm_lpid 

 
Идентификатор последнего процесса, который делал системные вызовы
 shmat 

или
 shmdt .

 shm_nattch 

 
Количество процессов, которые в данный момент подключены к данному
разделяемому сегменту памяти.
 shm_atime 

 
Время последнего системного вызова
 shmat .

 shm_dtime 

 
Время последнего системного вызова
 shmdt .

 shm_ctime 

 
Время последнего системного вызова
 shmctl ,

который изменил
 shmid_ds .

 
   
 СМОТРИ ТАКЖЕ 

 ftok (3),

 msgctl (2),

 msgget (2),

 msgrcv (2),

 msgsnd (2),

 semctl (2),

 semget (2),

 semop (2),

 shmat (2),

 shmctl (2),

 shmget (2),

 shmdt (2)

   
 ПЕРЕВОД 

Перевёл с английского Виктор Вислобоков < corochoone@perm.ru > 2004
 

 
   Index 
 
 ИМЯ 
 ОБЗОР 
 ОПИСАНИЕ 
 
 Права доступа к ресурсу 
 Очереди Сообщений 
 Списки семафоров 
 Сегменты Разделяемой Памяти 
 
 СМОТРИ ТАКЖЕ 
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