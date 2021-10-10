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
 
 
 
 xdr (3)   xdr  (3)   ( Solaris man: Библиотечные вызовы )   xdr  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  xdr  (3)   ( Русские man: Библиотечные вызовы )   xdr  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

xdr - библиотеки программ для внешнего представления данных
   
 СИНТАКСИС И ОПИСАНИЯ 

 

Эти программы позволяют программистам C описывать произвольные 
структуры данных машинонезависимым способом. Данные дистанционным
вызовам процедур передаются через эти программы.
 

 
 
xdr_array(xdrs, arrp, sizep, maxsize, elsize, elproc)
 XDR  *xdrs;
char **arrp;
u_int *sizep, maxsize, elsize;
xdrproc_t elproc;
 


 
 
Данная программа является фильтром-примитивом, который способствует
переходу длин переменных массива в их внешнее представление (и
наоборот). Параметр
 arrp 

является адресом указателя на массив, а 
 sizep 

является адресом счетчика элементов в массиве; этот элемент не может
превышать параметр
 maxsize .

Параметр
 elsize 

является
 sizeof 

каждого из элементов массива, а
 elproc 

является фильтром
 XDR, 
который преобразовывает данные С-формы элементов массива в их внешнее
представление (и наоборот). Программа возвращает 1 при успешном
завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_bool(xdrs, bp)
 XDR  *xdrs;
bool_t *bp;
 


 
 
Данная программа является фильтром-примитивом, который способствует
переходу логических переменных (целочисленных в С) в их  внешнее
представление (и наоборот). Перекодируя данные, этот фильтр выдает либо
единицу, либо ноль. Программа возвращает 1 при успешном завершении
работы, иначе возвращает 0.
 


 
 

 
 
xdr_bytes(xdrs, sp, sizep, maxsize)
 XDR  *xdrs;
char **sp;
u_int *sizep, maxsize;
 


 
 
Данная программа является фильтром-примитивом, который обеспечивает
переход конечных байтовых строк в их внешнее представление и наоборот.
Параметр
 sp 

является адресом указателя строки. Длина строки расположена по адресу
 sizep ;

длина строк не может быть больше, чем
 maxsize .

Программа возвращает 1 при успешном завершении работы, иначе
возвращается 0.
 


 
 

 
 
xdr_char(xdrs, cp)
 XDR  *xdrs;
char *cp;
 


 
 
Данная программа является фильтром-примитивом, который способствует
переходу символов С в их внешнее представление и наоборот. Программа
возвращает 1 при успешном завершении работы, иначе возвращает 0.
Замечание: закодированные символы не упакованы, и каждый занимает 4
байта. В случае с массивом символов стоит считать, что
 xdr_bytes() ,

 xdr_opaque() 

или
 xdr_string() .

 


 
 

 
 
void
xdr_destroy(xdrs)
 XDR  *xdrs;
 


 
 
Макрос, который запускает программу уничтожения, связанную с потоком
 XDR , 
 xdrs .

Уничтожение обычно включает в себя "освобождение" структур частных данных,
ассоциированных с потоком. Использование
 xdrs 

после запуска
 xdr_destroy() 

не определено.
 


 
 

 
 
xdr_double(xdrs, dp)
 XDR  *xdrs;
double *dp;
 


 
 
Данная программа является фильтром-примитивом, который способствует переходу 
чисел С типа
 double 

в их внешнее представление и наоборот. Программа возвращает 1 при
успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_enum(xdrs, ep)
 XDR  *xdrs;
enum_t *ep;
 


 
 
Данная программа является фильтром-примитивом, который способствует
переходу чисел С типа
 enum s

(фактически целые числа) в их внешнее представление и наоборот.
Программа возвращает 1 при успешном завершении работы, иначе
возвращается 0.
 


 
 

 
 
xdr_float(xdrs, fp)
 XDR  *xdrs;
float *fp;
 


 
 
 


 
 

 
 
void
xdr_free(proc, objp)
xdrproc_t proc;
char *objp;
 


 
 
Общая процедура высвобождения. Первым параметром для освобождаемого
объекта является процедура
 XDR.  
Вторым параметром является указатель на сам объект. Замечание:
указатель, переданный этой программе,
 НЕ 

"освобождается", но то, на что он указывает,
 ОСВОБОЖДАЕТСЯ 

(причем, рекурсивно).
 


 
 

 
 
u_int
xdr_getpos(xdrs)
 XDR  *xdrs;
 


 
 
Макрос, который запускает процедуру получения позиции, связанную с потоком
 XDR , 
 xdrs .

Программа возвращает беззнаковое целое, которое указывает на позицию
 XDR 
потока байтов. эффективная особенность потока
 XDR : 
с числом выполняются простые арифметические дейстия, хотя поток 
 XDR 
и не дает никаих гарантий, что это будет выполняться.
 


 
 

 
 
 
long *
xdr_inline(xdrs, len)
 XDR  *xdrs;
int len;
 


 
 
Макрос, который запускает встроенную процедуру, связанную с потоком
 XDR, 
 xdrs .

Программа возвращает указатель на непрерывную часть буфера потока;
 len 

является длиной нужного буфера в байтах. Замечание: указатель имеет вид
 long * .

 
Внимание:
 xdr_inline() 

может возвратить
 NULL 
(0),
если не сможет распределить непрерывную часть буфера.
Следовательно, поведение программы может меняться в разных потоках;
вообще она существует для обеспечения общей эффективности работы.
 


 
 

 
 
xdr_int(xdrs, ip)
 XDR  *xdrs;
int *ip;
 


 
 
Данная программа является фильтром-примитивом, который обеспечивает
переход целых чисел С в их внешнее представление и наоборот. Программа
возвращает 1 при успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_long(xdrs, lp)
 XDR  *xdrs;
long *lp;
 


 
 
Данная программа является фильтром-примитивом, который способствует переходу
чисел С типа
 long 

в их внешнее представление и наоборот.
Программа возвращает 1 при успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
void
xdrmem_create(xdrs, addr, size, op)
 XDR  *xdrs;
char *addr;
u_int size;
enum xdr_op op;
 


 
 
Эта программа инициализирует объект потока
 XDR, 
на который указывает
 xdrs .

Данные потока  считываются из
куска памяти или записываются в него с позиции
 addr ,

длина которого не больше
 size 

байтов. 
 op 

определяет направление потока
 XDR 
(
 XDR_ENCODE ,

 XDR_DECODE 

или
 XDR_FREE ).

 


 
 

 
 
xdr_opaque(xdrs, cp, cnt)
 XDR  *xdrs;
char *cp;
u_int cnt;
 


 
 
Данная программа является фильтром-примитивом, который способствует
переходу "непрозрачных" данных фиксированного размера в их внешнее
представление и наоборот. Параметр
 cp 

является адресом "непрозрачного" объекта, а
 cnt 

является его размером в байтах. Программа возвращает 1 при успешном
завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_pointer(xdrs, objpp, objsize, xdrobj)
 XDR  *xdrs;
char **objpp;
u_int objsize;
xdrproc_t xdrobj;
 


 
 
Работает аналогично
 xdr_reference() ,

исключая то, что выдаются пакеты пустых указателей
 NULL,  
в то время как
 xdr_reference() 

их не выдает.  Таким образом,
 xdr_pointer() 

может представлять собой рекурсивные структуры данных,
например, бинарные деревья или связанные списки.
 


 
 

 
 
void
xdrrec_create(xdrs, sendsize, recvsize, handle, readit, writeit)
 XDR  *xdrs;
u_int sendsize, recvsize;
char *handle;
int (*readit) (), (*writeit) ();
 


 
 
Данная программа инициализирует объект потока
 XDR, 
на который указывает
 xdrs .

Данные потока записываются в буфер размером
 sendsize ;

значение, равное нулю, указывает на то, что система должна  использовать
значение, подходящее по умолчанию. Данные потока считываются из буфера
размером
 recvsize ;

его размер также может быть установлен равным нулю, что указывает на
значение, подходящее по умолчанию. Когда буфер записи потока заполнен,
вызывается
 writeit .

Таким же образом, когда буфер чтения потока пуст, вызывается
 readit .

Поведение этих двух программ аналогично системным вызовам
 read 

и
 write ,

исключая то, что
 handle 

передается вызывающей программе в качестве первого параметра. Замечание:
у потока
 XDR 
поле
 op 

должно быть установлено вызывающей командой.
 
Внимание: поток
 XDR 
осуществляет промежуточную запись потока. Следовательно, в потоке есть
дополнительные байты, которые сообщают о границах записи.
 


 
 

 
 
xdrrec_endofrecord(xdrs, sendnow)
 XDR  *xdrs;
int sendnow;
 


 
 
Эта программа может запускаться только на потоках, созданных
 xdrrec_create() .

Данные в буфере вывода помечены как полная запись; буфер вывода также
записывается, если параметр
 sendnow 

не равен нулю. Программа возвращает 1 при успешном завершении работы,
иначе возвращается 0.
 


 
 

 
 
xdrrec_eof(xdrs)
 XDR  *xdrs;
int empty;
 


 
 
Эта программа может запускаться только на потоках, созданных
 xdrrec_create() .

После "поглощения" остатка текущей записи в потоке программа возвращает
1, если поток не имеет более данных на вводе; иначе возвращается 0.
 


 
 

 
 
xdrrec_skiprecord(xdrs)
 XDR  *xdrs;
 


 
 
Эта программа может запускаться только на потоках, созданных
 xdrrec_create() .

Она сообщает реализации
 XDR, 
что оставшаяся часть текущей записи в буфере ввода потока  должна быть
отвергнута. Программа возвращает 1 при успешном завершении работы,
иначе возвращается 0.
 


 
 

 
 
xdr_reference(xdrs, pp, size, proc)
 XDR  *xdrs;
char **pp;
u_int size;
xdrproc_t proc;
 


 
 
Данная программа является примитивом, обеспечивающим курсирование 
указателя по структурам. Параметр
 pp 

является адресом указателя;
 size 

является
 sizeof 

стуктуры, на которую указывает
 *pp ;

а
 proc 

является процедурой
 XDR ,  
которая преобразует форму этой структуры в С в ее внешнее представление.
Программа возвращает 1 при успешном завершении работы, иначе
возвращается 0.
 
Внимание: эта программа не распознает указателей
 NULL.  
Используйте вместо нее
 xdr_pointer() . 

 


 
 

 
 
xdr_setpos(xdrs, pos)
 XDR  *xdrs;
u_int pos;
 


 
 
Макрос, который запускает процедуру установки позиции, связанной с потоком
 XDR, 
 xdrs .

Параметр
 pos 

является значением позиции, полученной от
 xdr_getpos() .

Программа возвращает 1, если поток
 XDR 
может репозиционироваться, в ином случае возвращается 0.
 
Внимание: очень трудно репозиционировать некоторые типы потоков
 XDR,  
так что эта программа может не работать с одним типом, но успешно
работать с другим.
 


 
 

 
 
xdr_short(xdrs, sp)
 XDR  *xdrs;
short *sp;
 


 
 
Данная программа является фильтром-примитивом, который способствует 
переходу чисел типа С
 short 

в их внешнее представление и наоборот. Программа возвращает 1 при
успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
void
xdrstdio_create(xdrs, file, op)
 XDR  *xdrs;
 FILE  *file;
enum xdr_op op;
 


 
 
Программа инициализирует объект потока
 XDR,  
на который указывает
 xdrs .

Данные потока
 XDR 
записываются в стандартный файл
 ввода/вывода 

потока
 file 

или считываются из него. Параметр
 op 

определяет направление потока
 XDR 
 ( XDR_ENCODE ,

 XDR_DECODE 

или
 XDR_FREE ).

 
Внимание: процедура уничтожения, ассоциированная с потоком
 XDR, 
вызывает
 fflush() 

потоку
 file ,

но никогда не вызывает
 fclose() .

 


 
 

 
 
xdr_string(xdrs, sp, maxsize)
 XDR 
*xdrs;
char **sp;
u_int maxsize;
 


 
 
Данная программа является фильтром-примитивом, который обеспечивает 
переход строк С в их внешнее представление и наоборот. Строки не могут
быть длиннее
 maxsize .

Замечание:
 sp 

является адресом указателя строки. Программа возвращает 1 при успешном
завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_u_char(xdrs, ucp)
 XDR  *xdrs;
unsigned char *ucp;
 


 
 
Данная программа является фильтром-примитивом, который способствует
переходу символов С типа
 unsigned 

в их внешнее представление и наоборот. Программа возвращает 1 при
успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_u_int(xdrs, up)
 XDR  *xdrs;
unsigned *up;
 


 
 
Данная программа является фильтром-примитивом, который способствует
переходу целых чисел С типа
 unsigned 

в их внешнее представление и наоборот.
Программа возвращает 1 при успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_u_long(xdrs, ulp)
 XDR  *xdrs;
unsigned long *ulp;
 


 
 
Данная программа является фильтром-примитивом, который способствует переходу 
целых С типа
 unsigned long 

в их внешнее представление и наоборот.
Программа возвращает 1 при успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_u_short(xdrs, usp)
 XDR  *xdrs;
unsigned short *usp;
 


 
 
Данная программа является фильтром-примитивом, который способствует переходу 
целых чисел С типа
 unsigned short 

в их внешнее представление и наоборот.
Программа возвращает 1 при успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_union(xdrs, dscmp, unp, choices, dfault)
 XDR  *xdrs;
int *dscmp;
char *unp;
struct xdr_discrim *choices;
bool_t (*defaultarm) ();  /* may equal  NULL  */
 


 
 
Данная программа является фильтром-примитивом, который способствует переходу 
размеченного объединения С типа
 union 

в его внешнее представление и наоборот.
Сначала преобразуется дискриминант объединения, расположенный в
 dscmp .

Этот дискриминант всегда равен
 enum_t .

Затем преобразуется объединение, расположенное в
 unp .

Параметр
 choices 

является указателем на массив структур
 xdr_discrim() .

Каждая структура содержит упорядоченную пару
[ value , proc ].

Если дискриминант объединения равен связанному
 value ,

то для преобразования объединения вызывается
 proc .

Конец массива структур
 xdr_discrim() 

обозначается процедурой со значением
 NULL .
Если дискриминант не найден в массиве
 choices ,

то вызывается процедура
 defaultarm 

(если данное значение не равно
 NULL ).
Возвращает 1 при успешном завершении работы, иначе возвращается 0.
 


 
 

 
 
xdr_vector(xdrs, arrp, size, elsize, elproc)
 XDR  *xdrs;
char *arrp;
u_int size, elsize;
xdrproc_t elproc;
 


 
 
Данная программа является фильтром-примитивом, который способствует 
переходу массивов фиксированного размера в их внешние представления и
наоборот. Параметр
 arrp 

является адресом указателя на массив, в то время как
 size 

является счетчиком элементов в массиве. Параметр
 elsize 

равен
 sizeof 

каждого из элементов массива, а
 elproc 

является фильтром
 XDR,  
который затем преобразует элементы массива формы С в их внешнее
представление и наоборот. Программа возвращает 1 при успешном завершении
работы, иначе возвращается 0.
 


 
 

 
 
xdr_void()
 


 
 
Программа всегда возвращает 1. Она может передаваться программам
 RPC,  
которые обязательно требуют параметр функции и в которых не должно
производиться никаких действий .
 


 
 

 
 
xdr_wrapstring(xdrs, sp)
 XDR  *xdrs;
char **sp;
 


 
 
Данная программа является примитивом, вызывающем
 xdr_string(xdrs, sp, MAXUN.UNSIGNED  ); 

где
 MAXUN.UNSIGNED 
 

является максимальным значением беззнакового целого.
 xdr_wrapstring() 

является удобной, потому что пакеты
 RPC 
проходят максимум две процедуры
 XDR 
в качестве параметров, а
 xdr_string() ,

являющаяся одной из наиболее часто вызываемых функций, требует три.
Программа возвращает 1 при успешном завершении работы, иначе
возвращается 0.
 
   
 СМ. ТАКЖЕ 

 rpc (3N)

 

Следующие руководства:
 
 
Стандарт представления внешних данных: спецификация протокола
 

Представление внешних данных: технические замечания Sun.
 
 

 XDR : External Data Representation Standard ,

 RFC1014, Sun Microsystems, Inc., 
 USC-ISI .
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС И ОПИСАНИЯ 
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