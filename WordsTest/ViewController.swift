//
//  ViewController.swift
//  WordsTest
//
//  Created by ERIKA on 2015/05/02.
//  Copyright (c) 2015年 RainbowApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var lblJudge: UILabel!
    @IBOutlet weak var txtAnswer: UITextField!
    @IBOutlet weak var btnAnswer: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    
    var words: Words = Words()
    var rand: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newQuestion()
    }

    @IBAction func changeLblJudge(sender: AnyObject) {
        self.lblJudge.hidden = false
        if txtAnswer.text == words.getEnglish(rand) {
            self.lblJudge.text = "正解!"
            self.btnAnswer.hidden = true
            self.btnNext.hidden = false
        } else {
            self.lblJudge.text = "不正解"
        }
    }
    
    @IBAction func nextQuestion(sender: AnyObject) {
        newQuestion()
    }
    
    func newQuestion() {
        rand = Int(arc4random() % words.getCount() + 0)
        
        self.lblJudge.hidden = true
        self.btnAnswer.hidden = false
        self.btnNext.hidden = true
        self.txtAnswer.text = ""
        
        self.lblQuestion.text = words.getJapanese(rand)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

