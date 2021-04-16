//
//  QualificationAppApp.swift
//  QualificationApp
//
//  Created by 竹村　太喜 on 2021/04/15.
//

import SwiftUI

@main
struct QualificationAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(NewList())
        }
    }
}
