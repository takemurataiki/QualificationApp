//
//  FourChoiceView.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/17.
//

import SwiftUI

struct FourQuizView: View {
    
    @Binding var isShow: Bool
    var question: QuestionModel
    
    
    var body: some View {
        VStack {
            Text("問題" + String(question.questionNum))
                .font(.largeTitle)
                .fontWeight(.regular)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Text(question.question)
            
            Spacer()
            
            ///選択肢
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text(question.option1)
            }
            .padding()
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text(question.option2)
            }
            .padding()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text(question.option3)
            }
            .padding()
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text(question.option4)
            }
            .padding()
            
            
            NavigationLink(destination: ScoreView(isShow: self.$isShow)) {
                Text("スタート")
            }
            .isDetailLink(false)
            
            Spacer()
        }.navigationBarTitle("問題リスト", displayMode: .inline)
    
    }
}

struct FourChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        FourQuizView(isShow: .constant(false), question: QuestionModel(question: "問題文", option1:  "選択1", option2: "選択2", option3: "選択3", option4: "選択4", answer: 1))
    }
}
