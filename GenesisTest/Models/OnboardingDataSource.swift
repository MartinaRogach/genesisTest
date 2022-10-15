//
//  OnboardingDataSource.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import Foundation

struct OnboardingItem: Hashable {
    var title: String
    var description: String
    var imageName: String
}

let onboardingItems: [OnboardingItem] = [
    OnboardingItem(title: "Easiness",
                   description: "Supplying the convenient transactions chains",
                   imageName: "Onboarding_1"),
    OnboardingItem(title: "Security",
                   description: "Providing crypto audience with high-tech security solutions",
                   imageName: "Onboarding_2"),
    OnboardingItem(title: "Transformation",
                   description: "Diversifying crypto investment experience worldwide",
                   imageName: "Onboarding_3")]
