import UIKit
import Foundation


/*
 Кортежи
 */
// Задание №1
/*
 Объявите константу и запишите в нее свое имя.
 Объявите переменную типа UInt8 и запишите в нее свой возраст.
 Объявите кортеж и явно определите его тип данных, как (name: String, age: Int).
 В первый элемент кортежа запишите значение константы с именем.
 Во второй элемент кортежа запишите значение из переменной с вашим возрастом.
 

        let name = "Alex"
        let age:UInt8 = 16
        var tuple: (name: String, age: Int)
        tuple.name = name
        tuple.age = Int(age)
 */
 //Задание №2
/*
 Объявите кортеж, способный хранить три значения типа Int16.
 Одним выражением объявите две константы типа Int и проинициализуйте им произвольные значения.
 В первые два значения кортежа запишите значения из данных переменных, а в третий их сумму.
         var tuple1: (Int16,Int16,Int16)
        let (a,b)=(1,2)
        tuple1=(Int16(a),Int16(b),Int16(a+b))
 */

//Задание №5
/*
 Вам даны две целочисленные переменные со значениями 12 и 21. Поменяйте их значения местами
 без использования буферной переменной и математических операций.
        var aa=12
        var bb=21
        (aa,bb)=(bb,aa)
print(aa,bb)
 */

/*
 Задание 6

 1) Создайте кортеж с двумя параметрами: ваш любимый фильм и ваше любимое число. Все элементы кортежа должны быть именованными.
 2) Одним выражением запишите каждый элемент кортежа в две константы. Проверьте значения параметров с помощью вывода в области результатов.
 3) Создайте псевдоним типа, используемого для первого кортежа, назовите его Man. Создайте второй кортеж типа Man, но описывающий другого человека (с другими значениями). Обратите внимание, что элементы кортежа так же должны иметь имена.
 4) Обменяйте значения в кортежах между собой.
 5) Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 
        var myTup = (myFilm:"Film",number1:34)
        let (constFilm,constNumber) = myTup
        print(constFilm,constNumber)
        typealias Man = (myFilm: String, number1: Int)
        var tul2: Man = ("Film2",12)

        var bufTul = myTup

        myTup = tul2
        tul2 = bufTul

        var tuple3 = (myTup.number1,tul2.number1,myTup.number1-tul2.number1)
print(tuple3)
 */

//Диапазоны RANGE
/*
for s in 1...9 {
    print(s)
}
for d in 1..<10{
    print(d)
}*/
/*
 Задание 6

 Создайте диапазон целых чисел от -100 до 100 и инициализируйте его константе range
 Создайте переменную item типа UInt со значением 21.
 Создайте переменную типа Bool и запишите в нее результат проверки наличия значения переменной item в диапазоне range. Каким образом произвести данную проверку?
 
let range = -100...100
var item: UInt = 21
var inThere = range.contains(Int(item))
print(inThere)
 */
/*
 Задание 7

 Создайте диапазон, содержащий все заглавные латинские символы.
 Какими будут значения методов min() и max() для этого диапазона?
 Какими будут значения свойств lowerBound и upperBound для этого диапазона?
 
var ABC = "A"..<"Z"
 //max i min для числових диапазонов
print(ABC.lowerBound)
print(ABC.upperBound)
 */

//Операторы управлеия Глава 10
/*
 Задание 1
 Напишите код, который будет выводить на консоль персонализированное приветствие пользователю в зависимости от его имени.
 Пусть в константе name хранится имя пользователя. Используя операторы управления (условия if и ветвления switch) реализуйте различный вывод на консоль в зависимости от значения в константе name
 Покажите варианты решения с использованием switch и if. Определите вывод на консоль для трех произвольных имен, а так же в блоке “во всех остальных случаях” (default и else).

var name = "Dima"

switch name {
case "Dima":
    print("Hi \(String(describing: name))! I KNOW YOU!")
case "Lena":
    print("Hi \(String(describing: name))! YOU LOOK VERY BEAUTIFUL!")
default:
    print("HI! WHO ARE YOU? I DO NOT KNOW YOU")
}
name = "Lena1"
if name == "Dima"{
    print("Hi \(String(describing: name))! I KNOW YOU!")
}else if name == "Lena" {
    print("Hi \(String(describing: name))! YOU LOOK VERY BEAUTIFUL!")
}else{
    print("HI! WHO ARE YOU? I DO NOT KNOW YOU")
}
 */
/*
 Задание 2
 У вас есть логическая переменная open, которая может принять одно из двух доступных значений (true или false) var open = true или var open = false
 Вам необходимо создать новую переменную типа String и инициализировать ей строковое значение:
 – если open равно true, то инициализировать "открыто"
 – если open равно false, то инициализировать "закрыто"
 
var open: Bool = false
var dor: String = open ? "открыто":"закрыто"
print(dor)
 */
/*
 Задание 3

 Вам даны три переменные var1, var2 и var3 целочисленного типа Int
 Составьте программу, в конце которой в константе result будет находиться наибольшее из трех целочисленных значений.
 
var a = 20,b = 23,c = 20
let result: Int
if a>=b&&a>=c{
    result = a
}else if b>=a&&b>=c{
    result = b
}else{
    result = c
}
print(result)
 */
// Про треугольник
/*
 Задание 4

 Вы имеете три переменные-кортежа, содержащие координаты точек
 Напишите программу, которая определяет, может ли существовать треугольник с заданными координатами вершин

 Треугольник существует только тогда, когда сумма длин любых двух его сторон больше длины третьей.
 
// Поле кординат 10х10
var point1 = (1,1)
var point2 = (1,1)
var point3 = (8,6)
//определяем длину отрезков
var line1 = sqrt(
    pow(Double(point2.0 - point1.0), 2) +
    pow(Double(point2.1 - point1.1), 2)
)
var line2 = sqrt(
    pow(Double(point2.0 - point3.0), 2) +
    pow(Double(point2.1 - point3.1), 2)
)
var line3 = sqrt(
    pow(Double(point1.0 - point3.0), 2) +
    pow(Double(point1.1 - point3.1), 2)
)
if line1+line2>line3 {
    print("Такой треугольник существует")
    //вывод треугольника
    for p1 in 1...10{
        for p2 in 1...10{
            if  point3.0 == p1 && point3.1 == p2 ||
                point1.0 == p1 && point1.1 == p2 ||
                point2.0 == p1 && point2.1 == p2 {
                print("* ",terminator: "")
            }else{
                print("_ ", terminator: "")
                
            }
        }
        print("")
    }
}else{
    print("Такой треугольник не существует")
}
 */
/*
 Задание 5

 Переменная lang может принимать 2 значения: "ru", "en". Если она имеет значение "ru", то в переменную days запишите массив дней недели на русском языке, а если имеет значение "en" – то на английском
 Покажите решение задачи через конструкцию switch-case
 
var lang = "ru"
var days: [String] = []

switch lang {
case "ru":
    days = ["пн","вт","ср","чт","пт","сб","вс"]
case "en":
    days = ["mn", "ts", "wd", "th", "fr", "st", "sn"]
default:
    break
}
days
 */
/*
 Задание 6

 Основано на предыдущем задании
 У вас появилась дополнительная переменная chars, которая может принять два значения "up" и "down"
 Доработайте конструкцию switch-case таким образом, чтобы в зависимости от значения chars массив заполнялся большими или маленькими символами
 
var lang = "en"
var chars = "up"
var days: [String] = []

switch lang {
case "ru" where chars == "up" :
    days = ["ПН","ВТ","СР","ЧТ","ПТ","СБ","ВС"]
case "en" where chars == "up" :
    days = ["MN", "TS", "WD", "TH", "FR", "ST", "SN"]
case "ru" :
    days = ["пн","вт","ср","чт","пт","сб","вс"]
case "en":
    days = ["mn", "ts", "wd", "th", "fr", "st", "sn"]
default:
    break
}
days
 */
/*
 Задание 7

 1) Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation.
 Первые два – это числа с плавающей точкой. Они будут содержать операнды для выполнения операции.
 Третий элемент – строковое значение типа Character. Оно будет содержать указатель на проводимую операцию. Всего может быть четыре вида операций: +, -, *, /.
 2) Создайте константу типа Operation и инициализируйте ей произвольное значение, к примеру (3.1, 33, "+")
 3) Используя конструкцию switch-case вычислите значение операции, указанной в элементе для операндов operandOne и operandTwo. Оператор switch должен корректно отрабатывать любую из четырех операций.
 4) Проверьте правильность работы конструкции по для следующих операций:

 (3.1, 33, "+")
 (24.9, 22.32, "*")
 (11.3, 5, "/")
 (5, 2.5, "-")
 
typealias Operation = (operandOne: Double,operandTwo: Double,operation: Character)
var primer: Operation = (5, 2.5, "-")
var res: Double = 0
switch primer.operation {
case "+": print("\(primer.operandOne) + \(primer.operandTwo) = \(primer.operandOne + primer.operandTwo)")
case "*": print("\(primer.operandOne) * \(primer.operandTwo) = \(primer.operandOne * primer.operandTwo)")
case "/": print("\(primer.operandOne) / \(primer.operandTwo) = \(primer.operandOne / primer.operandTwo)")
case "-": print("\(primer.operandOne) - \(primer.operandTwo) = \(primer.operandOne - primer.operandTwo)")
default:
    break
}
 */

// Глава 11 Опциональные типы

/*
 Задание 5

 1) Создайте псевдоним типа String с именем Text
 2) Объявите три константы типа Text. Значения дух констант должны состоять только из цифр, а третьей – из букв и цифр
 3) С помощью оператора условия определите те константы, которые состоят только из цифр и выведите из на консоль

 Для преобразования строки в число (для проверки того, из чего она состоит) можно использовать функцию Int(_:)
 
typealias Text = String
let t1: Text = "12"
let t2: Text = "22"
let t3: Text = "d21"

if let number = Int(t1) {
    print(number)
}
if let number = Int(t2) {
    print(number)
}
if let number = Int(t3) {
    print(number)
}else{
    print("Not number!")
}
 */
/*
 Задание 6

 В задании используются результаты предыдущего задания
 1) Создайте псевдоним типа (numberOne: Text?, numberTwo: Text?) с именем TupleType.
 2) Создайте три переменные типа TupleType, содержащие следующие значения: ("190", "67"), ("100", nil), ("-65", "70").
 3) С помощью конструкции switch-case определите, какие из кортежей не содержат nil в своем составе и выведите значения их элементов на консоль
 

typealias TupleType = (numerOne: Text?, numberTwo: Text?)

var strTuple: TupleType = ("190", "67")
var strTuple1: TupleType = ("100", nil)
var strTuple2: TupleType = ("-65", "70")

switch strTuple {
case (let a, let b) where a != nil && b != nil:
    print("\(a!) \(b!)")
default:
    break
}
switch strTuple1 {
case (let a, let b) where a != nil && b != nil:
    print("\(a!) \(b!)")
default:
    break
}
switch strTuple2 {
case (let a, let b) where a != nil && b != nil:
    print("\(a!) \(b!)")
default:
    break
}
 */
/*
 Задание 7

 Представьте, что вы являетесь преподавателем курсов по шахматам. Ваши занятия посещают ученики и в конце каждого занятия получаю оценку.
 1) Создайте словарь, который будет содержать информацию о ваших студентах и об их успехах.

 Тип данных словаря – [String: [String: UInt]]
 Индекс – это фамилия ученика.
 Значение – еще один словарь, содержащий информацию о дате занятия и полученной оценке.
 В вашем электронном журнале должна находиться информация о трех учениках, по две оценки для каждого. Фамилии и даты придумайте самостоятельно.
 2) Подсчитайте средний балл каждого студента, средний балл группы, и выведите информацию на консоль.
 
var curs: [String:[String:UInt]] = ["Пупкин":["21.10.21":5,"23.10.21":3,"1.2.12":5],"Пуушкин":["25.10.21":4,"26.10.21":3],"Кукушкин":["10.10.21":5,"27.10.21":5]]
assert(!curs.isEmpty, "Словарь пустой!")
var sumStudentGrade: Float = 0
//сумма всех оценок для поиска средней оценки по курсу
var sumGrade: Float = 0
//количество оценок у студета
var countGrade: Float = 0
for key in curs.keys {
    print(key)
    print("Оценки:")
    print(curs[key]!.values)
    for number in Array(curs[key]!.values) {
        sumStudentGrade+=Float(number)
        countGrade+=1
        
    }
    print("Средняя оценка - \(sumStudentGrade/Float(curs[key]!.count))")
    sumGrade+=sumStudentGrade
    sumStudentGrade=0
}
print("Средняя оценка по курсу - \(sumGrade/countGrade)")
 */
/*Задание 8

 Основано на предыдущем задании
 Перед вам стоит задача внести в уже существующий словарь оценку за еще одно занятие для студента. Покажите, каким образом это можно сделать.
 
var curs: [String:[String:UInt]] = ["Пупкин":["21.10.21":5,"23.10.21":3,"1.2.12":5],"Пуушкин":["25.10.21":4,"26.10.21":3],"Кукушкин":["10.10.21":5,"27.10.21":5]]
assert(!curs.isEmpty, "Словарь пустой!")
var sumStudentGrade: Float = 0
//сумма всех оценок для поиска средней оценки по курсу
var sumGrade: Float = 0
//количество оценок у студета
var countGrade: Float = 0
// добавить запись про оценку студенту
var nameStudent = "Кукушкин"
if let _ = curs[nameStudent] {
    curs[nameStudent]!.updateValue(6, forKey: "11.11.11")
}
/*
 Из книги
 if var lessons = students["Усов"] {
     lessons["2019-02-05"] = 5
     students["Усов"] = lessons
 }
 */
for key in curs.keys {
    print(key)
    print("Оценки:")
    print(curs[key]!.values)
    for number in Array(curs[key]!.values) {
        sumStudentGrade+=Float(number)
        countGrade+=1
        
    }
    print("Средняя оценка - \(sumStudentGrade/Float(curs[key]!.count))")
    sumGrade+=sumStudentGrade
    sumStudentGrade=0
}
print("Средняя оценка по курсу - \(sumGrade/countGrade)")
 */
/*Задание 9 про шахматы
 
 1) Создайте псевдоним Coordinates для типа кортежа (alpha: Character?, num: Int?). Данный тип будет описывать координаты шахматной фигуры на игровом поле. Если вместо элементов кортежа стоит nil, значит фигура не находится на игровом поле.
 2) Создайте псевдоним Chessman для типа словаря [String:Coordinates]. Данный тип описывает шахматную фигуру на игровом поле. В ключе словаря должно хранится имя фигуры, например "White King", а в значении – кортеж, указывающий на координаты фигуры на игровом поле.
 3) Создайте переменный словарь figures типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.
 4) Создайте цикл, которая обходит всех элементы словаря (все фигуры), и проверяет, убита ли очередная фигура (элемент словаря figures), далее выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.
 
 
typealias Cooredinates = (alpha: Character?, num: Int?)
typealias Chessman = [String:Cooredinates]
var figures: Chessman = ["конь":("В",3), "пешка": ("А",3), "Король":(nil,nil)]
for figura in figures {
    print(figura.key)
    if let aBC = figura.value.alpha, let numberBord = figura.value.num {
        print("Кординаты фигуры на поле - \(aBC) \(numberBord)")
    }else{
        print("Фигура убита(")
    }
}
 */
//Шахматная доска с фигурами
/*
var arrWhiteChess = ["\u{2656}","\u{2658}", "\u{2657}","\u{2655}","\u{2654}","\u{2657}","\u{2658}","\u{2656}","\u{2659}"
                     ,"\u{2659}","\u{2659}","\u{2659}","\u{2659}","\u{2659}","\u{2659}","\u{2659}"]
var arrBlackChess = ["\u{265F}","\u{265F}","\u{265F}","\u{265F}","\u{265F}","\u{265F}","\u{265F}","\u{265F}",
                     "\u{265C}","\u{265E}","\u{265D}","\u{265B}","\u{265A}","\u{265E}","\u{265D}","\u{265C}"]

var arrayABC = ["A","B","C","D","E","F","G","H"]


var indexArrayABC = 0
var indexWhiteChess = 0
var indexBlackChess = 0
for x in 1...9{
    for y in 1...9{
        if x==1&&y>1{
            print(y-1, terminator: " ")// печать горизонтальных значений доски
        }else if x==1&&y==1{
            print(" ",terminator: " ")
            continue
        }else if x>1&&y==1{
            print(arrayABC[indexArrayABC], terminator: " ")// печать вертикальныйх значений доски
            indexArrayABC+=1
        }else if (x==2 && y > 1) || (x==3 && y > 1) {
            print("\(arrWhiteChess[indexWhiteChess]) ", terminator: "")
            indexWhiteChess+=1
        }else if (x==8 && y > 1) || (x==9 && y > 1) {
            print("\(arrBlackChess[indexBlackChess]) ", terminator: "")
            indexBlackChess+=1
        }else if (x>3&&y>1) && (x<8&&y>1) {
            print("_ ", terminator: "")
        }
    }
    print("\n")
}
 */

//Глава 12 Функции

/* Задание 4 Используя перегрузку (overloading) создайте две одноименные функции, которые могут принимать два однотипных параметра (Int или Double) и возвращают их произведение
 func multi (a:Int,b:Int)-> Int{a*b}
 func multi (a:Double,b:Double)-> Double{a*b}
 */

/*Задание 6
 
 Напишите функцию, которая производит подсчет стоимости аренды квартиры с учетом следующих условий:
 1. Один день аренды стоит 850 рублей
 2. При аренде от 3 дней вы получаете скидку в размере 550 рублей от общей суммы
 3. При аренде от 7 дней вы получаете скидку в размере 1620 рублей от общей суммы
 Функция должна принимать на вход количество дней, а возвращать итоговую сумму.
 Пример
 funcName(5) -> 3700
 funcName(9) -> 6030
 func payForRent (days:Int)-> Int{
     
     switch days {
     case 3...7:
         return (days*850)-550
     case 1..<3:
         return days*850
     default:
         return (days*850)-1620
     }
 }
 print(payForRent(days: 9))  
 */

/*Задание 8 Напишите функцию, которая повторяет заданную строку N раз.
 Функция принимает на вход значение типа String (строку для повторений) и значение типа Int (количество повторений) и возвращает полученный результат.
 Пример:
 funcName("Swift", 2) -> "SwiftSwift"
 funcName("Xcode", 0) -> ""
 
func repeatStr (str: String, repeatNum: Int)-> String{
    String(repeating: str, count: repeatNum) // сразу строкой
    //Array(repeating: str, count: repeatNum).joined(separator: "")// массивом
    
}
print("\(repeatStr(str: "Dima", repeatNum: 0))")
 */

/*Задание 9 Реализуйте функцию, которая высчитывает, сколько раз мяч пролетит мимо мамы (вниз и вверх)
 Мальчик находится на N-ом этаже в здании. Мама мальчика смотрит в окно на M-ом этаже здания. Мальчик выпускает из рук мячик, он летит вниз, отскакивает на (высота броска) * L, вновь летит вниз, вновь отскакивает на (высота предыдущего отскока) * L и т.д, пока не окончит отскакивать.
Функция должна принимать на вход следующие параметры:
 – высота одного этажа (h > 0)
 – этаж мальчика (N >= 2)
 – этаж мамы (M >= 1)
 – коэффициент отскока (L < 1)
 
func countJumpBol (heigthFloor: Float, floorBoy: Float, floorMam: Float, rateJump: Float)->Int{
    var countJump = 0
    var jump: Float = floorBoy*rateJump
    repeat {
        jump*=rateJump
        countJump+=2
    }while (jump>=floorMam)
    return countJump
}
 */

/* Задание 10Напишите функцию, которая принимает параметр типа String, а возвращает true (типа Bool) если в строке есть только уникальные символы , и false, если в ней есть хотя бы один повторяющийся символ.
func isUniqueString (str:String)->Bool{
    var sds: String
    var str1 = str
    while str1.count>1 {
        sds = String( str1.removeFirst())
        for s in str1{
            if sds == String(s){
                return false
            }
        }
    }
    return true
}
print(isUniqueString(str: "Unique Symbols"))
// или
func checkUniqueSymbols2(text: String) -> Bool {
return Set(text).count == text.count
}
 */

/*Задание 11 Напишите функцию, которая определяет, состоят ли две переданные в нее строки из одних и тех же символов
func symbolsIsEqualInStr (str1: String, str2: String)-> Bool{

    var strCheck = str1
    for s in str2 {
        if let firstIndex = strCheck.firstIndex(of: s){
            strCheck.remove(at: firstIndex)
        }else   {
            return false
        }
    }
    return strCheck.count==0
}
 */

/*Задание 12 Напишите функцию, которая принимает на вход целочисленный диапазон и возвращает из него все простые числа.

func getSimpleNumbers(from range: ClosedRange<Int>) -> [Int] {
    var arr = [Int]()
    for numberRange in range {
        if numberRange<3 {
            continue
        }
        for delitel in 2...numberRange {
            if numberRange%delitel == 0 && numberRange == delitel{
                arr.append(numberRange)
            }else if numberRange%delitel == 0 && numberRange != delitel{
                break
        }
    }
  }
    return arr
}
    getSimpleNumbers(from: 0...30)
 */

/*Задание 13 Реализуйте функцию pow(Int,Int),
  которая принимает два целочисленных элемента. Первый указывает на степень второго числа. Результат функции – второй аргумент функции, возведенный в степень (первый аргумент функции).
 Предполагается, что аргументы могут быть только целыми положительными числами
func powInt (degree:Int, number:Int) -> Int{
    var result = number
    for _ in 1..<degree{
       result*=number
    }
    return result
}
print(powInt(degree: 8, number: 4))
 */
/*
 Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
 
func triangular(_ n: Int) -> Int{
var coutn = 0

  if n<1{
    return 0
  }
for i in 1...n{
  coutn+=i
}
 return coutn
}
 */
/*
 You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
 The type of a and x can be String or Int.
 Return true if the array contains the value, false if not.
 

func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    return a.contains(x)
}
 */
/*
 Создайте функцию, которая принимает целое число в качестве аргумента и возвращает "Четное" для чётных чисел или "Нечётное" для нечетных чисел.
 
func evenOrOdd(_ number:Int) -> String {
   return number % 2 == 0 ?"Even":"Odd"
}
 */
/*
 Реализация функции, которая преобразует данное логическое значение в его строковое представление.

 Примечание: Будут даны только допустимые входные данные.
 
func booleanToString(_ b: Bool) -> String {
    return b ?"true":"false"
    // или String(b)
}
 */
/*
 Если задано число в месяц от 1 до 12, возвращаем в какой квартал года оно принадлежит целому числу.

 Например: второй месяц (февраль) является частью первого квартала; шестой месяц (июнь) - частью второго квартала; и одиннадцатый месяц (ноябрь) - частью четвертого квартала.

func quarter(of month: Int) -> Int {
    switch month {
    case 1...3:
        return 1
    case 4...6:
        return 2
    case 7...9:
        return 3
    default:
        return 4
    }
    //  или return (month + 2) / 3
  }
 */
/*
 Задан массив целых чисел как строк и чисел, возвращаем сумму значений массива как все числа.
 
//var arr = [9, 3, "7", "3"] as [Any]
//var sum = 0
//for x in arr{
//    if x is String{
//        sum+=(x as! NSString).integerValue
//        continue
//    }
//    sum+=x as! Int
//}
//return arr.reduce(0) { $0 + (Int("\($1)") ?? 0) }
 */
// Глава 13 Замыкания
/*Задание 1 1)Напишите замыкание, которое производит вывод на консоль сообщения "Hello, World!".
 2)Вызовите данное замыкание
 3)Какой тип данных у данного замыкания?
 let showHello = {
     print("Hello, World!")
 }
 showHello()
 */
/*Задание 3 Напишите замыкание, которое принимает на вход параметр типа String и выводит его значение на консоль.
 2) Вызовите данное замыкание
 3) Какой тип данных у данного замыкания?
 let showStr = { (stroka:String)->String in
     return stroka
 }
 showStr("Dima")
 */
/*Задание 4 Напишите замыкание, которое принимает на вход два целочисленных параметра и возвращает их сумму.
 2) Протестируйте работу данного замыкания
 3) Какой тип данных будет у данного замыкания?
 let sumNumber = { (num1: Int, num2: Int)->Int in
     return num1+num2
 }
 версия сокрашенная
 let sumNum: (Int,Int)->Int = {$0+$1}
 sumNumber(2,2)
 */
/*Задание 6 Напишите замыкание типа (Int, Int) -> Int, которое высчитывает разность двух переданных ему чисел.
 2) Напишите функцию, которая принимает на вход два целочисленных параметра, а так же замыкание типа (Int, Int) -> Int. Данное замыкание (третий аргумент функции) должно определять операцию, которая будет производиться в теле функции.
 3) Вызовите данную функцию и передайте ей два целых числа, а так же написанное в шаге 1 замыкание.
 4) Вызовите данную функцию и передайте ей два целых числа, а так же замыкание, производящее умножение данных чисел. Причем замыкание должно передаваться не через промежуточный параметр-хранилище, а непосредственно в качестве аргумента
 let razNum: (Int,Int)->Int = {$0-$1}
 func foo (_ num1:Int,_ num2:Int,_ closer:(Int,Int)->Int)->Int{closer(num1,num2)}
 foo(23, 3, razNum)
 foo(2, 4, +)
 */
/*Выбрать значение в массиве Int по заданому параментру (числа больше или меньше или равно)
 func filterEd(arr: [Int], closure: (Int)->Bool)->[Int]{
     var resultArr = [Int]()
     for arranged in arr {
         if closure(arranged){
             resultArr.append(arranged)
         }
     }
     return  resultArr
 }
 let arrrr =
 filterEd(arr: [10,21,32,13,33], closure: {$0==33})
 */
/* Задание 3 Алекс Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.
 
 func filterEd(arr:[Int],closure: (Int?,Int)->Bool)->Int{
     var result: Int?
     for number in arr {
         if closure(result,number){
             result = number
         }
     }
     return result ?? 0
 }
 var ferstElementArray =
 filterEd(arr: [1,3,1,4,5]){$0 == nil || $0! == $1 }

 var maxElementArray =
 filterEd(arr: [1,3,43,7]){$0 == nil || $0! < $1}

 var minElementArray =
 filterEd(arr: [1,3,43,7]){$0 == nil || $0! > $1}
 */
/*Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)

 func findMinMaxAbc (arr:[Character],closure: (UInt8?,UInt8?)->Bool)->Character?{
     var resCharacter:Character?
     if !arr.isEmpty {
         resCharacter = arr[0]
     }
     for element in arr{
         if closure(element.asciiValue, resCharacter?.asciiValue){
             resCharacter = element
         }
     }
     return resCharacter
 }
 var d =
 findMinMaxAbc(arr: ["A","a","z","Z"]){$0! < $1!}
 */

//Array chapter
/*
 Задание 4

 1)Создайте массив, состоящий из четырех целочисленных элементов

 2)Сделайте так, чтобы вместо второго и третьего элементов массива (с индексами 1 и 2) был элемент, содержащий сумму начального и конечного элементов данного массива. После этого в массиве должно остаться 3 элемента.

 3) Отсортируйте элементы по возрастанию
 
var arr2 = [1,2,3,4]
arr2.remove(at: 1)
arr2.remove(at: 1)
arr2.insert(arr2[0]+arr2[1], at: 1)
arr2.sort()
 or
var arr = [1,2,3,4]
arr.remove(at: 1)
arr[1] = arr[0]+arr[2]
arr // [1, 5, 4]
arr.sort() // [1, 4, 5]
*/
/*
 Задание 5

 1) Создайте массив, состоящий из всех целых чисел от 1 до 100

 2) Создайте пустой массив типа Array<Int>

 3) Проинициализируйте пустому массиву элементы с 25го по 50ый
 
var mas = Array(1...100)
var masEmptyInt = [Int]()
masEmptyInt = Array(mas[24...49])
 */
/*
 Задание 6

 1) Создайте массив arr из пяти элементов типа Character

 2) В массив arr вставьте вторым элементом (не вместо второго, а между первым и вторым) символ “z”

 3) Создайте переменную i типа UInt8 и проинициализируйте ей количество элементов массива arr.
 
var arr = ["a","b","c","d","f"]
arr.insert("z",at: 1)
var i  = (UInt8)(arr.count)
 */

//CodeWar
/*Если задана строка цифр, вы должны заменить любую цифру ниже 5 на '0' и любую цифру 5 и выше на '1'. Верните полученную строку.

 func fakeBin(digits: String) -> String {
  //your code here
    var strRes = ""
    for s in digits {
        if s.isNumber{
            let n  = Int(String(s))
            if n!>=5{
                strRes.append("1")
            }else {
                strRes.append("0")
            }
        }
    }
  return strRes
} // or return String(digits.map { Int(String($0))! >= 5 ?  "1" : "0" })
 */

/*
 Задание 6

 1) Объявите множество taskSet1, состоящий из всех целочисленных элементов от 1 до 10
 2) Объявите множество taskSet2, состоящий из всех целочисленных элементов от 5 до 15
 3) Создайте множество taskSet3, состоящий из элементов, которые входят и в taskSet1, и в taskSet2
 4) Создайте множество taskSet4, состоящий из элементов, которые не пересекаются в taskSet1 и taskSet2
 5) Запишите в переменную count типа UInt8 количество элементов в массиве taskSet4. Какое значение примет эта переменная?


var taskSet1 = Set (1...10)
var taskSet2 = Set (5...15)
var taskSet3 = taskSet1.union(taskSet2)
var taskSet4 = taskSet1.symmetricDifference(taskSet2)
print(taskSet4)
var count = UInt8(taskSet4.count)
print(type(of:count),count)
 */

/*
 Ваша цель - вернуть таблицу умножения для числа, которое всегда целое от 1 до 10.

func multi_table(_ number: Int) -> String {
    var result = ""
    for i in 1...10{
        if i==10{
            result.append("\(i) * \(number) = \(i*number)")
            break
        }
        result.append("\(i) * \(number) = \(i*number)\n")
    }
    return result
}
 */

/*
func digitize(_ num:Int) -> [Int] {
    var number = num
    var resultArrayNumbr: [Int] = Array()
    repeat {
        resultArrayNumbr.append(number%10)//заносим последнюю цифру
        number = number/10// передвигаемся в лево на одну цифру
    }while number%10>0 || number>0
            
    return resultArrayNumbr
}
 */

/*
 Создайте набор функций, который принимает Array<Int> и Int, n, и возвращает Array<Int> содержащий первые до n элементов из массива.
 
func take(_ arr: [Int], _ n: Int) -> [Int] {

    if n > arr.count{
        return arr
    }
   
    return Array(arr.prefix(upTo: n)) находит с начало массива и до переданого значения
}
var ar = [-82, 7, 43, -28, 56, -79, -29, 85, 24, -36, 49, 1, 95, -62, -20, -93, -84, -12, 91, 94, -17, 36, -25, -33, 63, 51, -89, -20, -61, -87, -93, 7, -29, 2, 28, 10, 3, 17, 8, -33, 90, 81, 24, -74, -36, -95, -31]
print (ar.count)
print(take(ar, 63))
 */

/*
 Эта ката о умножении заданного числа на восемь, если это четное число, и на девять иначе
 
func simpleMultiplication(_ num: Int) -> Int {
    return num%2==0 ? num*8:num*9
}
print(simpleMultiplication(9))
 */

/*
 Завершение функции квадратной суммы таким образом, что она квадратирует каждое число, переданное ей, а затем суммирует результаты вместе.
 
func squareSum(_ vals: [Int]) -> Int {
   var resultSum = 0
    for i in vals {
        resultSum+=i*i
    }
    return resultSum
}
print(squareSum([1,2,2]))
 */

/*
 Написать функцию bmi, которая вычисляет индекс массы тела (bmi = вес / высота 2)
 func bmi(_ weight: Int, _ height: Double) -> String {
     let BMI = Double(weight)/(height*height)
    print(BMI)
     if  BMI <= 18.5 {
         return "Underweight"
     } else if BMI <= 25.0{
         return "Normal"
     } else if BMI <= 30.0{
         return "Overweight"
     }else{
         return "Obese"
     }
 }
 switch Double(weight)/pow(height, 2) {
       case ...18.5: return "Underweight"
       case ...25.0: return "Normal"
       case ...30.0: return "Overweight"
       default: return "Obese"
 */

/*
 Ваша задача - найти первый элемент массива, который не является последовательным.

 Под последовательностью мы понимаем не более чем на 1 больше предыдущего элемента массива.

 E.g. Если у нас есть массив [1,2,3,4,6,7,8], то 1 тогда 2 тогда 3 тогда 4 все последовательно, но 6 не является, так что это первое недолговечное число.
 
 func firstNonConsecutive (_ arr: [Int]) -> Int? {
     for n in 0 ..< arr.count-1{
         if arr[n]+1 == arr[n+1] {
             continue
         }else{
             return arr[n+1]
         }
     }
     return nil
 }
 */

/*
 Создать массив в обратном порядке
 var n = 5
 var d = Array(1...n).reversed()
 */

/*
 В этом простом упражнении вы создадите программу, которая возьмет два списка целых чисел а и Ь. Каждый список будет состоять из З положительных целых чисел выше 0, представляющих размерности кубоидов а и Ь. Вы должны найти разницу между объемами кубоидов, независимо от того, какие из них больше.

 Например, если передаются параметры ([2, 2, 3], [5, 4, 1]), то объём а равен 12, а объём b - 20. Таким образом, функция должна вернуть 8.

 Ваша функция будет протестирована с заранее сделанными примерами, а также случайными.

 Если можете, попробуйте написать это в одной строке кода.
 */

/*
 В этом простом упражнении вы создадите программу, которая возьмет два списка целых чисел а и Ь. Каждый список будет состоять из З положительных целых чисел выше 0, представляющих размерности кубоидов а и Ь. Вы должны найти разницу между объемами кубоидов, независимо от того, какие из них больше.

 Например, если передаются параметры ([2, 2, 3], [5, 4, 1]), то объём а равен 12, а объём b - 20. Таким образом, функция должна вернуть 8.

 Ваша функция будет протестирована с заранее сделанными примерами, а также случайными.
 

func findDifference(_ a: [Int], _ b: [Int]) -> Int {
  //  Your code here!
    print(b.first!)
    print(a[b.index(after: 0)])
    print(b.last!)
  return abs((a.first!*a[a.index(after: 0)]*a.last!) - (b.first!*b[b.index(after: 0)]*b.last!))
    //abs(a.reduce(1,*) - b.reduce(1,*))
}
 */

/*напишите мне строку с функцией, которая берёт размер и возвращает последовательность переменных '1' и '0'.
 
 строка должна начинаться с 1.

 Строка с размером 6 должна вернуться :'101010'.
func stringy(_ size: Int) -> String {
var result = ""
    for i in 1...size {
        i%2==0 ?result.append("0"):result.append("1")
    }
    return result
    // return (0..<size).map { $0 % 2 == 0 ? "1" : "0" }.joined()
}
 */

/*Напишите программу, которая находит суммирование каждого числа от 1 до num. Число всегда будет положительным целым числом, большим 0.
func multi (num: Int)-> Int{
    var arr = Array(1...num)
    print(arr.reduce(0, +))
    return 0
}
 */
/*Если задан непустой массив целых чисел, возвращаем результат умножения значений вместе в порядке. Пример: [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
func grow(_ arr: [Int]) -> Int {
  return arr.reduce(1,*)
}
 */
/* создать функцию, которая возьмет плавающий и вернет сумму в долларах и центах в строке 39,99 становится $39,99
 func formatMoney(_ val:Double) -> String {
     "$\(String(format: "%.2f",val))"
 }
*/
/* написать функцию, которая возвращает время с полуночи в миллисекундах.
func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    // your code here
    (h*(60*60000))+(m*60000)+(s*1000)
}
 */
/*про овечек и волка
func warnTheSheep(_ queue: [String]) -> String {
    if queue.count == queue.firstIndex(of: "wolf")!+1{
        return "Pls go away and stop eating my sheep"
    } else {
        return "Oi! Sheep number \(queue.count - (queue.firstIndex(of: "wolf")!+1))! You are about to be eaten by a wolf!"
    }
}
*/
/*Входное число выход строка 9-> "Девять"
func switchItUp(_ number: Int) -> String {
    switch number{
  case 1: return "One"
case 2: return "Two"
case 3: return "Three"
    case 4: return "Four"
    case 5: return "Five"
    case 6: return "Six"
    case 7: return "Seven"
    case 8: return "Eigth"
    default:
    return "Nine"
        //        return ["Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"][number]
}
}
 */
/*Создайте функцию, которая проверяет, делится ли число n на два числа х И у. Все входы являются положительными, ненулевыми цифрами.
func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    print(n%x==0 && n%y==0)
    return true
}
*/
/*Получить сумму цифр числа и отнять сумму от числа РЕКУРСИВНО
func sumNumber (number: Int)->Int{
    if number < 10{
        return number
    }
    return sumNumber(number: number - String(number).compactMap{Int(String($0))}.reduce(0, +))
}
 */

/*Если задан двумерный массив целых чисел, возвращаем плоскую версию массива со всеми целыми числами в сортированном (восходящем) порядке.
 // C Денериками функция преобразования двумерного массива в одномерный и отсортирваный
 func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
 var arrResult: [T] = []
 for stolb in arr{
     for stroka in stolb{
         arrResult.append(stroka)
         
     }
   }
   return arrResult.sorted(by:<)
 }
 // С помощью flatMap
 let arr = [[1,4],[6,3],[434,34,545],[11,12,3443]]
 var arrRes =
 arr.flatMap{$0}.sorted(by: <)
 // Обычная функция преобразования двумерного массива в одномерный и отсортирваный
 var Given = [[3, 2, 1], [4, 6, 5], [123,43,5], [9, 7, 8]]

 func ff (arr: [[Int]])-> [Int]{
     var arr: [Int] = []
     for stolb in Given{
         for stroka in stolb{
             arr.append(stroka)
         }
     }
   return  arr.sorted(by: <)
 }

 flattenAndSort(Given)
 */

/*Сбалансированное число - это число, которое * Сумма всех цифр слева от средней цифры (средних цифр) и сумма всех цифр справа от средней цифры (средних цифр) равны*.
 func sumNumbet (num: Int)->Int{
    // сумма всех цифр числа
    var sum = 0
    var number = num
    while(number>0){
        sum += number%10
        number /= 10
    }
    return sum
}
func razdelStroki(number: Int)-> String{
    var s1: String = ""
    var s2: String = ""
    let numStr = String(number)
    if numStr.count <= 2{
        return "Balanced"
    }
    // разделение строки по средине
    if  numStr.count%2==0 {
        s1 = String(numStr.prefix((numStr.count/2)-1))
        s2 = String(numStr.suffix((numStr.count/2)-1))
    }else{
        s1 = String(numStr.prefix(numStr.count/2))
        s2 = String(numStr.suffix(numStr.count/2))
    }
    if sumNumbet(num: Int(s1)!) == sumNumbet(num: Int(s2)!){
        return "Balanced"
    } else{
        return "Not Balanced"
    }
}
 */
/*Простая, заданная строка слов, возвращает длину кратчайшего слова (слов). Map & closers
 let str = "bitcoin take over the world maybe who knows perhaps"
 var ds = 0
 var arr =
 str.split(separator: " ").map{ String ($0).count}.min() ?? 0
 */
/*Ваша задача - написать функцию, которая берет строку и возвращает новую строку с удалением всех гласных.
 func disemvowel(_ s: String) -> String {

     return String(s.compactMap(){
         if(!["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"].contains($0)){
             return $0
         }else{
             return nil
         }
     } )
 }
 */

/*Число Дизария - это число, которое Сумма его цифр с соответствующими позициями равна самому числу.
 func disariumNumber(_ number: Int) -> String {
   //Do Some Magic
     var i = 0.0
     var sum = 0
     var nUmber = number
     var arrNumber: [Double] = []
     while nUmber > 0 {
         arrNumber.append(Double (nUmber%10))
         nUmber/=10
     }
     arrNumber = arrNumber.reversed()
     
     for n in arrNumber {
         i+=1
         sum += Int(pow(n, i))
     }
     return sum == number ? "Disarium !!":"Not !!"
 }

 */


