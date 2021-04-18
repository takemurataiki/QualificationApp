//
//  StartView.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/17.
//

import SwiftUI

struct HomeView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("資格クイズ")
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                NavigationLink(destination: TFQuizView(questionModel: QuestionModel(question: "問題文", option1:  "選択1", option2: "選択2", option3: "選択3", option4: "選択4", answer: 1), isShow: self.$isActive),
                               isActive: self.$isActive) {
                    Text("スタート")
                    
                }
                
                
                Spacer()
                
                
                    
            }
            .navigationBarTitle("HomeView", displayMode: .inline)
        }
            
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
