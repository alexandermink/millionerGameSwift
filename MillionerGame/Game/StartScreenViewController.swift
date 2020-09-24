//
//  StartScreenViewController.swift
//  MillionerGame
//
//  Created by Александр Минк on 15.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import UIKit

class StartScreenViewController: UIViewController {

    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.isHidden = true

    }
    
    @IBAction func startGame(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case .some("gameVCSegue"):
            let destination = segue.destination as! GameViewController
            destination.delegate = self
        case .some("recordsVCSegue"):
            let destination = segue.destination as! RecordsTableViewController
        default:
            break
        }
        
    }

}

extension StartScreenViewController: GameDelegate {
        
    func setGameSession() {
        Game.instance.gameSession = GameSession()
    }
    
    func getGameSession() -> GameSession {
        return Game.instance.gameSession!
    }
    
    func setGameRecord(_ count: Int) {
        Game.instance.records.append(count)
        scoreLabel.text = "Last score: \(count)"
    }
    
    
    func setQuestions() {
        
        //print("SetQuestions")
//
//        let questionRealm = QuestionRealm()
//
//        let realm = RealmSingleton.realm.connect
//
//        for item in 0...9 {
//            questionRealm.id = item
//            questionRealm.question = questionsInit[item].question // question
//
//            questionRealm.answers!.answer1 = questionsInit[item].answers[0] // answers
//            questionRealm.answers!.answer2 = questionsInit[item].answers[1]
//            questionRealm.answers!.answer3 = questionsInit[item].answers[2]
//            questionRealm.answers!.answer4 = questionsInit[item].answers[3]
//            questionRealm.correctAnswer = questionsInit[item].correctAnswer // correct answer
//
//            print(questionRealm)
//
//            try! realm.write {
//                realm.add(questionRealm, update: .all)
//            }
//        }
        
        
    }
    
    func getQuestions() {
//        let questions = RealmSingleton.realm.connect.objects(QuestionRealm.self)
//        for item in questions {
//            var question = Question()
//            question.answers.append(item.answers!.answer1)
//            question.answers.append(item.answers!.answer2)
//            question.answers.append(item.answers!.answer3)
//            question.answers.append(item.answers!.answer4)
//            question.correctAnswer = item.correctAnswer
//            question.question = item.question
//
//            Game.instance.gameSession?.questions.append(question)
//        }
        
        
    }
    
    func getQuestionId() -> Int {
        return (Game.instance.gameSession?.question.id)!
    }
    
    func didEndGame() {
        scoreLabel.isHidden = false
        Game.instance.gameSession = GameSession()
        Game.instance.records.sort{$0>$1}
        
    }
    
    func checkAnswer(_ answer: Int) -> Bool {
        if Game.instance.gameSession?.question.correctAnswer == answer {
            Game.instance.gameSession?.correctAnswersCount += 1
            return true
        } else {
            return false
        }
    }
    
    func getNewQuestion(_ id: Int) {
        
        if id<9 {
            let question = Question(id: id+1, question: (Game.instance.gameSession?.questionsInit[id+1].question)!, answers: (Game.instance.gameSession?.questionsInit[id+1].answers)!, correctAnswer: (Game.instance.gameSession?.questionsInit[id+1].correctAnswer)!)
            Game.instance.gameSession?.question = question
        } else {
            setGameRecord(Game.instance.gameSession!.correctAnswersCount)
            didEndGame()
            return
        }
    }
}
