//
//  ArrayExtension.swift
//  significant-change-location-service
//
//  Created by phattarapon on 27/7/2565 BE.
//

import Foundation
import UIKit

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
