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
 
 
 
 FvwmCpp (1)   FvwmCpp  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  FvwmCpp  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
FvwmCpp - Cpp препроцессор для  fvwm95 
 
   
 СИНТАКСИС 

 
FvwmCpp вызывается оконным менеджером  fvwm95  и не может быть вызван из
командной строки.
 
   
 ОПИСАНИЕ 

 
При вызове данный модуль пытается запустить
/usr/lib/cpp для обработки файла, заданного параметром,
после чего передает результат оконному менеджеру  fvwm95 .
 
   
 Вызов 

 
FvwmCpp может быть вызван вставкой строки `FvwmCpp' в файл
.fvwm95rc. Он также может быть вызван из меню или с
помощью события мыши. Если пользователь хочет, чтобы его
.fvwm95rc обрабатывался FvwmCpp, то  fvwm95  должен быть
вызван как ``fvwm -f /usr/lib/X11/fvwm/FvwmCpp''
 
Некоторые опции могут быть заданы в командной строке:
 
 
 -Cppopt 
 
Передает опцию для программы cpp.
 
 -Cppprog 
 
Вместо вызова ``/usr/lib/cpp'', fvwm будет вызывать
программу  name .
 
 -debug  
 
Заставляет
Cpp создавать временный файл. Этот файл
обычно называется ``/tmp/fvwmrcXXXXXX''
 
 
   
 Опции конфигурации 

 
FvwmCpp определяет следующие переменные при обработке
файла:
 
 
 TWM_TYPE 
 
Всегда устанавливается в ``fvwm''.
 
 SERVERHOST 
 
Имя машины, на которой запущен X Server.
 
 CLIENTHOST 
 
Имя машины, на которой запущен  fvwm95 .
 
 HOSTNAME 
 
Имя машины, запускающей  fvwm95 . Обычно такое
же, как и CLIENTHOST.
 
 OSTYPE 
 
Операционная система на машине CLIENTHOST.
 
 USER  
 
Имя пользователя, запускающего  fvwm95 .
 
 VERSION 
 
Версия X11.
 
 REVISION 
 
Подверсия X11.
 
 VENDOR 
 
Производитель X сервера.
 
 RELEASE 
 
Номер выпуска X сервера.
 
 WIDTH  
 
Ширина экрана в точках.
 
 HEIGHT 
 
Высота экрана в точках.
 
 X_RESOLUTION 
 
Похоже на отношение расстояние/пиксел по горизонтали.
 
 Y_RESOLUTION 
 
Похоже на отношение расстояние/пиксел по вертикали.
 
 PLANES 
 
Количество цветовых плоскостей для дисплея X сервера
 
 BITS_PER_RGB 
 
Количество бит в каждой rgb-тройке.
 
 CLASS 
 
Визуальный класс X11, например, PsuedoColor.
 
 COLOR 
 
Yes или No; Yes, если класс дисплея не StaticGrey
или GreyScale.
 
 FVWM_VERSION 
 
Номер версии  fvwm95 , например, 2.0
 
 OPTIONS 
 
Некоторая комбинация SHAPE, XPM, NO_SAVEUNDERS, и
Cpp, определенная в файле configure.h во время
компиляции.
 
 FVWMDIR 
 
Каталог, в котором  fvwm95  ищет .fvwm95rc и
модули по умолчанию; определяется при компиляции.
 
 
   
 ПРИМЕР(Ы) 

 
#define TWM_TYPE fvwm
#define SERVERHOST spx20
#define CLIENTHOST grumpy
#define HOSTNAME grumpy
#define OSTYPE SunOS
#define USER nation
#define HOME /local/homes/dsp/nation
#define VERSION 11
#define REVISION 0
#define VENDOR HDS human designed systems, inc. (2.1.2-D)
#define RELEASE 4
#define WIDTH 1280
#define HEIGHT 1024
#define X_RESOLUTION 3938
#define Y_RESOLUTION 3938
#define PLANES 8
#define BITS_PER_RGB 8
#define CLASS PseudoColor
#define COLOR Yes
#define FVWM_VERSION 2.0 pl 1
#define OPTIONS SHAPE XPM Cpp
#define FVWMDIR /local/homes/dsp/nation/modules

 

 
   
 АВТОР(Ы) 

 
FvwmCpp - это результат случайной битовой мутации на жестком
диске, предположительно произошедшей под воздействием
космической радиации или по каким-либо другим причинам.
 
Перевел
с английского Виктор Вислобоков
(2:5054/ 8.34@Fidonet.org )
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 Вызов 
 Опции конфигурации 
 ПРИМЕР(Ы) 
 АВТОР(Ы) 
 
 
 
 
 
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