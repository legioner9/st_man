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
 
 
 
 fetestexcept (3)   fetestexcept  (3)   ( Solaris man: Библиотечные вызовы )   fetestexcept  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  fetestexcept  (3)   ( Русские man: Библиотечные вызовы )   fetestexcept  (3)   ( Linux man: Библиотечные вызовы )   fetestexcept  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

feclearexcept, fegetexceptflag, feraiseexcept, fesetexceptflag,
fetestexcept, fegetenv, fegetround, feholdexcept, fesetround,
fesetenv, feupdateenv - обрабатывают ошибки и округляют числа
с плавающей точкой (стандарт C99)
   
 СИНТАКСИС 

 #include < fenv.h > 

 void feclearexcept(int  excepts ); 
 
 void fegetexceptflag(fexcept_t * flagp , int  excepts ); 
 
 void feraiseexcept(int  excepts ); 
 
 void fesetexceptflag(const fexcept_t * flagp , int  excepts ); 
 
 int fetestexcept(int  excepts ); 

 int fegetround(void); 
 
 int fesetround(int  rounding_mode ); 

 void fegetenv(fenv_t * envp ); 
 
 int feholdexcept(fenv_t * envp ); 
 
 void fesetenv(const fenv_t * envp ); 
 
 void feupdateenv(const fenv_t * envp ); 
 

   
 ОПИСАНИЕ 

Эти 11 функций были определены в стандарте C99 и предназначены для округления
чисел с плавающей точкой и обработки исключений (переполнения,
деления на ноль и т.п.).
   
 Исключения 

Исключение ДелениеНаНоль (DivideByZero) происходит при операции над определенным числом
в результате которой получается неопределенный результат (бесконечность). 
 

исключение переаолнения (Overflow) происходит когда результат представлен числом
с плавающей точкой и имеет большее абсолютное значение чем может быть указано. 
 

Исключение Underflow происходит когда результат представлен числом
с плавающей точкой и имеет меньшее абсолютное значение чем может быть указано
(а в денормализованном виде не будет точным значением). 
 

Исключение Inexact происходит когда округленный результат операции
теряет свою точность.
Это может произойти и при исключениях  Overflow или Underflow.
 

Исключение Invalid когда нет определенного результата операции, например
при операциях 0/0 или бесконечность - бесконечность или sqrt(-1).
   
 Обработка ошибок 

Ошибки могут быть представлены двумя способами:
битом (ошибка установлена/сброшена)
или битами, позиция которых в целом числе задается в зависимости от ее реализации,
а также структурой, в которой может быть приведена дополнительная информация об
ошибке (например, ее адрес).
 

Hижеприведенные макросы:
 FE_DIVBYZERO ,

 FE_INEXACT ,

 FE_INVALID ,

 FE_OVERFLOW ,

 FE_UNDERFLOW 

- определены, если данная реализация поддерживает обработку соответствующих
ошибок. Соответствующие биты должны быть определены таким образом, чтобы
можно было вызвать функции обработки ошибок с целочисленным аргументом,
например,
 FE_OVERFLOW | FE_UNDERFLOW .

Могут поддерживаться и другие ошибки. Макрос 
 FE_ALL_EXCEPT 

является результатом побитового логического сложения всех битов,
соответствующих поддерживаемым ошибкам.
 

Функция 
 feclearexcept 

сбрасывает поддерживаемые ошибки, заданные битами в аргументе функции.
 

Функция 
 fegetexceptflag 

заносит представление флагов ошибок, указанных в аргументе
 excepts, 

в объект 
* flagp .

 

Функция 
 feraiseexcept 

устанавливает поддерживаемые ошибки, заданные битами в 
 excepts .

 

Функция 
 fesetexceptflag 

устанавливает значение полного состояния ошибок, указанных в 
 excepts ,

равным значению
* flagp .

Это значение должно быть получено ранее с помощью вызова 
 fegetexceptflag ,

последний аргумент которого содержит в 
 excepts 

все биты.
 

Функция
 fetestexcept 

возвращает слово, в котором установлены биты, указанные в аргументе 
 excepts 

и для которых в данный момент установлена соответствующая ошибка.
   
 Округление 

Hижеприведенные макросы:
 FE_DOWNWARD ,

 FE_TONEAREST ,

 FE_TOWARDZERO ,

 FE_UPWARD 

- определены, если данная реализация поддерживает считывание и установку
соответствующих направлений округления.
 

Функция 
 fegetround 

возвращает макрос, соответствующий текущему режиму округления.
 

Функция 
 fesetround 

устанавливает режим округления в соответствии с аргументом и возвращает ноль,
если эта операция была успешно выполнена.
   
 Операций с плавающей точкой 

Все операции с плавающей точкой, включая операции управляющих режимов и флагов
состояния, могут быть обработаны как единый объект (окружение), имеющий тип
fenv_t . 

Окружение, используемое по умолчанию, определено как
 FE_DFL_ENV 

(тип
 const fenv_t * ).

 

Функция 
 fegetenv 

сохраняет текущее окружение операций с плавающей точкой в объекте
* envp .

 

Функция 
 feholdexcept 

делает то же самое, а затем сбрасывает все флаги ошибок и устанавливает
безостановочный (продолжающий работу при возникновении ошибок) режим, если
таковой разрешен. При удачном завершении функция возвращает нулевое значение.
 

Функция
 fesetenv 

восстанавливает окружение операций с плавающей точкой из объекта
* envp .

Этот объект должен быть заведомо правильным: например, быть результатом вызова
 fegetenv, 

 feholdexcept 

или быть эквивалентен
 FE_DFL_ENV .

Вызов этой функции не вызывает ошибок.
 

Функция 
 feupdateenv 

устанавливает окружение для операций с плавающей точкой представленное
объектом
* envp ,

за исключением необработанных результатов (Исключения см.выше).
После выова этой функции все исключения , будут побитно сложены
с установленными ранее и находящимися в 
* envp .

Объект
* envp 

должен быть корректным.
  
   
 ПОДРОБНОСТИ GNU 

По возможности GNU C Library определяет макрос
 FE_NOMASK_ENV 

Вы можете проверить его используя
 #ifdef .

Он определен только в случае когда указано
 _GNU_SOURCE .

Стандарт C99 не определяет способ установки отдельных битов
в маске плавающей точки.
glibc 2.2 поддерживает функции
 feenableexcept 

и
 fedisableexcept 

для установки ловушек для операций с плавающей точкой, и функцию
 fegetexcept 

для опроса состояния.
 
 int feenableexcept (int  excepts ); 
 
 int fedisableexcept (int  excepts ); 
 
 
 int fegetexcept (void); 
 #define _GNU_SOURCE  
 
 #include < fenv.h >  

 

 

Функции
 feenableexcept 

и
 fedisableexcept 

включают (выключают) ловушки для каждого исключения 
 excepts 

и возвращают предыдущий набор  исключений и
-1 при ошибке.
Функция
 fegetexcept 

возвращает набор всех включенных исключений.
 
   
 ЗАМЕЧАНИЯ 

Привязывайте ее, используя
 -lm .

 
   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

IEC 60559 (IEC 559:1989), ANSI/IEEE 854, ISO C99 (ISO/IEC 9899:1999).
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 
 Исключения 
 Обработка ошибок 
 Округление 
 Операций с плавающей точкой 
 
 ПОДРОБНОСТИ GNU 
 ЗАМЕЧАНИЯ 
 СООТВЕТСТВИЕ СТАНДАРТАМ 
 
 
 
 
 
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