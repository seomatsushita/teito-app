//
//  ContentView.swift
//  teito-app
//
//  Created by 松下世緒 on 2022/10/13.
//

import SwiftUI

struct ContentView: View {
    @State private var showingModal = true
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).sheet(isPresented: $showingModal) {
            FirstView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
