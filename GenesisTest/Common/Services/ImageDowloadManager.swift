//
//  ImageDowloadManager.swift
//  GenesisTest
//
//  Created by mrohach on 14.10.2022.
//

import Foundation

class ImageDowloadManager {
    
    // MARK: - Public methods
    static func saveImage(_ data: Data, for path: String) {
        guard let directory = try? FileManager.default.url(
            for: .documentDirectory,
            in: .userDomainMask,
            appropriateFor: nil,
            create: false) as NSURL else { return }
        do {
            try data.write(to: directory.appendingPathComponent(path)!)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    static func getSavedImage(named: String) -> Data? {
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            do {
                return try Data(contentsOf: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent(named))
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
}
