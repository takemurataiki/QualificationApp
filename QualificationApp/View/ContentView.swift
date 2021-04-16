//
//  ContentView.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/15.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("資格クイズ")
                    .font(.largeTitle)
                    .fontWeight(.regular)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                NavigationLink(destination: QuizListView(isShow: self.$isActive),
                               isActive: self.$isActive) {
                    Text("スタート")
                    
                }
                
                
                Spacer()
                
                
                    
            }
            .navigationBarTitle("スタートボタン", displayMode: .inline)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
