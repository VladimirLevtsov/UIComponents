//
//  File.swift
//  
//
//  Created by VLADIMIR LEVTSOV on 14.01.2021.
//

import UIKit
import SwiftUI
import Combine

public struct ActivityIndicator: UIViewRepresentable {

    @Binding public var isAnimating: Bool
    public var style: UIActivityIndicatorView.Style

    public init(isAnimating: Binding<Bool>, style: UIActivityIndicatorView.Style) {
        self._isAnimating = isAnimating
        self.style = style
    }
    
    public func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    public func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}
