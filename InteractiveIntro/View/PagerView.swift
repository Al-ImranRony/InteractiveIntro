//
//  PagerView.swift
//  InteractiveIntro
//
//  Created by Twinbit on 4/10/23.
//

import SwiftUI

struct PagerView: View {
    var body: some View {
        TabView {
            IntroVideoView(page: Page(headline: PageInfo.headline[0], videoFileName: PageInfo.videoFileNames[0], content: PageInfo.contentStrings[0]))
            IntroVideoView(page: Page(headline: PageInfo.headline[1], videoFileName: PageInfo.videoFileNames[1], content: PageInfo.contentStrings[1]))
            IntroVideoView(page: Page(headline: PageInfo.headline[2], videoFileName: PageInfo.videoFileNames[2], content: PageInfo.contentStrings[2]))
            SplashView()
        }
        .frame(height: UIScreen.screenHeight)
        .tabViewStyle(.page(indexDisplayMode: .automatic))
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        
        .edgesIgnoringSafeArea(.vertical)
    }
}
    
    
struct Page {
    var headline: String
    var videoFileName: String
    var content: String
    let videoHeight: CGFloat = 750
}

struct PageInfo {
    static let headline = ["7000+ Contents", "3000+ Designes", "1 Million+ Users"]
    static let contentStrings = [
        "Break off a branch holding a few grapes and\n lay it on your plate.",
        "Place the seeds on your plate and\n put a grape in whole.",
        "Deposit the seeds into your mouth or\n your thumb with first two fingers.",
    ]
    static let videoFileNames = [
        "iv1",
        "iv2",
        "iv3",
    ]
}

    
#Preview {
    PagerView()
}
