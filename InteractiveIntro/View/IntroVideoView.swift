//
//  IntroVideoView.swift
//  InteractiveIntro
//
//  Created by Twinbit on 2/10/23.
//

import SwiftUI
import SwiftData
import AVKit



struct IntroVideoView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var page: Page
    
    @State var videoFileName = "iv1"
    
    @State var player = AVPlayer()
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VideoPlayer(player: player)
                .onAppear() {
                    player = AVPlayer(url: Bundle.main.url(forResource: page.videoFileName, withExtension: "mp4")!)
                    player.isMuted = true
                    player.play()
                }
                .onDisappear() {
                    player.pause()
                }
                .frame(height: UIScreen.screenHeight * 0.82, alignment: .top)
                .ignoresSafeArea(.container, edges: .all)
            Spacer()
            VideoFooterView(page: page)
                .proportionalFrame(width: 1.0, height: 0.2)
        }
        .background(Color.black)
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    IntroVideoView(page: Page(headline: "", videoFileName: "iv1", content: ""))
//        .modelContainer(for: Item.self, inMemory: true)
}


extension UIScreen {
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
