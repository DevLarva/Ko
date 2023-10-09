//
//  TodayCard.swift
//  Sample
//
//  Created by 백대홍 on 10/9/23.
//

import SwiftUI

struct TodayCard: View {
    let sentences = [
        "오늘도 힘차게 시작해봅시다.",
        "매일 조금씩 발전하고 있어요.",
        "항상 긍정적으로 생각합시다.",
        "최선을 다하면 좋은 결과가 따를 거예요.",
        "오늘의 작은 성취도 의미있는 것입니다.",
        "열심히 하면 어렵지 않아요.",
        "도전은 성장의 기회입니다.",
        "배우는 즐거움을 느껴봅시다.",
        "한 걸음 한 걸음 나아가는 중입니다.",
        "미래에 대한 꿈과 희망을 가져봅시다."
    ]
    let sentenceEnglish = [
        "Let's start energetically today.",
        "We are improving little by little every day.",
        "Let's always think positively.",
        "If you do your best, good results will follow.",
        "Even small achievements today are meaningful.",
        "It's not difficult if you work hard.",
        "Challenges are opportunities for growth.",
        "Let's feel the joy of learning.",
        "We are taking one step at a time.",
        "Let's have dreams and hopes for the future."
    ]
    
    @State private var randomIndex: Int?
        @State private var showEnglish: Bool = false
        
        var body: some View {
            ZStack {
                VStack(alignment:.center) {
                    Spacer()
                    HStack {
                        if let index = randomIndex, index < sentences.count {
                            Text(showEnglish ? sentenceEnglish[index] : sentences[index])
                                .font(.title)
                                .bold()
                                .multilineTextAlignment(.leading)
                        }
                    }
                    
                    Spacer()
                    HStack{
                        Spacer()
                        
                        Button(action: changeRandomSentence) { // 버튼이 클릭되면 changeRandomSentence 함수 호출
                            Image(systemName: "magnifyingglass")
                                .padding()
                        }
                        
                    }
                }.padding()
                .onAppear(perform: getRandomIndex)
                
            }
            .frame(width: 350, height: 175)
                   .background(Color(red: 0.97, green: 0.53, blue: 0.44))
                   .cornerRadius(6)
                   .shadow(color: Color(red: 0.22, green: 0.11, blue: 0.09).opacity(0.09), radius: 3, x: 0, y:
                               5)
        }

    func getRandomIndex() {
               randomIndex = Int.random(in: 0..<sentences.count) // 랜덤한 인덱스 선택
           }

    func changeRandomSentence() {
               if let index = randomIndex,
                  index < sentenceEnglish.count { // 현재 인덱스가 유효한 범위 내에 있는지 확인
                   showEnglish.toggle() // 언어 상태 변경 (한국어 -> 영어, 영어 -> 한국어)
               }
           }
    }


#Preview {
    TodayCard()
}
