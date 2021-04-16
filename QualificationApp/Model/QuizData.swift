//
//  QuizData.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/16.
//

import Foundation
import SwiftUI

///クイズ構造体
struct ListData: Identifiable {
    var id = UUID()
    var title: String
    
    
}

class NewList: ObservableObject {
    
    ///リストの配列
    @Published var listArray:[ListData] = makeData()
    
    
    
}

///リストを生成する機能
func makeData() -> [ListData] {
    var dataArray:[ListData] = []

    dataArray.append(ListData(title:"タイトル1"))
    dataArray.append(ListData(title:"タイトル2"))
    

    return dataArray
}

