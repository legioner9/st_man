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
 
 
 
 FvwmForm (1)   FvwmForm  (1)   ( Solaris man: Команды и прикладные программы пользовательского уровня ) >>  FvwmForm  (1)   ( Русские man: Команды и прикладные программы пользовательского уровня ) 
 
   
 НАЗВАНИЕ 

 
FvwmForm - модуль ввода форм для fvwm95
 
   
 СИНТАКСИС 

 
FvwmForm должен вызываться fvwm95. Он не будет работать из
командной строки.
 
   
 ОПИСАНИЕ 

 
FvwmForm предоставляет механизм для пользовательского
ввода и выполнения соответствующих действий. Им является
форма, в которой пользователь может заполнить поля ввода
и выбрать действия, которые затем выполнит fvwm95. Форма содержит
пять типов элементов: текстовые метки, однострочные поля
ввода, элементы взаимоисключающего выбора (radiobuttons),
элементы независимого выбора (checkbuttons) и кнопки.
Эти пункты выравниваются в несколько строк, с очень гибким
размещением.
 
Текстовая
метка выполняет только функцию, вытекающую из ее
названия. В нее ничего нельзя ввести. Поле ввода может
быть использовано для редактирования однострочной строки.
FvwmForm предоставляет клавиши управления перемещения
курсором в стиле Emacs. Функции вырезания и копирования в ней
отсутствуют.
 
Элемент выбора содержит в себе несколько вариантов
выбора. Элемент
выбора сам по себе является логическим обьектом, который
не имеет каких-либо других особенностей. Каждый вариант
выбора отображается как нажимаемая кнопка, за которой
следует поясняющая текстовая метка. В процессе выбора
исключающий вариант выбора показывается как кружок в
центре, в то время как дополняющий показывает квадратик.
 
Кнопка при нажатии посылает назначенные ей
команды для fvwm95.
 
FvwmForm делает подстановку переменных в текст
команды для отражения пользовательского ввода.
 
   
 Инициализация 

 
FvwmForm использует тот же файл конфигурации (обычно
.fvwm95rc в домашнем каталоге пользователя), что и fvwm95.
При использовании модуля FvwmForm для множества разных
форм ввода просто создайте на него символьные ссылки с
другими именами, и они будут трактоваться как различные
модули. Или вы можете вызвать FvwmForm с необязательным
парамером, который он будет использовать как имя вместо
настоящего имени (т.е. например, `Module FvwmForm QuitVerify').
Этот путь даже не требует создания символьных
ссылок.
 
Убедитесь, что в параметр ModulePath в Вашем .fvwm95rc включен путь
до модуля FvwmForm.
При вызове модуля FvwmForm из окна (например, из окна
меню) все команды, посылаемые им для fvwm95, будут
иметь контекст этого окна.
 
   
 Конфигурация 

 
В файле .fvwm95rc могут быть установлены следующие опции.
Заметим, что подстрока "FvwmForm" должна быть
соответствующим образом изменена,
если используется модуль с другим именем.
 
Порядок опций
имеет важное значение. Обычно цвета и
шрифты определяются первыми. Строки, текстовые метки и
элементы ввода должны появляться в требуемом логическом
порядке.
 
 
 *FvwmFormGrabServer 
 
Эта опция указывает FvwmForm, что необходимо захватывать указатель мыши
при старте. Она полезна для таких вещей, как проверка
разрегистрации или выхода.
 
 *FvwmFormWarpPointer 
 
Эта опция указывает FvwmForm, что необходимо помещать укзатель мыши в
его окно при старте. Она сохраняет для пользователя
возможность перемещать мышь.
 
 *FvwmFormPosition   x y 
 
Помещает окно FvwmForm на экран по координатам ( x ,  y ).
При преобразовании отрицательное значение  x  (и,
соответственно,  y ) определяет расстояние от правой (и, соответственно,
нижней) стороны экрана.
 
Если данная опция пропущена, FvwmForm запускается в
центре экрана.
 
 *FvwmFormBack   цвет 
 
Определяет цвет фона для окна FvwmForm.
 
 *FvwmFormFore   цвет 
 
Определяет цвет шрифта при выводе
текста.
 
 *FvwmFormItemBack   цвет 
 
Определяет цвет фона для окон ввода текста и кнопок.
 
 *FvwmFormItemFore   color 
 
Определяет цвет шрифта для строк ввода текста и меток
кнопок.
 
 *FvwmFormFont   font 
 
Определяет шрифт для отображения текста.
 
 *FvwmFormButtonFont   font 
 
Определяет шрифт меток для кнопок.
 
 *FvwmFormInputfont   font 
 
Определяет шрифт для полей ввода текста. Этот шрифт должен
иметь фиксированную ширину.
 
 *FvwmFormLine   выравнивание 
 
Начинает новую строку формы. Строка может содержать
произвольное число элементов, после которых могут быть
указаны их опции. Окно FvwmForm может иметь
произвольное число строк. Ширина окна определяется
самой длинной строкой.
 
Выравнивание элементов в
строке задается параметром
 выравнивание , который может принимать одно из
следующих значений:
 
 
 
 
 left   
 
Элементы выравниваются по левому краю
окна.
 
 right   
 
Элементы выравниваются по правому краю
окна.
 
 center   
 
Элементы помещаются по центру краю окна.
 
 expand   
 
Если задан только один элемент в строке,
то этот элемент центрируется в окне. Если
задано два или более, то они расширяются
до заполнения свободного места окна.
 
 
 

 
 *FvwmFormText   строка 
 
Отображает  строку  как обычный текст. Окончания строк
должны достигаться при помощи многократных опций
*FvwmFormLine и *FvwmFormText. Свободные места могут
быть использованы для предоставления дополнительных
разделителей между элементами.
 
 *FvwmFormInput   имя размер начальное_значение 
 
Определяет поле ввода текста с именем  имя . Для редактирования
используется подокно шириной указанного  размера .
Если задано  начальное_значение , то поле будет
устанавливаться в него каждый раз при запуске или перезапуске
FvwmForm. По умолчанию начальное значение устанавливается в
``''.
 
 *FvwmFormSelection   имя тип 
 
Эта опция запускает элемент выбора с указанным  именем . Его
варианты выбора должны быть определены в следующих
строках. Параметр  тип  может принимать одно из следующих
значений:
 
 
 
 
 single   
 
Взаимоисключающий выбор
(RadioButtons).
 
 multiple   
 
Множественный выбор
(CheckButtons).
 
 
 

 
 *FvwmFormChoice   имя значение   on | off   строка 
 
Задает вариант выбора для элемента выбора. Вариант
выбора имеет указанные  имя  и  значение . В качестве метки
справа от кнопки будет выведена указанная  строка .
 
Вариант
выбора будет назначать определенное начальное
состояние (``on'' помечает как выбранный) при запуске или
перезапуске FvwmForm.
Заметим, что
если выбор исключающий, то FvwmForm не будет
определять противоречия в начальных состояниях
вариантов выбора, т.е. два или ни один из вариантов
выбора могут быть помечены как выбранные. Одако, когда
пользователь выбирает варианты, FvwmForm будет
позволять выбрать только один.
 
 *FvwmFormButton   тип строка   [клавиша] 
 
Эта опция определяет обычную кнопку. Кнопка имеет  string  в
качестве метки и выполняет установленную команду Fvwm
 command  при нажатии. Команды должны быть
заданы с помощью опции *FvwmFormCommand.
 
Необязательный параметр  key  задает горячую клавишу,
которая активирует кнопку. Это может быть управляющий
символ типа ^@, ^A, ..., ^_ или функциональная
клавиша типа F1, F2, ..., F35. Управляющие клавиши,
которые используются для перемещения курсора в поле
ввода текста не могут активировать кнопку, за
исключением TAB, RETURN, LINEFEED, которые могут
активировать кнопку, когда курсор находится в
последнем из полей ввода текста.
 
Поведение кнопки определяется ее  типом :
 
 
 
 
 continue 
 
FvwmForm будет продолжать выполнение после
запуска набора команд.
 
 restart 
 
После запуска набора команд FvwmForm будет
сбрасывать все значения для инициализации
и затем продолжать выполнение.
 
 quit 
 
FvwmForm будет завершаться после запуска
набора команд.
 
 
 

 
 *FvwmFormCommand   команда 
 
Данная опция определяет команду  fvwm95 , ассоциированную
с текущей кнопкой. Команды, которые появляются перед
любой из опций *FvwmFormButton, будут выполнены при
старте модуля. Это полезно для выдачи звукового
сигнала для привлечения внимания или предупреждения
пользователя.
 
Перед посылкой каждой из команд к  fvwm95 , FvwmForm
распознает переменные в следующих формах, и
присваивает им значения.
 
 
 
 
 $(name) 
 
Если  name  соответствует полю ввода текста,
то результатом является строка, введенная
пользователем. Специальные символы, такие
как ", `, и ' будут предварены символом
обратная косая черта (backslash).
 
Если  name  соответствует варианту выбора,
то результатом является значение этого
выбора (как задано в *FvwmFormChoice),
если данный вариант был выбран. Если он не
был выбран, то результатом будет пустая
строка.
 
Если  name  соответствует элементу выбора,
то результатом является список выбранных
значений всех его выриантов выбора.
 
 $(name?string) 
 
Если  name  - поле ввода текста и значение
 name  не пустая строка, то результатом
является  string , с рекурсивной
подстановкой переменной. Если пользователь
ввел пустую строку, то результат
пустой.
 
Если  name  это вариант выбора и он выбран,
то результат это  string , с рекурсивной
подстановкой переменной. Если вариант
выбора не выбран, то результат пустой.
 
 $(name!string) 
 
То же, что и выше, за исключением того, что
придается условия преобразования.
 
 
 

 
 
   
 Пример 1 - Подтверждение выхода 

 
Этот пример симулирует способ mwm'а для подтверждения
разрегистрации.
 
 
*QuitVerifyGrabServer
*QuitVerifyWarpPointer
*QuitVerifyFont         *helvetica*m*r*n*14*
*QuitVerifyButtonFont   *helvetica*m*o*n*14*
*QuitVerifyFore         Black
*QuitVerifyBack         Light Gray
*QuitVerifyItemFore Wheat
*QuitVerifyItemBack Gray50
# begin items
*QuitVerifyCommand  Beep
*QuitVerifyLine         center
*QuitVerifyText         "Do you really want to logout?"

*QuitVerifyLine         expand
*QuitVerifyButton   quit     "Logout"  ^M
*QuitVerifyCommand  Quit
*QuitVerifyButton   quit     "Cancel"  ^[
*QuitVerifyCommand  Nop
# Fvwm window style
Style ``QuitVerify'' NoTitle, NoHandles, BorderWidth 3

 

 
   
 Пример 2 - Удаленная регистрация 

 
Этот пример позволяет пользователю вводить имя хоста и
необязательное имя пользователя на удаленной машине и
открывать окно xterm с удаленного хоста.
 
 
*RloginWarpPointer
*RloginFont         *helvetica*m*r*n*14*
*RloginButtonFont   *helvetica*m*o*n*14*
*RloginInputFont    *cour*m*r*n*14*
*RloginFore         Black
*RloginBack         Light Gray
*RloginItemFore          Wheat
*RloginItemBack          Gray50
# begin items
*RloginLine         center
*RloginText         "Login to Remote Host"
*RloginLine         center
*RloginText         "Host:"
*RloginInput        HostName  20   ""
*RloginLine         center
*RloginSelection    UserSel   single
*RloginChoice       Default   Default   on   "same user"
*RloginChoice       Custom    Custom    off  "user:"
*RloginInput        UserName  10   ""
*RloginLine         expand
*RloginButton       quit "Login"        ^M
*RloginCommand Exec   exec rsh $(Custom?-l  )  xterm -T xterm@ -display $HOSTDISPLAY &
*RloginButton       restart   "Clear"
*RloginButton       quit "Cancel"  ^[
*RloginCommand Nop

 

 
   
 Пример 3 - Захват окна 

 
Этот пример предоставляет инструмент для работы с xwd,
xwud и xpr.
 
 
*CaptureFont        *helvetica*m*r*n*14*
*CaptureButtonFont  *helvetica*m*o*n*14*
*CaptureInputFont   *cour*m*r*n*14*
*CaptureLine        center
*CaptureText        "Capture Window"
*CaptureLine        left
*CaptureText        "File: "
*CaptureInput       file      25   "/tmp/Capture"
*CaptureLine        left
*CaptureText        "Printer: "
*CaptureInput       printer        20   "ps1"
*CaptureLine        expand
*CaptureSelection   PtrType   single
*CaptureChoice      PS   ps   on   "PostScript"
*CaptureChoice      Ljet ljet off  "HP LaserJet"
*CaptureLine        left
*CaptureText        "xwd options:"
*CaptureLine        expand
*CaptureSelection   Options   multiple
*CaptureChoice      Brd  -nobdrs   off   "No border"
*CaptureChoice      Frm  -frame    on    "With frame"
*CaptureChoice      XYZ  -xy       off   "XY format"
*CaptureLine        expand
*CaptureButton      continue   "Capture" ^M
*CaptureCommand     Exec  exec xwd -out   &
*CaptureButton      continue  "Preview"
*CaptureCommand     Exec  exec xwud -in  &
*CaptureButton      continue  "Print"
*CaptureCommand     Exec  xpr -device   | lpr -P  &
*CaptureButton      quit      "Quit"

 

 
   
 ОШИБКИ 

 
Имеется жесткий предел на число элементов в форме.
 
Отчет об ошибках посылайте на  ztfeng@math.princeton.edu .
 
   
 ПРАВА 

 
FvwmForm - это оригинальная работа Thomas Zuwei Feng.
 
Copyright Feb 1995, Thomas Zuwei Feng. Предоставляется без
каких-либо гарантий. Используйте программу на свой страх и
риск. Права на использование, распостранение и модификацию
представляются при соблюдении copyright.
 
 

 
   Index 
 
 НАЗВАНИЕ 
 СИНТАКСИС 
 ОПИСАНИЕ 
 Инициализация 
 Конфигурация 
 Пример 1 - Подтверждение выхода 
 Пример 2 - Удаленная регистрация 
 Пример 3 - Захват окна 
 ОШИБКИ 
 ПРАВА 
 
 
 
 
 
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