import UIKit
import Foundation

var greeting = "Hello, playground"
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
 */

//        let name = "Alex"
//        let age:UInt8 = 16
//        var tuple: (name: String, age: Int)
//        tuple.name = name
//        tuple.age = Int(age)
// Задание №2
/*
 Объявите кортеж, способный хранить три значения типа Int16.
 Одним выражением объявите две константы типа Int и проинициализуйте им произвольные значения.
 В первые два значения кортежа запишите значения из данных переменных, а в третий их сумму.
 */

//        var tuple1: (Int16,Int16,Int16)
//        let (a,b)=(1,2)
//        tuple1=(Int16(a),Int16(b),Int16(a+b))

//Задание №5
/*
 Вам даны две целочисленные переменные со значениями 12 и 21. Поменяйте их значения местами
 без использования буферной переменной и математических операций.
 */

//        var aa=12
//        var bb=21
//        (aa,bb)=(bb,aa)
//print(aa,bb)

/*
 Задание 6

 1) Создайте кортеж с двумя параметрами: ваш любимый фильм и ваше любимое число. Все элементы кортежа должны быть именованными.
 2) Одним выражением запишите каждый элемент кортежа в две константы. Проверьте значения параметров с помощью вывода в области результатов.
 3) Создайте псевдоним типа, используемого для первого кортежа, назовите его Man. Создайте второй кортеж типа Man, но описывающий другого человека (с другими значениями). Обратите внимание, что элементы кортежа так же должны иметь имена.
 4) Обменяйте значения в кортежах между собой.
 5) Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 */
//        var myTup = (myFilm:"Film",number1:34)
//        let (constFilm,constNumber) = myTup
//        print(constFilm,constNumber)
//        typealias Man = (myFilm: String, number1: Int)
//        var tul2: Man = ("Film2",12)
//
//        var bufTul = myTup
//
//        myTup = tul2
//        tul2 = bufTul
//
//        var tuple3 = (myTup.number1,tul2.number1,myTup.number1-tul2.number1)
//print(tuple3)

//Диапазоны RANGE
//
//for s in 1...9 {
//    print(s)
//}
//for d in 1..<10{
//    print(d)
//}
//*
// Задание 6
//
// Создайте диапазон целых чисел от -100 до 100 и инициализируйте его константе range
// Создайте переменную item типа UInt со значением 21.
// Создайте переменную типа Bool и запишите в нее результат проверки наличия значения переменной item в диапазоне range. Каким образом произвести данную проверку?
// */
//let range = -100...100
//var item: UInt = 21
//var inThere = range.contains(Int(item))
//print(inThere)
//
//*
// Задание 7
//
// Создайте диапазон, содержащий все заглавные латинские символы.
// Какими будут значения методов min() и max() для этого диапазона?
// Какими будут значения свойств lowerBound и upperBound для этого диапазона?
// */
//var ABC = "A"..<"Z"
// max i min для числових диапазонов
//print(ABC.lowerBound)
//print(ABC.upperBound)
//
//*Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
// */
//func triangular(_ n: Int) -> Int{
//var coutn = 0
//
//  if n<1{
//    return 0
//  }
//
//for i in 1...n{
//  coutn+=i
//}
// return coutn
//}
//
//*
// You will be given an array a and a value x. All you need to do is check whether the provided array contains the value.
// The type of a and x can be String or Int.
// Return true if the array contains the value, false if not.
// */
//
//func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
//    return a.contains(x)
//}
/*
 Создайте функцию, которая принимает целое число в качестве аргумента и возвращает "Четное" для чётных чисел или "Нечётное" для нечетных чисел.
 */
func evenOrOdd(_ number:Int) -> String {
   return number % 2 == 0 ?"Even":"Odd"
}
/*
 Реализация функции, которая преобразует данное логическое значение в его строковое представление.

 Примечание: Будут даны только допустимые входные данные.
 */
func booleanToString(_ b: Bool) -> String {
    return b ?"true":"false"
    // или String(b)
}
/*
 Если задано число в месяц от 1 до 12, возвращаем в какой квартал года оно принадлежит целому числу.

 Например: второй месяц (февраль) является частью первого квартала; шестой месяц (июнь) - частью второго квартала; и одиннадцатый месяц (ноябрь) - частью четвертого квартала.
 */
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
/*
 Задан массив целых чисел как строк и чисел, возвращаем сумму значений массива как все числа.
 */
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

//Array chapter
/*
 Задание 4

 1)Создайте массив, состоящий из четырех целочисленных элементов

 2)Сделайте так, чтобы вместо второго и третьего элементов массива (с индексами 1 и 2) был элемент, содержащий сумму начального и конечного элементов данного массива. После этого в массиве должно остаться 3 элемента.

 3) Отсортируйте элементы по возрастанию
 */
//var arr2 = [1,2,3,4]
//arr2.remove(at: 1)
//arr2.remove(at: 1)
//arr2.insert(arr2[0]+arr2[1], at: 1)
//arr2.sort()
/* or
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
 */
//var mas = Array(1...100)
//var masEmptyInt = [Int]()
//masEmptyInt = Array(mas[24...49])

/*
 Задание 6

 1) Создайте массив arr из пяти элементов типа Character

 2) В массив arr вставьте вторым элементом (не вместо второго, а между первым и вторым) символ “z”

 3) Создайте переменную i типа UInt8 и проинициализируйте ей количество элементов массива arr.
 */
//var arr = ["a","b","c","d","f"]
//arr.insert("z",at: 1)
//var i  = (UInt8)(arr.count)
//CodeWar
/*
 Если задана строка цифр, вы должны заменить любую цифру ниже 5 на '0' и любую цифру 5 и выше на '1'. Верните полученную строку.
 */

/*
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

//Словари
/*
 Задание 4

 1) Создайте словарь типа Dictionary<Int, String> и наполните его тремя элементами
 2) Запишите в множество все ключи словаря
 3) Запишите в массив все значения словаря
 4) Создайте множество, состоящее из всех значений коллекций из пунктов 2 и 3
 Будьте очень внимательны при решении заданий
 
let d: Dictionary<Int,String> = [1:"one",2:"two",3:"three"]
var keySet = Array(d.keys)
var valueArry = Array(d.values)
var keyStringSet: String = ""
var n = 0
for s in keySet {
    keyStringSet += "\(String(s)) " + valueArry[n] + " "
    n += 1
}
print(keyStringSet)
 */

/*
 Задание 5

 1) Создайте словарь типа Dictionary<Int, Array<String>> и наполните его произвольными значениями
 2) Запишите в константу dictElCount количество элементов в словаре
 3) Создайте массив, состоящий из dictElCount одинаковых элементов, значений которых dictElCount. Какой тип данных будет у созданного массива?
 
var d: Dictionary<Int, Array<String>> = [1:["q","w"],2:["e","r"]]
let countD = d.count
var arr = Array(repeating: countD, count: countD)
print(type(of: arr))// Array<Int>
 */
//Строки все задачи
/*
 Задание 1

 1) Создайте переменную типа String со значением “Swift”
 2) Создайте константу типа Character с произвольным значением
 3) Создайте массив в соответсвии со следующими требованиями:
 – количество элементов должно соответствовать количеству символов
 – значения элементов должны быть такими же, как у константы из пункта 2
 – тип массива должен быть Array<String>
 4) Проиницилизируйте значение константы из пункта 2 в переменную из пункта 1
 
var str = "Swift"
let char: Character = "s"
var arrS = Array(repeating: String(char), count: str.count)
str = String(char)
 */

/*
 Задание 2

 1) Создайте константу со строковым значением "JonhWick"
 2) Получите индекс первого символа строки.
 Используя полученный индекс выведите на консоль первый символ строки из пункта 1
 3) Одним выражением получите индекс последнего символа строки из пункта 1
 Используя полученный индекс выведите на консоль последний символ строки из пункта 1
 4) Запишите в новую константу первые четыре символа из строки "БабаЯга"
 Какой тип данных будет у созданной константы
 
let str = "JonhWick"
var ferstIndex = str.startIndex // J
var lastIndex = str.index(before: str.endIndex)//k
let bab = "БабаЯга".dropLast(3) //Баба
let yaga = "БабаЯга".dropFirst(4)//Яга
print(type(of: bab)) // Substring
 */

/*
 Your task is to convert strings to how they would be written by Jaden Smith. The strings are actual quotes from Jaden Smith, but they are not capitalized in the same way he originally typed them.

 Example:

 Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
 Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren'

var str = "dima. do fam"
var arrStr = str.components(separatedBy: " ") // разделяем строку на слова
str=""
for words in arrStr {
    str.append(words.prefix(1).uppercased()+words.dropFirst()+" ")// в каждом слове первую букву делаем заглавной
}
print(str.trimmingCharacters(in: .whitespaces))// убираем пробел последний
 
 Расширение
 extension String {
    func toJadenCase() -> String {
       print (self)
        let arrStr = self.components(separatedBy: " ")
 var str = ""
 for words in arrStr {
     str.append(words.prefix(1).uppercased()+words.dropFirst()+" ")
 }
        return String(str.dropLast(1))
     }
 } или функция capitalized)))
 */

/*
 Создайте функцию, которая принимает 2 неотрицательных целых числа в виде строки в качестве входа и выводит сумму (также в виде строки):

 Пример: (Input1, Input2 -->Output)
 
 func sum_str(_ a:String, _ b:String) -> String {
 //     happy coding !
     var numA = 0
     var numB = 0
     if let number = Int(a){
         numA = number
     }
     if let number = Int(b){
         numB = number
     }
     return "\(numA + numB)"
 } // String((Int(a) ?? 0) + (Int(b) ?? 0))
 */

/*
 Write a function called repeatStr which repeats the given string string exactly n times.
 var s = String(repeating: "DD", count: 5)

 */

//Шахматные фигури в Set
/*
 Задание 3

 Самостоятельно в сети Интернет найдите кодовые точки для Unicode-символов “шахматные фигуры”, после чего создайте два множества типа Set<Character>, состоящие из данных символов.
 Первое множество должно содержать все фигуры белого цвета, а второе – черного.
 
var arrWhiteChess: Set = ["\u{2654}","\u{2655}","\u{2656}","\u{2657}","\u{2658}","\u{2659}"]
var arrBlackChess: Set = ["\u{265A}","\u{265B}","\u{265C}","\u{265D}","\u{265E}","\u{265F}"]
print(arrWhiteChess)
print(arrBlackChess)
 */

var a = [4,5,1]
var g = a.last! * a.dropLast().reduce(0, +)
print(g)

func findDifference(_ a: [Int], _ b: [Int]) -> Int {
  //  Your code here!
    
  return (a.last! * a.dropLast().reduce(0, +)) - (b.last! * b.dropLast().reduce(0, +))
}


