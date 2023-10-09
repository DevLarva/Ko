//
//  CustomButtonView.swift
//  Sample
//
//  Created by 백대홍 on 10/9/23.
//

import SwiftUI

struct CustomButtonView: View {
    var buttonText: String
    var buttonColor: Color

    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            Text(buttonText)
                .font(Font.custom("Pretendard", size: 16).weight(.medium))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 24)
        .padding(.vertical, 0)
        .frame(width: 343, height: 56, alignment: .center)
        .background(buttonColor)
        .cornerRadius(8)
    }
}


#Preview {
    CustomButtonView(buttonText: "시작하기", buttonColor: .orange)
}
