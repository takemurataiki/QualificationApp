//
//  QuestionData.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/18.
//

import Foundation


///リストを生成する機能
func makeData() -> [QuestionModel] {
    var questionArray:[QuestionModel] = []

    questionArray.append(QuestionModel(question: "問題文", option1:  "選択1", option2: "選択2", option3: "選択3", option4: "選択4", answer: 1))

    
    return questionArray
}
