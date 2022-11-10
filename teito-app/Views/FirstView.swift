//
//  FirstView.swift
//  teito-app
//
//  Created by shuhei-ok on 2022/11/10.
//

import SwiftUI

struct FirstView: View {
    @State private var selectedStr01 = "低糖質レシピ"
    @State private var selectedStr02 = "食レポ"
    @State private var selectedStr03 = "ラーメン"
    @State private var showingModal = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
    
    ZStack {
        Color.blue
            .edgesIgnoringSafeArea(.all)
        
        VStack{
            Text("あなたのことを教えてください")
                .font(.title3)
                .padding()
            Text("興味のあるカテゴリーを教えてください")
                .font(.subheadline)
            Picker(selection: $selectedStr01, label: Text("選択してください")
                .foregroundColor(Color.green)) {
                Text("低糖質レシピ").tag("低糖質レシピ")
                Text("食レポ").tag("食レポ")
                Text("低糖質レストラン").tag("低糖質レストラン")
                Text("低糖質商品").tag("低糖質商品")
            }.padding()
            Text("興味のあるカテゴリー01 :\n \(self.selectedStr01)")
                .multilineTextAlignment(.center)
            
            Picker(selection: $selectedStr02, label: Text("選択してください")
                .foregroundColor(Color.green)) {
                Text("低糖質レシピ").tag("低糖質レシピ")
                Text("食レポ").tag("食レポ")
                Text("低糖質レストラン").tag("低糖質レストラン")
                Text("低糖質商品").tag("低糖質商品")
            }.padding()
            Text("興味のあるカテゴリー02 :\n \(self.selectedStr02)")
                .multilineTextAlignment(.center).padding()
            
            Text("好きな種類を教えてください")
            Picker(selection: $selectedStr03, label: Text("選択してください")
                .foregroundColor(Color.green)) {
                Text("麺類").tag("麺類")
                Text("菓子類").tag("菓子類")
                Text("test03").tag("test03")
                Text("test04").tag("test04")
            }.padding()
            Text("好きな食べ物の種類 :\n \(self.selectedStr03)")
                .multilineTextAlignment(.center)
                
            Button(action: {
                presentationMode.wrappedValue.dismiss()}
            ) {
                Text("はじめる")
            }.sheet(isPresented: $showingModal) {
                FirstView()
            }
        }
    }
    }
    
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
