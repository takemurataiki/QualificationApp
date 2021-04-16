//
//  QuizView.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/15.
//

import SwiftUI

struct AnswerView: View {
    
    @Binding var isShow: Bool
    
    ///navigationBarTitleを重ならないようにする
    @Environment(\.presentationMode) var presentation
    var body: some View {
        
            VStack {
                Text("問題1")
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text("問題文")
                
                Spacer()
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("◯")
                    }
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("×")
                    }
                }
                
                NavigationLink(destination: ScoreView(isShow: self.$isShow)) {
                    Text("スタート")
                }
                .isDetailLink(false)
                
                Spacer()
            }.navigationBarTitle("問題リスト", displayMode: .inline)
        
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(isShow: .constant(false))
    }
}
