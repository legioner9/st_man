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
 
 
 
 koi8-r (7) >>  koi8-r  (7)   ( Русские man: Макропакеты и соглашения )   koi8-r  (7)   ( Linux man: Макропакеты и соглашения ) 

   
 НАЗВАНИЕ 

koi8-r - Русский Сетевой Набор Символов в восьмеричном, десятичном и шестнадцатеричном виде
   
 ОПИСАНИЕ 

KOI8-R является фактически стандартным набором символов для кодировки русских текстов
во многих Unix-подобных операционных системах. KOI8-R является наследником для KOI-8,
и де-факто стандартом для интернет-почты, новостей, веб-сайтов и других интерактивных сервисов
по всей территории бывшего СССР.
 

KOI8-R определяется стандартом RFC1489 (Зарегистрированным Набором Русских Символов -
Registration of a Cyrillic Character Set).
 
   
 ЗАМЕЧАНИЯ 

KOI8-R был разработан для смешанных англо-русских текстов, и поэтому в нем содержатся
только русские символы, так что если вам нужны украинские, белорусские и т.п. символы, 
то попробуйте использовать наборы ISO-IR-111, или KOI8-U (украинский набор символов),
или KOI8-C (для древних русских текстов).
 

Более полный набор кириллических символов определен в наборе ISO-8859-5.
 
   
 Символы KOI8-R 

Следующая таблица показывает символы из набора KOI8-R, 
являющиеся печатными и не перечисленные в документации к
 ascii (7).

 
 
 Oct Dec Hex Символ Описание 
 
 200 128 80 ─ ОДИНАРНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ 
 201 129 81 │ ОДИНАРНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ 
 202 130 82 ┌ ОДИНАРНАЯ УГЛОВАЯ ЛИНИЯ ВНИЗ И НАПРАВО 
 203 131 83 ┐ ОДИНАРНАЯ УГЛОВАЯ ЛИНИЯ ВНИЗ И НАЛЕВО 
 204 132 84 └ ОДИНАРНАЯ УГЛОВАЯ ЛИНИЯ ВВЕРХ И НАПРАВО 
 205 133 85 ┘ ОДИНАРНАЯ УГЛОВАЯ ЛИНИЯ ВВЕРХ И НАЛЕВО 
 206 134 86 ├ ОДИНАРНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ С ЛИНИЕЙ ВПРАВО 
 207 135 87 ┤ ОДИНАРНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ С ЛИНИЕЙ ВЛЕВО 
 210 136 88 ┬ ОДИНАРНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ С ЛИНИЕЙ ВНИЗ 
 211 137 89 ┴ ОДИНАРНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ С ЛИНИЕЙ ВВЕРХ 
 212 138 8A ┼ ОДИНАРНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ С ОДИНАРНОЙ ВЕРТИКАЛЬНОЙ ЛИНИЕЙ 
 213 139 8B ▀ ПОЛОВИНА ПРЯМОУГОЛЬНИКА ВВЕРХУ 
 214 140 8C ▄ ПОЛОВИНА ПРЯМОУГОЛЬНИКА ВНИЗУ 
 215 141 8D █ ПОЛНЫЙ ПРЯМОУГОЛЬНИК 
 216 142 8E ▌ ПОЛОВИНА ПРЯМОУГОЛЬНИКА СЛЕВА 
 217 143 8F ▐ ПОЛОВИНА ПРЯМОУГОЛЬНИКА СПРАВА 
 220 144 90 ░ ЛЕГКОЕ ЗАПОЛНЕНИЕ 
 221 145 91 ▒ СРЕДНЕЕ ЗАПОЛНЕНИЕ 
 222 146 92 ▓ ТЕМНОЕ ЗАПОЛНЕНИЕ 
 223 147 93 ⌠ ВЕРХНЯЯ ПОЛОВИНА ИНТЕГРАЛА 
 224 148 94 ■ МАЛЕНЬКИЙ КВАДРАТ 
 225 149 95 ∙ ТОЧКА В ЦЕНТРЕ СЛЕВА 
 226 150 96 √ КОРЕНЬ 
 227 151 97 ≈ ПРИМЕРНО РАВНО 
 230 152 98 ≤ МЕНЬШЕ ИЛИ РАВНО 
 231 153 99 ≥ БОЛЬШЕ ИЛИ РАВНО 
 232 154 9A   ПОЛНЫЙ ПРОБЕЛ 
 233 155 9B ⌡ НИЖНЯЯ ЧАСТЬ ИНТЕГРАЛА 
 234 156 9C ° ЗНАК ГРАДУСА 
 235 157 9D ² ЦИФРА ДВА ВВЕРХУ МЕЛКИМ ШРИФТОМ (В СТЕПЕНИ ДВА) 
 236 158 9E · ТОЧКА В ЦЕНТРЕ 
 237 159 9F ÷ ЗНАК ДЕЛЕНИЯ 
 240 160 A0 ═ ДВОЙНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ 
 241 161 A1 ║ ДВОЙНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ 
 242 162 A2 ╒ ДВОЙНАЯ ЛИНИЯ ВПРАВО И ОДИНАРНАЯ ЛИНИЯ ВНИЗ 
 243 163 A3 ё КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ё 
 244 164 A4 ╓ ДВОЙНАЯ ЛИНИЯ ВНИЗ И ОДИНАРНАЯ ЛИНИЯ ВПРАВО 
 245 165 A5 ╔ ДВОЙНАЯ ЛИНИЯ ВНИЗ И ВПРАВО 
 246 166 A6 ╕ ОДИНАРНАЯ ЛИНИЯ ВНИЗ И ДВОЙНАЯ ВЛЕВО 
 247 167 A7 ╖ ДВОЙНАЯ ЛИНИЯ ВНИЗ И ОДИНАРНАЯ ВЛЕВО 
 250 168 A8 ╗ ДВОЙНАЯ ЛИНИЯ ВНИЗ И ВЛЕВО 
 251 169 A9 ╘ ОДИНАРНАЯ ЛИНИЯ ВВЕРХ И ДВОЙНАЯ ЛИНИЯ ВПРАВО 
 252 170 AA ╙ ДВОЙНАЯ ЛИНИЯ ВВЕРХ И ОДИНАРНАЯ ЛИНИЯ ВПРАВО 
 253 171 AB ╚ ДВОЙНАЯ ЛИНИЯ ВВЕРХ И ВПРАВО 
 254 172 AC ╛ ОДИНАРНАЯ ЛИНИЯ ВВЕРХ И ДВОЙНАЯ ЛИНИЯ ВЛЕВО 
 255 173 AD ╜ ДВОЙНАЯ ЛИНИЯ ВВЕРХ И ОДИНАРНАЯ ЛИНИЯ ВЛЕВО 
 256 174 AE ╝ ДВОЙНАЯ ЛИНИЯ ВВЕРХ И ВЛЕВО 
 257 175 AF ╞ ОДИНАРНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ДВОЙНАЯ ЛИНИЯ ВПРАВО 
 260 176 B0 ╟ ДВОЙНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ОДИНАРНАЯ ЛИНИЯ ВПРАВО 
 261 177 B1 ╠ ДВОЙНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ДВОЙНАЯ ЛИНИЯ ВПРАВО  
 262 178 B2 ╡ ОДИНАРНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ДВОЙНАЯ ЛИНИЯ ВЛЕВО 
 263 179 B3 Ё КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ё 
 264 180 B4 ╢ ДВОЙНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ОДИНАРНАЯ ЛИНИЯ ВЛЕВО 
 265 181 B5 ╣ ДВОЙНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ДВОЙНАЯ ЛИНИЯ ВЛЕВО 
 266 182 B6 ╤ ДВОЙНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ И ОДИНАРНАЯ ЛИНИЯ ВНИЗ 
 267 183 B7 ╥ ДВОЙНАЯ ЛИНИЯ ВНИЗ И ОДИНАРНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ 
 270 184 B8 ╦ ДВОЙНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ И ЛИНИЯ ВНИЗ 
 271 185 B9 ╧ ДВОЙНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ И ОДИНАРНАЯ ЛИНИЯ ВВЕРХ 
 272 186 BA ╨ ОДИНАРНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ И ДВОЙНАЯ ЛИНИЯ ВВЕРХ 
 273 187 BB ╩ ДВОЙНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ И ДВОЙНАЯ ЛИНИЯ ВВЕРХ 
 274 188 BC ╪ ДВОЙНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ И ОДИНАРНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ 
 275 189 BD ╫ ДВОЙНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ОДИНАРНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ 
 276 190 BE ╬ ДВОЙНАЯ ВЕРТИКАЛЬНАЯ ЛИНИЯ И ДВОЙНАЯ ГОРИЗОНТАЛЬНАЯ ЛИНИЯ 
 277 191 BF © ЗНАК КОПИРАЙТА 
 300 192 C0 ю КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ю 
 301 193 C1 а КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА А 
 302 194 C2 б КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Б 
 303 195 C3 ц КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ц 
 304 196 C4 д КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Д 
 305 197 C5 е КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Е 
 306 198 C6 ф КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ф 
 307 199 C7 г КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Г 
 310 200 C8 х КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Х 
 311 201 C9 и КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА И 
 312 202 CA й КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Й 
 313 203 CB к КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА К 
 314 204 CC л КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Л 
 315 205 CD м КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА М 
 316 206 CE н КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Н 
 317 207 CF о КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА О 
 320 208 D0 п КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА П 
 321 209 D1 я КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Я 
 322 210 D2 р КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Р 
 323 211 D3 с КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА С 
 324 212 D4 т КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Т 
 325 213 D5 у КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА У 
 326 214 D6 ж КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ж 
 327 215 D7 в КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА В 
 330 216 D8 ь КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ь 
 331 217 D9 ы КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ы 
 332 218 DA з КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА З 
 333 219 DB ш КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ш 
 334 220 DC э КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Э 
 335 221 DD щ КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Щ 
 336 222 DE ч КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ч 
 337 223 DF ъ КИРИЛЛИЧЕСКАЯ СТРОЧНАЯ БУКВА Ъ 
 340 224 E0 Ю КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ю 
 341 225 E1 А КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА А 
 342 226 E2 Б КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Б 
 343 227 E3 Ц КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ц 
 344 228 E4 Д КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Д 
 345 229 E5 Е КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Е 
 346 230 E6 Ф КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ф 
 347 231 E7 Г КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Г 
 350 232 E8 Х КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Х 
 351 233 E9 И КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА И 
 352 234 EA Й КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Й 
 353 235 EB К КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА К 
 354 236 EC Л КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Л 
 355 237 ED М КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА М 
 356 238 EE Н КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Н 
 357 239 EF О КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА О 
 360 240 F0 П КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА П 
 361 241 F1 Я КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Я 
 362 242 F2 Р КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Р 
 363 243 F3 С КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА С 
 364 244 F4 Т КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Т 
 365 245 F5 У КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА У 
 366 246 F6 Ж КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ж 
 367 247 F7 В КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА В 
 370 248 F8 Ь КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ь 
 371 249 F9 Ы КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ы 
 372 250 FA З КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА З 
 373 251 FB Ш КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ш 
 374 252 FC Э КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Э 
 375 253 FD Щ КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Щ 
 376 254 FE Ч КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ч 
 377 255 FF Ъ КИРИЛЛИЧЕСКАЯ ПРОПИСНАЯ БУКВА Ъ 
 
 

   
 СМ. ТАКЖЕ 

 ascii (7),

 iso-8859-7 (7)

(еще пока не создано),
 RFC1489 ,

 http://koi8.pp.ru/ 

 

 
   Index 
 
 НАЗВАНИЕ 
 ОПИСАНИЕ 
 ЗАМЕЧАНИЯ 
 
 Символы KOI8-R 
 
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