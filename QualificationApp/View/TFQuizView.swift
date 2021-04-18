//
//  QuizView.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/15.
//

import SwiftUI

struct TFQuizView: View {
    
    var questionModel: QuestionModel
    
    @Binding var isShow: Bool
    
    @ObservedObject var question = QuestionViewModel()
    
    
    ///navigationBarTitleを重ならないようにする
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
            VStack {
                Text("問題"+String(questionModel.questionNum))
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text(questionModel.question)
                
                Spacer()
                
                Text(question.answer)
                
                Spacer()
                HStack {
                    Button(action:{
                        question.userAnswer = 1
                        Judgment()
                    }) {
                        Text("◯")
                    }
                    
                    Button(action: {
                        question.userAnswer = 2
                        Judgment()
                    }) {
                        Text("×")
                    }
                }
                
                NavigationLink(destination: ScoreView(isShow: self.$isShow)) {
                    Text("スタート")
                }

                
                Spacer()
            }.navigationBarTitle("TFQuizView", displayMode: .inline)
        
    }
}


extension TFQuizView {
    
    // ユーザが選択した答えが正解かどうか判定する
    func Judgment() {
        if question.userAnswer ==  questionModel.answer {
            question.answer = "正解！"
        }
        else {
            question.answer = "不正解..."
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        TFQuizView(questionModel: QuestionModel(question: "問題文", option1:  "選択1", option2: "選択2", option3: "選択3", option4: "選択4", answer: 1), isShow: .constant(false), question: QuestionViewModel())
    }
}
