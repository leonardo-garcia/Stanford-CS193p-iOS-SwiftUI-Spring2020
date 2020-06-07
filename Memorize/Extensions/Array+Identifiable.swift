//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Leonardo Garcia  on 06/06/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
