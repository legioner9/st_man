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
 
 
 
 malloc_hook (3) >>  malloc_hook  (3)   ( Русские man: Библиотечные вызовы )   malloc_hook  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

__malloc_hook, __malloc_initialize_hook,
__memalign_hook, __free_hook, __realloc_hook, 
__after_morecore_hook - переменные отладки malloc
   
 СИНТАКСИС 

 
 #include < malloc.h > 

 
 void *(*__malloc_hook)(size_t  size , 

 const void * caller ); 

 
 void *(*__realloc_hook)(void * ptr , 

 size_t  size , 

 const void * caller ); 

 
 void *(*__memalign_hook)(size_t  alignment , 

 size_t  size , 

 const void * caller ); 

 
 void (*__free_hook)(void * ptr , 

 const void * caller ); 

 
 void (*__malloc_initialize_hook)(void); 

 
 void (*__after_morecore_hook)(void); 

   
 ОПИСАНИЕ 

Библиотека GNU C позволяет изменять поведение
 malloc (),

 realloc (),

и
 free ()

через указание соответствующих функций для крюка ("hook").
Также можно использовать эти крюки для помощи во время отладки
программ, использующих, например, динамическое распределение памяти.
 

Переменная
 __malloc_initialize_hook 

указывает на функцию, вызываемую как только инициализируется
реализация malloc. Это слабая переменная, так как она может
быть переопределена в приложении через следующее:
 

     void (*__malloc_initialize_hook)(void) = my_init_hook;
 

 

Теперь функция
 my_init_hook ()

может инициализировать все крюки.
 

Четыре функции, на которые указывают
 __malloc_hook ,

 __realloc_hook ,

 __memalign_hook ,

 __free_hook 

имеют прототипы, как функции
 malloc (),

 realloc (),

 memalign (),

 free (),

соответственно, за исключением того, что у них есть последний аргумент
 caller ,

выдающий адрес вызывающего
 malloc ().

 

Переменная
 __after_morecore_hook 

указывает на функцию, вызываемую каждый раз после запроса
 sbrk ().

   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

Приведем краткий пример использования этих переменных.
 
 #include < stdio.h >
#include < malloc.h >
     
/*  Прототипы наших крюков.   */
static void my_init_hook(void);
static void *my_malloc_hook(size_t, const void *);

/* Переменные, сохраняющие изначальные крюки. */
static void *(*old_malloc_hook)(size_t, const void *);
     
/* Переопределение инициализирующих крюков из библиотеки C. */
void (*__malloc_initialize_hook) (void) = my_init_hook;

static void
my_init_hook(void) {
    old_malloc_hook = __malloc_hook;
    __malloc_hook = my_malloc_hook;
}

static void *
my_malloc_hook (size_t size, const void *caller) {
    void *result;

    /* Восстанавливаем все старые крюки */
    __malloc_hook = old_malloc_hook;

    /* Рекурсивный вызов */
    result = malloc (size);

    /* Сохраняет подчиненные крюки */
    old_malloc_hook = __malloc_hook;

    /* `printf' должен вызывать `malloc', поэтому защищать и его. */
    printf ("malloc(%u) called from %p returns %p,
        (unsigned int) size, caller, result);

    /* Восстанавливать наши старые крюки */
    __malloc_hook = my_malloc_hook;

    return result;
}
 

   
 СМ. ТАКЖЕ 

 mallinfo (3),

 malloc (3),

 mtrace (3),

 mcheck (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 
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