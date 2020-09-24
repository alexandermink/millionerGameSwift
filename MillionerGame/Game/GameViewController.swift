//
//  GameViewController.swift
//  MillionerGame
//
//  Created by Александр Минк on 03.09.2020.
//  Copyright © 2020 Alexander Mink. All rights reserved.
//

import UIKit

protocol GameDelegate: AnyObject{
    func setGameSession()
    func getGameSession() -> GameSession
    func setGameRecord(_ count: Int)
    func getQuestionId() -> Int
    func checkAnswer(_ answer: Int) -> Bool
    func getNewQuestion(_ id: Int)
    func didEndGame()
}

class GameViewController: UIViewController {
    
    
    weak var delegate: GameDelegate?
    

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    
    
    
    @IBAction func answer1Button(_ sender: UIButton) {
        if (delegate?.checkAnswer(0))! {
            guard let id = delegate?.getQuestionId() else { return }
            if id == 9 {
                didEndGame(Game.instance.gameSession!.correctAnswersCount)
            } else {
                delegate?.getNewQuestion(id)
                updateScene()
            }
        } else {
            didEndGame(Game.instance.gameSession!.correctAnswersCount)
        }
    }
    
    @IBAction func answer2Button(_ sender: UIButton) {
        if (delegate?.checkAnswer(1))! {
            guard let id = delegate?.getQuestionId() else { return }
            if id == 9 {
                didEndGame(Game.instance.gameSession!.correctAnswersCount)
            } else {
                delegate?.getNewQuestion(id)
                updateScene()
            }
        } else {
            didEndGame(Game.instance.gameSession!.correctAnswersCount)
        }
    }
    
    @IBAction func answer3Button(_ sender: UIButton) {
        if (delegate?.checkAnswer(2))! {
            guard let id = delegate?.getQuestionId() else { return }
            if id == 9 {
                didEndGame(Game.instance.gameSession!.correctAnswersCount)
            } else {
                delegate?.getNewQuestion(id)
                updateScene()
            }
        } else {
            didEndGame(Game.instance.gameSession!.correctAnswersCount)
        }
    }
    
    @IBAction func answer4Button(_ sender: UIButton) {
        if (delegate?.checkAnswer(3))! {
            guard let id = delegate?.getQuestionId() else { return }
            if id == 9 {
                didEndGame(Game.instance.gameSession!.correctAnswersCount)
            } else {
                delegate?.getNewQuestion(id)
                updateScene()
            }
            
        } else {
            didEndGame(Game.instance.gameSession!.correctAnswersCount)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateScene()
        
    }
    
    func updateScene() {
        let gameSession = delegate?.getGameSession()
        questionLabel.text = gameSession?.question.question
        answer1.setTitle(gameSession?.question.answers[0], for: .normal)
        answer2.setTitle(gameSession?.question.answers[1], for: .normal)
        answer3.setTitle(gameSession?.question.answers[2], for: .normal)
        answer4.setTitle(gameSession?.question.answers[3], for: .normal)
    }
    
    
    func didEndGame(_ count: Int) {
        
        delegate?.setGameRecord(count)
        delegate?.didEndGame()
        dismiss(animated: true, completion: nil)
    }
    

}
