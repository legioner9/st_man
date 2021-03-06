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
 
 
 
 shm_open (3)   shm_open  (3)   ( Solaris man: Библиотечные вызовы )   shm_open  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  shm_open  (3)   ( Русские man: Библиотечные вызовы )   shm_open  (3)   ( Linux man: Библиотечные вызовы )   shm_open  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

shm_open, shm_unlink - создает/открывает или снимает объекты разделяемой памяти POSIX
   
 СИНТАКСИС 

 #include < sys/types.h > 

 

 #include < sys/mman.h > 

 
 int shm_open(const char * name , int  oflag , mode_t  mode ); 

 
 int shm_unlink(const char * name ); 

   
 ОПИСАНИЕ 

 shm_open 

создает и открывает новый (или открывает уже существующий) объект
разделяемой памяти POSIX. Объект разделяемой памяти POSIX - это
обработчик, используемый несвязанными процессами для исполнения
 mmap (2)

на одну область разделяемой памяти.
Функция
 shm_unlink 

выполняет обратную операцию, удаляя объект,
предварительно созданный с помощью
 shm_open .

 

Операция
 shm_open 

аналогична
 open (2).

 name 

определяет собственно создаваемый объект разделяемой памяти для создания
или открытия. Для использования в портируемых программах
 name 

должно иметь в начале косую черту (/) и больше не содержать их внутри имени.



 

 oflag 

является маской битов, созданной через логическое сложение OR
одного из флагов
 O_RDONLY  

или
 O_RWDR 

и любых других флагов, перечисленных далее:
 
 O_RDONLY 

 
Открыть объект для чтения.
Объект разделяемой памяти, открытый таким образом,
может быть обработан
 mmap (2)

только для чтения ( PROT_READ ).
 O_RDWR 

 
Открывает объект для чтения и записи.
 O_CREAT 

 
Создает объект разделяемой памяти, если он еще не существует.
Владелец и группа объекта устанавливаются как для
 open (2),

а биты прав объекта устанавливаются в соответствии с 9 битами
 mode 

младшего порядка, за исключением того, что эти биты, установленные
во время обработки маски создания режимов файла (см.
 umask (2))

очищаются у новых объектов.
(Набор макро-констант, используемых для определения режима
 mode 

перечислен в
 open (2).)

 
Новый объект разделяемой памяти изначально имеет нулевую длину,
размер объекта можно установить, используя
 ftruncate (2).

(Новые, только что распределенные байты объекта разделяемой памяти
автоматически инициализируются в 0.)
 O_EXCL 

 
Если также было указано
 O_CREAT 

и объект разделяемой памяти с заданным
 name  

уже существует, то возвращается ошибка.
Проверка наличия объекта и его создание (если он не существует)
исполняется автоматически.
 O_TRUNC 

 
Если объект разделяемой памяти уже существует, то обрезать его до 0 байтов.
 
 

При успешном выполнении
 shm_open 

возвращает новый описатель файла, ссылающийся на объект разделяемой памяти.
Этот описатель файла гарантированно будет описателем файла с самым
маленьким номером (не среди предварительно открытых) внутри процесса.
Флаг
 FD_CLOEXEC 

(см.
 fcntl (2))

устанавливается для описателя файла.
 
Описатель файла обычно используется в последовательных вызовах
 ftruncate (2)

(для вновь созданных объектов) и
 mmap (2).

После вызова к
 mmap (2)

описатель файла может быть закрыт без влияния на распределение памяти.
 
Операции
 shm_unlink 

аналогичны
 unlink (2):

удаляется имя объекта разделяемой памяти и, как только все процессы
завершили работу с объектом и отменили его распределение, очищают
пространство и уничтожают связанную с ним область памяти.
После успешного выполнения
 shm_unlink ,

попытка исполнить
 shm_open  

для объекта с тем же именем
 name 

выдаст ошибку (если только не было указано
 O_CREAT ,

в этом случае создается новый, уже другой объект).
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

При нормальном завершении работы
 shm_open 

возвращает неотрицательный описатель файла. При ошибках
 shm_open 

возвращает -1.
 shm_unlink 

возвращает 0 при нормальном завершении работы и -1 при ошибках.
   
 НАЙДЕННЫЕ ОШИБКИ 

При ошибках
 errno 

определяется для показа причины ошибки. Значения
 errno 

могут быть такими:
 
 EACCES 

 
Отказ в доступе для
 shm_open 

 name 

в указанном режиме
 mode ,

или было указано
 O_TRUNC 

а вызывающий не имеет права на запись для объекта.
 EACCES 

 
Отказ в доступе при исполнении
 shm_unlink 

для объекта разделяемой памяти.
 EEXIST 

 
И
 O_CREAT 

и
 O_EXCL  

определены для
 shm_open 

а объект разделяемой памяти, определенный
 name ,

уже существует.
 EINVAL 

 
Аргумент
 name 

для
 shm_open 

некорректен.
 EMFILE 

 
Процесс уже достиг максимального количества открытых файлов.
 ENAMETOOLONG 

 
Длина
 name 

превышает
 PATH_MAX .

 ENFILE 

 
Достигнуто ограничение общего числа открытых в системе файлов.
 ENOENT 

 
Была сделана попытка исполнить
 shm_open 

для несуществующего
 name  

и при этом
 O_CREAT 

не было определено.
 ENOENT 

 
Была сделана попытка исполнить
 shm_unlink 

для несуществующего
 name .

 
 
   
 ЗАМЕЧАНИЯ 

Эти функции присутствуют в glibc 2.2 и более новых. Программы, использующие
эти функции, должны указывать флаг
 -lrt 

для
 cc 

для привязки к требуемым библиотекам режима реального времени.
 

POSIX оставляет неопределенным поведение при комбинации
 O_RDONLY 

и
 O_TRUNC .

В Linux при ней нормально обрежется существующих объект разделяемой памяти,
но так может не случиться в других клонах.
 

Реализация объекта разделяемой памяти POSIX в Linux 2.4
использует выделенную файловую систему, обычно подключенную в
 /dev/shm .

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

POSIX 1003.1 (2001).
   
 СМ. ТАКЖЕ 

 mmap (2),

 open (2),

 close (2),

 ftruncate (2),

 fstat (2),

 fchown (2),

 fchmod (2),

 umask (2),

 fcntl (2)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 ЗАМЕЧАНИЯ 
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