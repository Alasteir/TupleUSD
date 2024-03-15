import Foundation

typealias Money = ( name: String, rate: Float)

var todayRate : Money = ("USD", 38.5)

var yesterdayRate : Money = ("USD", 35.0)

if todayRate.rate > yesterdayRate.rate {
    
    print("Курс валют зрос.")
    
} else if todayRate.rate < yesterdayRate.rate {
    
    print("Курс валют знизився.")
    
} else {
    
    print("Курс валют залишився незмінним.")
}


let rateChangePercentage = ((todayRate.rate - yesterdayRate.rate) / yesterdayRate.rate) * 100


print("Зміна курсу валют складає \(rateChangePercentage)%.")


let amountInCurrency: Float = 1297.65


let convertedAmount = amountInCurrency / yesterdayRate.rate * todayRate.rate


print("Сума \(amountInCurrency)UA у вказаній валюті на сьогоднішній день складає \(convertedAmount)UA.")
