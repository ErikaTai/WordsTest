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
    @IBOutlet weak var lblAnswer: UILabel! //追加　答え表示用ラベル
    @IBOutlet weak var txtAnswer: UITextField!
    @IBOutlet weak var btnAnswer: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnShowAns: UIButton! //追加　「答えを見る」ボタン
    
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
            self.btnShowAns.hidden = true //追加
        } else {
            self.lblJudge.text = "不正解"
        }
    }
    
    @IBAction func showAnswer(sender: AnyObject){ //追加　「答えを見る」ボタンの処理
        self.lblJudge.hidden = true
        self.btnAnswer.hidden = true
        self.lblAnswer.hidden = false
        self.lblAnswer.text = words.getEnglish(rand)
        self.btnNext.hidden = false
        self.btnShowAns.hidden = true
        
    }

    
    @IBAction func nextQuestion(sender: AnyObject) {
        newQuestion()
    }
    
    func newQuestion() {
        rand = Int(arc4random() % words.getCount() + 0)
        self.lblAnswer.hidden = true //追加
        self.lblJudge.hidden = true
        self.btnAnswer.hidden = false
        self.btnNext.hidden = true
        self.btnShowAns.hidden = false //追加
        self.txtAnswer.text = ""
        
        self.lblQuestion.text = words.getJapanese(rand)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

