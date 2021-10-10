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
 
 
 
 hcreate_r (3) >>  hcreate_r  (3)   ( Русские man: Библиотечные вызовы )   hcreate_r  (3)   ( Linux man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

hcreate, hdestroy, hsearch - операции над ассоциативными массивами
   
 СИНТАКСИС 

 #include < search.h > 

 
 int hcreate(size_t  nel ); 

 
 ENTRY *hsearch(ENTRY  item , ACTION  action ); 

 
 void hdestroy(void); 

 
 #define _GNU_SOURCE 

 

 #include < search.h > 

 
 int hcreate_r(size_t  nel , struct hsearch_data * tab ); 

 
 int *hsearch_r(ENTRY  item , ACTION  action , 

 ENTRY ** ret , struct hsearch_data * tab ); 

 
 void hdestroy_r(struct hsearch_data * tab ); 

   
 ОПИСАНИЕ 

Функции 
 hcreate ,

 hsearch 

и
 hdestroy 

позволяют пользователю создать (только один) ассоциативный
массив (хэш), который связывает ключ с любыми данными.
Функции
 hcreate_r ,

 hsearch_r 

и
 hdestroy_r 

являются реентрантными версиями, позволяющими создание более одной таблицы.
 

Во-первых, хэш должен быть создан с помощью функции  hcreate() .
Аргумент  nel  указывает предполагаемое максимальное количество элементов
в хэше.
Функция  hcreate()  может увеличить этот параметр для повышения быстродействия
таблицы. 
 

Соответствующая функция  hdestroy() 
освобождает память, занимаемую таблицей.
 

Аргумент  item  имеет тип  ENTRY , который определен в
 < search.h >  следующим образом:
 
          typedef struct entry {
            char * key ;
            void * data ;
         } ENTRY;
 

 
Поле  key  указывает на оканчивающуюся NUL строку, используемую
в качестве ключа для поиска. 
Поле  data  указывает на данные, связанные с ключом.
Функция  hsearch()  ищет в хэше элемент с ключом, 
равным  item  (равенство определяется функцией
 strcmp (3)),

и в случае удачного завершения операции возвращает указатель на него.
Аргумент  action  определяет действие,
вызываемое из  hsearch()  после неудачного поиска.
Значение  ENTER  указывает, что копия  item  будет вставляться
в хэш до того момента, пока  FIND  не перестанет
возвращать  NULL .
   
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 

Функции  hcreate()  и  hcreate_r()  возвращают 0 в случае
ошибки при выделении памяти, иначе они возвращают ненулевое значение.
Функция  hsearch()  возвращает  NULL , если  action  
равен  ENTER  и таблица полна, или если  action  равен 
 FIND  и  item  не может быть найден в хэше.
 

Функция  hsearch_r()  возвращает 0, если  action  равен
 ENTER  и хэш полон, иначе возвращается ненулевое значение.
   
 НАЙДЕННЫЕ ОШИБКИ 

 
 ENOMEM 

 
Недостаточно памяти.
 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

Функции
 hcreate ,

 hsearch 

и
 hdestroy 

взяты из SVID и описаны в POSIX 1003.1-2001.
Функции
 hcreate_r ,

 hsearch_r 

и
 hdestroy_r 

являются расширениями GNU.
   
 НАЙДЕННЫЕ ОШИБКИ 

SVID и POSIX 1003.1-2001 указывают, что  action  имеет значение
только при неудачном поиске, поэтому ENTER не должно ничего
делать при удачном поиске. Однако библитеки libc и glibc
обновляют  data  для указанного  key  в этом случае.
 

Отдельные записи в хэше могут быть добавлены, но не удалены.
   
 ПРИМЕРЫ ИСПОЛЬЗОВАНИЯ 

 

Следующая программа вставляет в таблицу 24 элемента, а затем
выводит на печать некоторые из них:
     #include < stdio.h >
    #include < search.h >
    char *data[] = { "alpha", "bravo", "charlie", "delta",
         "echo", "foxtrot", "golf", "hotel", "india", "juliet",
         "kilo", "lima", "mike", "november", "oscar", "papa",
         "quebec", "romeo", "sierra", "tango", "uniform",
         "victor", "whisky", "x-ray", "yankee", "zulu"
    };
    int main() {
      ENTRY e, *ep;
      int i;
      /* начать с небольшой таблицы и позволить ей увеличиваться не получится */
      hcreate(30);
      for (i = 0; i < 24; i++) {
          e.key = data[i];
          /* данные - это просто целые числа, а не указатели
           на что-либо */
          e.data = (char *)i;
          ep = hsearch(e, ENTER);
          /* ошибок быть не должно */
          if(ep == NULL) { 
             fprintf(stderr, "ошибка\n");
              exit (1);
          }
     }
      for (i = 22; i < 26; i++) {
        /* напечатать два значения из таблицы и их значения не из таблицы */
          e.key = data[i];
          ep = hsearch(e, FIND);
          printf("%9.9s -> %9.9s:%d\n", e.key,
                 ep ? ep->key : "NULL",
                 ep ? (int)(ep->data) : 0);
      }
      return 0;
    }
 

   
 СМ. ТАКЖЕ 

 bsearch (3),

 lsearch (3),

 tsearch (3),

 malloc (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 ВОЗВРАЩАЕМЫЕ ЗНАЧЕНИЯ 
 НАЙДЕННЫЕ ОШИБКИ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 НАЙДЕННЫЕ ОШИБКИ 
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