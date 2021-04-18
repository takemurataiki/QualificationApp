//
//  QuizViewModel.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/17.
//

import Foundation


class QuestionViewModel: ObservableObject {
    //クイズリスト
    @Published var questionArray:[ListData] = makeData()
    
    //ユーザが選択した選択肢の番号
    @Published var userAnswer :Int = 0
    
    //正解かどうかわかる文字
    @Published var answer: String  = "" 
}


