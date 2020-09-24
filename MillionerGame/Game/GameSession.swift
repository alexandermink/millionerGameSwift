//
//  GameSession.swift
//  MillionerGame
//
//  Created by Александр Минк on 03.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import Foundation



class GameSession: Codable {
    
    let questionsInit = [
        Question(id: 0, question: "Откуда сотрудники офисов наливают в чашки воду?", answers: ["из принтера", "из сканера", "из степлера", "из кулера"], correctAnswer: 3),
        Question(id: 1, question: "Что построил Джек в стихотворении, переведенным с английского Маршаком?", answers: ["маршрут", "график", "дом", "коммунизм"], correctAnswer: 2),
        Question(id: 2, question: "Что может возникнуть на шахматной доске?", answers: ["вечный шах","вечный мат", "вечный зов", "вечный двигатель"], correctAnswer: 0),
        Question(id: 3, question: "Что такое каршеринг?", answers: ["секонд-хенд", "напольный светильник", "брачный танец вороны", "аренда автомобиля"], correctAnswer: 3),
        Question(id: 4, question: "Какие мужчины, согласно этикету, не обязаны идти слева от дамы?", answers: ["высокие", "пожилые", "иногородние", "военнослужащие"], correctAnswer: 3),
        Question(id: 5, question: "Какую песню распевает при народе белочка в “Сказке о царе Салтане”?", answers: ["“Во поле береза стояла”", "“Во кузнице”", "“Во саду ли, в огороде”", "“Вот кто-то с горочки спустился”"], correctAnswer: 2),
        Question(id: 6, question: "Кто “помогал” делать записи в судовом журнале плота “Кон-Тики” Тура Хейердала?", answers: ["чайки", "каракатицы", "дельфины", "крысы"], correctAnswer: 1),
        Question(id: 7, question: "Какой возможности лишен крупье казино?", answers: ["пригладить рукой волосы", "снять пылинку с жилета", "поправить галстук", "достать платок из кармана"], correctAnswer: 3),
        Question(id: 8, question: "В каком кинофильме нет сцены на экзамене?", answers: ["“Доживем до понедельника”", "“Операция “Ы”…”", "“Старик Хоттабыч”", "“Большая перемена”"], correctAnswer: 0),
        Question(id: 9, question: "Что отсутствует в конструкции всех дворцов Запретного города китайских императоров?", answers: ["двери", "лестницы", "окна", "печные трубы"], correctAnswer: 3)
    ]
    
    var question: Question = Question()
    var correctAnswersCount: Int = 0
    var questionsCount: Int = 0
    
    
    init() {
        self.question = Question(id: questionsInit[0].id, question: questionsInit[0].question, answers: questionsInit[0].answers, correctAnswer: questionsInit[0].correctAnswer)
    }
    
    
    
}


/*
 Откуда сотрудники офисов наливают в чашки воду?
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
 --печные трубы
 */
