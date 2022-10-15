//
//  DefaultNavBar.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import SwiftUI

struct DefaultNavBar: ViewModifier {
    
    // MARK: - Public properties
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var text: String
    
    var btnBack : some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image("back")
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Colors.primary)
        }
    }
    
    func body(content: Content) -> some View {
        content
            .navigationBarHidden(false)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: btnBack)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text(text)
                        .font(.headline)
                        .foregroundColor(Colors.primary)
                        .frame(minWidth: 200)
                }
            }
    }
}

extension View {
    func defaultNavBar(text: String) -> some View {
        modifier(DefaultNavBar(text: text))
    }
}
