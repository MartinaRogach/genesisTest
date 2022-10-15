//
//  String.swift
//  GenesisTest
//
//  Created by mrohach on 15.10.2022.
//

import Foundation

extension String {
    func timeAgoDisplay() -> String {
        let dateFormatter = ISO8601DateFormatter()
        guard let date = dateFormatter.date(from: self) else { return "" }
        let formatter = RelativeDateTimeFormatter()
        formatter.locale = Locale(identifier: "en")
        formatter.unitsStyle = .full
        return formatter.localizedString(for: date, relativeTo: Date())
    }
}
