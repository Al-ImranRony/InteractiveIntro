//
//  VideoFooterView.swift
//  InteractiveIntro
//
//  Created by Twinbit on 3/10/23.
//

import SwiftUI

struct VideoFooterView: View {
    @State var headlineText = "7000+"
    @State var secondHeadlineText = "dynamic content"
    @State var bottomText = "Access our dynamic contents"
    
    var page: Page
    
    var body: some View {
        VStack {
            VStackLayout(alignment: .leading) {
                Text(page.headline)
                    .foregroundStyle(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .font(.custom("Roboto", size: 34))
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .padding(.bottom, 5)
            .safeAreaPadding(.top, UIScreen.screenHeight * 0.001)
            Text(page.content)
                .multilineTextAlignment(.center)
                .foregroundStyle(.white)
                .fontWeight(.regular)
                .font(.custom("Roboto", size: 16))
                .frame(maxWidth: .infinity, alignment: .center)
            Spacer()
        }
        .background(Color.black)
    }
}

#Preview {
    VideoFooterView(page: Page(headline: "", videoFileName: "iv1", content: ""))
}
