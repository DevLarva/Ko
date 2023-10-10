//
//  difSelectView.swift
//  Sample
//
//  Created by 백대홍 on 10/10/23.
//

import SwiftUI

struct difSelectView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Select Difficulty!")
                .padding(.vertical)
                .font(.title)
                .bold()
            
            NavigationLink(destination: ContentView()) {
                CustomButtonView(buttonText: "🤩 EASY 🤩", buttonColor: .green)
            }
            
            NavigationLink(destination: ContentView()) {
                CustomButtonView(buttonText: "🤔 MEDIUM 🤔", buttonColor: .orange)
            }
            
            NavigationLink(destination: ContentView()) {
                CustomButtonView(buttonText: "☠️ HARD ☠️", buttonColor: .red)
            }
        }
    }
}

#Preview {
    difSelectView()
}
