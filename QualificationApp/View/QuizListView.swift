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
                    NavigationLink(destination: AnswerView(isShow: self.$isShow)) {
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
