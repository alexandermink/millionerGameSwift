//
//  Question.swift
//  MillionerGame
//
//  Created by Александр Минк on 08.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import Foundation
import RealmSwift

struct Question: Codable {
    var id: Int = -1
    var question: String = ""
    var answers: [String] = []
    var correctAnswer: Int = -1
    
    init(id: Int, question: String, answers: [String], correctAnswer: Int) {
        self.id = id
        self.question = question
        self.answers = answers
        self.correctAnswer = correctAnswer
    }
    
    init() { }
}

//class AnswerRealm: Object {
//    @objc dynamic var answer1: String = ""
//    @objc dynamic var answer2: String = ""
//    @objc dynamic var answer3: String = ""
//    @objc dynamic var answer4: String = ""
//}
//
//class QuestionRealm: Object {
//    @objc dynamic var id: Int = -1
//    @objc dynamic var question: String = ""
//    @objc dynamic var answers: AnswerRealm? = AnswerRealm()
//    @objc dynamic var correctAnswer: Int = -1
//
//    override class func primaryKey() -> String? {
//        return "id"
//    }
//}



/*Откуда сотрудники офисов наливают в чашки воду?
из принтера
из сканера
из степлера
--из кулера
Что построил Джек в стихотворении, переведенным с английского Маршаком?
маршрут
график
--дом
коммунизм
Что может возникнуть на шахматной доске?
--вечный шах
вечный мат
вечный зов
вечный двигатель
Что такое каршеринг?
секонд-хенд
напольный светильник
брачный танец вороны
--аренда автомобиля
Какие мужчины, согласно этикету, не обязаны идти слева от дамы?
высокие
пожилые
иногородние
--военнослужащие
Какую песню распевает при народе белочка в “Сказке о царе Салтане”?
“Во поле береза стояла”
“Во кузнице”
--“Во саду ли, в огороде”
“Вот кто-то с горочки спустился”
Кто “помогал” делать записи в судовом журнале плота “Кон-Тики” Тура Хейердала?
чайки
--каракатицы
дельфины
крысы
Какой возможности лишен крупье казино?
пригладить рукой волосы
снять пылинку с жилета
поправить галстук
--достать платок из кармана
В каком кинофильме нет сцены на экзамене?
--“Доживем до понедельника”
“Операция “Ы”…”
“Старик Хоттабыч”
“Большая перемена”
Что отсутствует в конструкции всех дворцов Запретного города китайских императоров?
двери
лестницы
окна
--печные трубы**/
