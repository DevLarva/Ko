//
//  CardView.swift
//  Sample
//
//  Created by 백대홍 on 10/9/23.
//
import SwiftUI
import AVFoundation

struct CardView: View {
    
        let words = ["ㄱ", "ㄴ", "ㄷ", "ㄹ", "ㅁ", "ㅂ", "ㅅ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ","ㅎ"]
        
        
        @State private var currentWord = "ㄱ"
        
        var body: some View {
            VStack {
                HStack {
                    Button(action: changeWord) {
                        Image(systemName: "chevron.left")
                            .bold()
                    }
                    
                    ZStack {
                        VStack {
                            Text(currentWord)
                                .font(.title)
                                .bold()
                        }
                    }
                    .frame(width: 290, height: 104)
                    .background(Color(red: 0.97, green: 0.53, blue: 0.44))
                    .cornerRadius(6)
                    .shadow(color: Color(red: 0.22, green: 0.11, blue: 0.09).opacity(0.09), radius: 3, x: 0, y:
                                5)
                    
                    
                    Button(action : changeWord) {
                        Image(systemName:"chevron.right")
                            .bold()
                    }
                }
            }
            
        }
        
        func changeWord() {
            if let randomWord = words.randomElement() {
                currentWord = randomWord
            }
        }
    }



#Preview {
    CardView()
}
