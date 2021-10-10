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
 
 
 
 isfinite (3)   isfinite  (3)   ( Solaris man: Библиотечные вызовы )   isfinite  (3)   ( FreeBSD man: Библиотечные вызовы ) >>  isfinite  (3)   ( Русские man: Библиотечные вызовы )   isfinite  (3)   ( Linux man: Библиотечные вызовы )   isfinite  (3)   ( POSIX man: Библиотечные вызовы ) 
   
 НАЗВАНИЕ 

fpclassify, isfinite, isnormal, isnan - макросы классификации для чисел с плавающей точкой
   
 СИНТАКСИС 

 #include < math.h > 

 int fpclassify( x ); 

 int isfinite( x ); 

 int isnormal( x ); 

 int isnan( x ); 

 int isinf( x ); 
 

   
 ОПИСАНИЕ 

Числа с плавающей точкой могут иметь много особых значений,
например бесконечность, или NaN. С помощью макроса
 fpclassify( x ) 

можной определить, к какому типу осносится
 x .

Макрос воспринимает как аргумент любое выражение с плавающей точкой is.
Результатом может быть одно из следующих значений:
 
 FP_NAN 
 x 

является NaN (не число, "Not a Number").
 FP_INFINITE 
 x 

является либо плюс либо минус бесконечностью.
 FP_ZERO 
 x 

равно нулю.
 FP_SUBNORMAL 
 x 

слишком мало и не может быть представлено в нормализованном формате.
 FP_NORMAL 
если ничто из вышеперечисленного для выражения не подошло, то оно
является обычным числом с плавающей точкой.
 
 

Другие макросы кратко отвечают на стандартные вопросы.
 
 isfinite(x) 
(fpclassify(x) != FP_NAN && fpclassify(x) != FP_INFINITE)
 isnormal(x) 
(fpclassify(x) == FP_NORMAL)
 isnan(x) 
(fpclassify(x) == FP_NAN)
 isinf(x) 
(fpclassify(x) == FP_INFINITE)
 
   
 ЗАМЕЧАНИЯ 

   
 СООТВЕТСТВИЕ СТАНДАРТАМ 

C99
   
 СМ. ТАКЖЕ 

 isgreater (3),

 isinf (3)

 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
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