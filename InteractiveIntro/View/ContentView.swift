//
//  ContentView.swift
//  InteractiveIntro
//
//  Created by Twinbit on 2/10/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State var isActive: Bool = false
    
    var body: some View {
        VStack {
            PagerView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .proportionalFrame(width: 1.0, height: 1.0)
//            if !self.isActive {
//                PagerView()
//                    .frame(maxWidth: .infinity)
//                    .propotionalFrame(width: 1.0, height: 0.7)
//            }
//            else {
//                SplashView()
//            }
        }
        .padding()
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 7.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
