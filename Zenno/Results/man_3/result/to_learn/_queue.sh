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
 
 
 
 queue (3)   queue  (3)   ( Solaris man: Библиотечные вызовы )   queue  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  queue  (3)   ( Русские man: Библиотечные вызовы )   queue  (3)   ( Linux man: Библиотечные вызовы )   queue  (9)   ( Solaris man: Ядро ) Ключ  queue  обнаружен в базе ключевых слов. BSD mandoc 
BSD 4

   
 НАЗВАНИЕ 

 LIST_ENTRY 

 
 LIST_HEAD 

 
 LIST_INIT 

 
 LIST_INSERT_AFTER 

 
 LIST_INSERT_HEAD 

 
 LIST_REMOVE 

 
 TAILQ_ENTRY 

 
 TAILQ_HEAD 

 
 TAILQ_INIT 

 
 TAILQ_INSERT_AFTER 

 
 TAILQ_INSERT_HEAD 

 
 TAILQ_INSERT_TAIL 

 
 TAILQ_REMOVE 

 
 CIRCLEQ_ENTRY 

 
 CIRCLEQ_HEAD 

 
 CIRCLEQ_INIT 

 
 CIRCLEQ_INSERT_AFTER 

 
 CIRCLEQ_INSERT_BEFORE 

 
 CIRCLEQ_INSERT_HEAD 

 
 CIRCLEQ_INSERT_TAIL 

 
 CIRCLEQ_REMOVE 

 - реализации списков, хвостовых и циклических очередей

   
 СИНТАКСИС 

Fd #include < sys/queue.h >


LIST_ENTRY (TYPE); 

LIST_HEAD (HEADNAME TYPE); 

LIST_INIT (LIST_HEAD *head); 

LIST_INSERT_AFTER (LIST_ENTRY *listelm TYPE *elm LIST_ENTRY NAME); 

LIST_INSERT_HEAD (LIST_HEAD *head TYPE *elm LIST_ENTRY NAME); 

LIST_REMOVE (TYPE *elm LIST_ENTRY NAME); 


TAILQ_ENTRY (TYPE); 

TAILQ_HEAD (HEADNAME TYPE); 

TAILQ_INIT (TAILQ_HEAD *head); 

TAILQ_INSERT_AFTER (TAILQ_HEAD *head TYPE *listelm TYPE *elm TAILQ_ENTRY NAME); 

TAILQ_INSERT_HEAD (TAILQ_HEAD *head TYPE *elm TAILQ_ENTRY NAME); 

TAILQ_INSERT_TAIL (TAILQ_HEAD *head TYPE *elm TAILQ_ENTRY NAME); 

TAILQ_REMOVE (TAILQ_HEAD *head TYPE *elm TAILQ_ENTRY NAME); 


CIRCLEQ_ENTRY (TYPE); 

CIRCLEQ_HEAD (HEADNAME TYPE); 

CIRCLEQ_INIT (CIRCLEQ_HEAD *head); 

CIRCLEQ_INSERT_AFTER (CIRCLEQ_HEAD *head TYPE *listelm TYPE *elm CIRCLEQ_ENTRY NAME); 

CIRCLEQ_INSERT_BEFORE (CIRCLEQ_HEAD *head TYPE *listelm TYPE *elm CIRCLEQ_ENTRY NAME); 

CIRCLEQ_INSERT_HEAD (CIRCLEQ_HEAD *head TYPE *elm CIRCLEQ_ENTRY NAME); 

CIRCLEQ_INSERT_TAIL (CIRCLEQ_HEAD *head TYPE *elm CIRCLEQ_ENTRY NAME); 

CIRCLEQ_REMOVE (CIRCLEQ_HEAD *head TYPE *elm CIRCLEQ_ENTRY NAME); 

   
 ОПИСАНИЕ 

Эти макросы определяют и оперируют тремя типами структур данных:
списками, хвостовыми и циклическими очередями.
Все три структуры поддерживают такие возможности:
 

 

Вставка нового элемента в начало списка.
 

Вставка нового элемента после любого элемента в списке.
 

Удаление любого эемента из списка.
 

Прохождение вперед по списку.
 

 

Списки являются простейшим примером из этих трех структур
и поддерживают только вышеперечисленные возможности.
 

Хвостовые очереди имеют также такие возможности:
 

 

Элементы могут быть добавлены в конец списка.
 

Однако:
 

 

Все вставки в список и удаления должны определять заголовок списка.
 

Каждый элемент заголовка требует двух указателей, а не одного.
 

Размер кода примерно на 15% больше, а операции работают примерно
на 20% медленнее, чем в списке.
 

 

Циклические очереди имеют такие дополнительные возможности:
 

 

Элементы могут быть добавлены в конец списка.
 

Элементы могут быть добавлены перед другим элементом.
 

Можно переходить в обратном направлении, от конца - к началу.
 

Однако:
 

 

Все вставки в список и удаления должны определять заголовок списка.
 

Каждый элемент заголовка требует двух указателей, а не одного.
 

Условие завершения при прохождении более сложное.
 

Размер кода примерно на 40% больше, а операции работают примерно
на 45% медленнее, чем в списке.
 

 

В определениях макросов
Fa TYPE

является названием структуры, определяемой пользователем,
которая должна содержать поле типа
 LIST_ENTRY 

 
 TAILQ_ENTRY 

 
или
 CIRCLEQ_ENTRY 

 
с названием
Fa NAME .

Аргумент
Fa HEADNAME

является названием структуры, определяемой пользователем,
которая должна быть объявлена, используя макрос
 LIST_HEAD 

 
 TAILQ_HEAD 

 
или
 CIRCLEQ_HEAD 

 
Смотрите далее приведенные примеры для более подробного
пояснения использования этих макросов.
   
 СПИСКИ 

Начало списка задается структурой, определяемой макросом
 LIST_HEAD 

 
Эта структура содержит один указательн на первый элемент списка.
Элементы дважды связаны так, что любой элемент может быть удален
без прохождения по всему списку.
Новые элементы могут быть добавлены после существующего элемента
или в начало списка.
Структура
Fa LIST_HEAD

объявляется таким образом:

 
 LIST_HEAD(HEADNAME, TYPE) head;
 
 

 

где
Fa HEADNAME

является названием определяемой структуры, а
Fa TYPE

является типом элементов, связанных в списке.
Указатель на заголовок списка может быть в дальнейшем быть объявлен, как:

 
 struct HEADNAME *headp;
 
 

 

(Названия
 head 

и
 headp 

выбираются пользователем.)
 

Макрос
 LIST_ENTRY 

объявляет структуру, соединяющую элементы в списке.
 

Макрос
 LIST_INIT 

инициализирует список, ссылающийся на
Fa head .

 

Макрос
 LIST_INSERT_HEAD 

вставляет новый элемент
Fa elm

в начало списка.
 

Макрос
 LIST_INSERT_AFTER 

вставляет новый элемент
Fa elm

после элемента
Fa listelm .

 

Макрос
 LIST_REMOVE 

удаляет элемент
Fa elm

из списка.
   
 ПРИМЕР СПИСКА 


 LIST_HEAD(listhead, entry) head;
struct listhead *headp;         /* заголовок списка */
struct entry {
        ...
        LIST_ENTRY(entry) entries;      /* список */
        ...
} *n1, *n2, *np;

LIST_INIT(&head);                       /* инициализация списка */

n1 = malloc(sizeof(struct entry));      /* вставка в начало */
LIST_INSERT_HEAD(&head, n1, entries);

n2 = malloc(sizeof(struct entry));      /* вставка после */
LIST_INSERT_AFTER(n1, n2, entries);
                                        /* продвижение вперед */
for (np = head.lh_first; np != NULL; np = np->entries.le_next)
        np-> ...

while (head.lh_first != NULL)           /* удаление */
        LIST_REMOVE(head.lh_first, entries);
 

   
 ХВОСТОВЫЕ ОЧЕРЕДИ 

Хвостовая очередь задается структурой, определяемой макросом
 TAILQ_HEAD 

 
Эта структура содержит пару указателей, один для первого элемента
в очереди, а другой для последнего элемента в очереди.
Элементы связаны дважды так, что любой элемент может быть удален
без прохождения по всей очереди. Новые элементы могут быть добавлены
в очередь после существующего элемента, в конец или в начало очереди,
Структура
Fa TAILQ_HEAD

объявляется таким образом:

 
 TAILQ_HEAD(HEADNAME, TYPE) head;
 
 

 

где
 HEADNAME 

является названием определяемой структуры, а
 TYPE 

является типом связываемых элементов в хвостовой очереди.
Указатель на заголовок хвостовой очереди может быть далее
определен так:

 
 struct HEADNAME *headp;
 
 

 

(Названия
 head 

и
 headp 

выбираются пользователем.)
 

Макрос
 TAILQ_ENTRY 

объявляет структуру, связывающую элементы в хвостовой очереди.
 

Макрос
 TAILQ_INIT 

инициализирует хвостовую очередь, на которую ссылается
Fa head .

 

Макрос
 TAILQ_INSERT_HEAD 

вставляет новый элемент
Fa elm

в начало хвостовой очереди.
 

Макрос
 TAILQ_INSERT_TAIL 

вставляет новый элемент
Fa elm

в конец хвостовой очереди.
 

Макрос
 TAILQ_INSERT_AFTER 

вставляет новый элемент
Fa elm

после элемента
Fa listelm .

 

Макрос
 TAILQ_REMOVE 

удаляет элемент
Fa elm

из хвостовой очереди.
   
 ПРИМЕР ХВОСТОВОЙ ОЧЕРЕДИ 


 TAILQ_HEAD(tailhead, entry) head;
struct tailhead *headp;         /* заголовок хвостовой очереди */
struct entry {
        ...
        TAILQ_ENTRY(entry) entries;     /* хвостовая очередь */
        ...
} *n1, *n2, *np;

TAILQ_INIT(&head);                      /* инициализация очереди */

n1 = malloc(sizeof(struct entry));      /* вставка в начало */
TAILQ_INSERT_HEAD(&head, n1, entries);

n1 = malloc(sizeof(struct entry));      /* вставка в хвост */
TAILQ_INSERT_TAIL(&head, n1, entries);

n2 = malloc(sizeof(struct entry));      /* вставка после */
TAILQ_INSERT_AFTER(&head, n1, n2, entries);
                                        /* вперед по очереди */
for (np = head.tqh_first; np != NULL; np = np->entries.tqe_next)
        np-> ...
                                        /* удаление */
while (head.tqh_first != NULL)
        TAILQ_REMOVE(&head, head.tqh_first, entries);
 

   
 ЦИКЛИЧЕСКИЕ ОЧЕРЕДИ 

Циклическая очередь задается структурой, определяемой макросом
 CIRCLEQ_HEAD 

 
Эта структура содержит пару указателей, один для первого элемента 
в очереди, а другой для последнего элемента в очереди.
Элементы связаны дважды так, что любой элемент может быть удален
без прохождения по всей очереди. Новые элементы могут быть добавлены 
в очередь после существующего элемента, в конец или в начало очереди,
Структура
Fa CIRCLEQ_HEAD

объявляется так:

 
 CIRCLEQ_HEAD(HEADNAME, TYPE) head;
 
 

 

где
 HEADNAME 

является названием определяемой структуры, а
 TYPE 

является типом связываемых элементов в циклической очереди.
Указатель на заголовок циклической очереди может быть далее определен, как:

 
 struct HEADNAME *headp;
 
 

 

(Названия
 head 

и
 headp 

выбираются пользователем.)
 

Макрос
 CIRCLEQ_ENTRY 

объявляет структура, соединяющую элементы в циклической очереди.
 

Макрос
 CIRCLEQ_INIT 

инициализирует циклическую очередь, на которую указывает
Fa head .

 

Макрос
 CIRCLEQ_INSERT_HEAD 

вставляет новый элемент
Fa elm

в начало циклической очереди.
 

Макрос
 CIRCLEQ_INSERT_TAIL 

вставляет новый элемент
Fa elm

в конец циклической очереди.
 

Макрос
 CIRCLEQ_INSERT_AFTER 

вставляет новый элемент
Fa elm

после элемента
Fa listelm .

 

Макрос
 CIRCLEQ_INSERT_BEFORE 

вставляет новый элемент
Fa elm

перед элементом
Fa listelm .

 

Макрос
 CIRCLEQ_REMOVE 

удаляет элемент
Fa elm

из циклической очереди.
   
 ПРИМЕР ЦИКЛИЧЕСКОЙ ОЧЕРЕДИ 


 CIRCLEQ_HEAD(circleq, entry) head;
struct circleq *headp;                  /* заголовок циклической очереди */
struct entry {
        ...
        CIRCLEQ_ENTRY(entry) entries;           /* циклическая очередь */
        ...
} *n1, *n2, *np;

CIRCLEQ_INIT(&head);                    /* инициализация циклической очереди */

n1 = malloc(sizeof(struct entry));      /* вставка заголовка */
CIRCLEQ_INSERT_HEAD(&head, n1, entries);

n1 = malloc(sizeof(struct entry));      /* вставка в хвост */
CIRCLEQ_INSERT_TAIL(&head, n1, entries);

n2 = malloc(sizeof(struct entry));      /* вставка после */
CIRCLEQ_INSERT_AFTER(&head, n1, n2, entries);

n2 = malloc(sizeof(struct entry));      /* вставка перед */
CIRCLEQ_INSERT_BEFORE(&head, n1, n2, entries);
                                        /* вперед по очереди */
for (np = head.cqh_first; np != (void *)&head; np = np->entries.cqe_next)
        np-> ...
                                        /* назад по очереди */
for (np = head.cqh_last; np != (void *)&head; np = np->entries.cqe_prev)
        np-> ...
                                        /* удаление */
while (head.cqh_first != (void *)&head)
        CIRCLEQ_REMOVE(&head, head.cqh_first, entries);
 

   
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 

Функции
 queue 

впервые появились в
BSD 4.4
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 СПИСКИ 
 ПРИМЕР СПИСКА 
 ХВОСТОВЫЕ ОЧЕРЕДИ 
 ПРИМЕР ХВОСТОВОЙ ОЧЕРЕДИ 
 ЦИКЛИЧЕСКИЕ ОЧЕРЕДИ 
 ПРИМЕР ЦИКЛИЧЕСКОЙ ОЧЕРЕДИ 
 ПРИМЕЧАНИЯ ПО ИСТОРИИ 
 
 
 
 
 
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