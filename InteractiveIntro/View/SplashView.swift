//
//  SplashView.swift
//  InteractiveIntro
//
//  Created by Twinbit on 2/10/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var isWritting: Bool = true
    @State var isBlinking: Bool = false
    @State var isMoving: Bool = false
    @State private var move = false
    
    var body: some View {
        VStack {
            Image("personalIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .foregroundColor(.brown)
            VStack(spacing: 5.0) {
                Text("Interactive Intro")
                Text("By")
                    .foregroundColor(.gray )
                ZStack(alignment: .leading, content: {
                    Text("Rony")
                        .font(.body)
                        .mask(Rectangle().offset(x: isWritting ? 0 : -150))
                    Rectangle()
                        .fill(.brown)
                        .opacity(isBlinking ? 0 : 1)
                        .frame(width: 2, height: 24)
                        .offset(x: isMoving ? 148 : 0)
                })
            }
            .padding()
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
