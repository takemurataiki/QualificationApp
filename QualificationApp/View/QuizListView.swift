    //
//  TitleView.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/15.
//

import SwiftUI

struct QuizListView: View {
    
    
    @Binding var isShow: Bool
    
    
    ///navigationBarTitleを重ならないようにする
    @Environment(\.presentationMode) var presentation
    var body: some View {
        
            VStack {
                List(0 ..< 5) { item in
                    NavigationLink(destination: TFQuizView(
                                    questionModel: QuestionModel(question: "問題文", option1:  "選択1", option2: "選択2", option3: "選択3", option4: "選択4", answer: 1),
                                    isShow: self.$isShow,
                                    question: QuestionViewModel())) {
                        Text("問題" + String(item))
                    }
                    .isDetailLink(false)
                }
                ///謎の空白を埋める
                .listStyle(PlainListStyle())
                
                
            }
            .navigationBarTitle("問題リスト", displayMode: .inline)
        
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        QuizListView(isShow: .constant(false))
    }
}
