//
//  HomeView.swift
//  Sample
//
//  Created by 백대홍 on 10/9/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Image(systemName: "app.dashed")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("Today's sentences!")
                        .font(.subheadline)
                        .bold()
                    
                    TodayCard()
                }
                .padding()
                NavigationLink(destination: ContentView()) {
                    CustomButtonView(buttonText: "시작", buttonColor: .orange)
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    HomeView()
}
