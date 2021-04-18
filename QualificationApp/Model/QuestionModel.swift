//
//  QuestionData.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/17.
//

import Foundation

struct QuestionModel: Identifiable {
    //id
    var id = UUID()
    // 問題文の番号
    var questionNum: Int = 0
    // 問題文
    var question: String

    // 選択肢1
    var option1: String
    // 選択肢2
    var option2: String
    // 選択肢3
    var option3: String
    // 選択肢4
    var option4: String

    // 正解の番号
    var answer: Int

    // 初期処理
    init(question: String, option1:  String, option2: String, option3: String, option4: String, answer: Int) {
        self.question = question
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.answer = answer
    }

    
}



