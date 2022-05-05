import Foundation

//Домашнее задание №6.
//Создать структуру News, добавить параметры оглавление, содержание, и тип. Параметр тип сделать через enum: cпорт, политика и т.д. В main создать объекты, сделать так, чтобы вы в readline вводили тип новостей и выводились только новости выбранного типа.
//
//
var domestic = News(Politics: Politics.domestic)
var elections = News(Politics: Politics.elections)
var diplomacy = News(Politics: Politics.diplomacy)
var news1 = [domestic.Politics.rawValue, elections.Politics.rawValue, diplomacy.Politics.rawValue]

var football = NewsSport(Sport: Sport.football)
var tennis = NewsSport(Sport: Sport.tennis)
var bassketball = NewsSport(Sport: Sport.bassketball)
var swimming = NewsSport(Sport: Sport.swimming)

var newsSport = [football.Sport.rawValue, tennis.Sport.rawValue, bassketball.Sport.rawValue, swimming.Sport.rawValue]

var bishkek = NewsWeather(Weather: weatherNews.bishkek)
var osh = NewsWeather(Weather: weatherNews.osh)
var issykkul = NewsWeather(Weather: weatherNews.issykkul)
var talas = NewsWeather(Weather: weatherNews.talas)
var naryn = NewsWeather(Weather: weatherNews.naryn)
var newsWeather = [bishkek.Weather.rawValue, osh.Weather.rawValue, issykkul.Weather.rawValue, talas.Weather.rawValue, naryn.Weather.rawValue]

print("поиск новостей:")
let themeNews = readLine()

func newsOfTheDay(){
    switch themeNews{
    case "politcs":
        print(news1)
    case "выборы":
        print(newsWeather)
    case "спорт":
        print(newsSport)

    default:
        print("error")
    }

}
newsOfTheDay()

