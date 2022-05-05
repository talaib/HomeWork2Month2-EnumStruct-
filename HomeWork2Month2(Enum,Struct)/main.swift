import Foundation

//Домашнее задание №6.
//Создать структуру News, добавить параметры оглавление, содержание, и тип. Параметр тип сделать через enum: cпорт, политика и т.д. В main создать объекты, сделать так, чтобы вы в readline вводили тип новостей и выводились только новости выбранного типа.
//
//

var news1 = Politics.diplomacy.rawValue

var news2 = Sport.tennis.rawValue
var news3 = News(Politics: Politics.domestic, Sport: Sport.bassketbal, famousPeople: "Singer", weatherNews: weatherNews.issykkul)
print("поиск новостей")
let themeNews = readLine()

func newsOfTheDay(){
    switch themeNews{
    case "politcs":
        print(news1)
    case "выборы":
        print(Politics.elections, "elections")
    case "спорт":
        print(Sport.bassketbal ,"Топ 10 команд НБА")


    default:
        print("error")
    }

}
newsOfTheDay()

