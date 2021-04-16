//
//  ScoreView.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/15.
//

import SwiftUI

struct ScoreView: View {
    
    @Binding var isShow: Bool
    ///navigationBarTitleを重ならないようにする
    @Environment(\.presentationMode) var presentation
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("スコア")
                Spacer()
                
                Button(action: { self.isShow = false } ) {
                    Text("トップ画面に戻る")
                }
                Spacer()
            }
            .navigationBarTitle("問題リスト", displayMode: .inline)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(isShow: .constant(false))
    }
}
