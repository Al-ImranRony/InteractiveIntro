//
//  Extensions.swift
//  InteractiveIntro
//
//  Created by Twinbit on 3/10/23.
//

import Foundation
import SwiftUI
import UIKit


extension View {
    func rightAlighnedContent() -> some View {
        modifier(RightAlighnedContent())
    }
    
    func setShadow() -> some View {
        modifier(SetShadow())
    }
    
    func setBG() -> some View {
        modifier(SetBackgroundColor())
    }
    
    func proportionalFrame(width: CGFloat, height: CGFloat, isSquared: Bool = false, alignment: Alignment = .center) -> some View {
        let finalWidth = UIScreen.main.bounds.width * width
        let finalHeight = isSquared ? finalWidth : UIScreen.main.bounds.height * height
        return frame(width: finalWidth, height: finalHeight)
    }
    
    
}

struct RightAlighnedContent: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 30, height: 30)
            .foregroundColor(Color.indigo)
    }
}

struct SetShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: .gray, radius: 5, x: 3, y: 3)
    }
}

struct SetBackgroundColor: ViewModifier {
    func body(content: Content) -> some View {
        content
            .colorInvert()
    }
}

