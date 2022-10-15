//
//  LinearGradient.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import Foundation
import SwiftUI

extension LinearGradient {
    static let standard = LinearGradient(
        gradient: Gradient(
            colors: [Colors.buttonColor1,
                     Colors.buttonColor2]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
}
