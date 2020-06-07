//
//  Array+Only.swift
//  Memorize
//
//  Created by Leonardo Garcia  on 06/06/20.
//  Copyright © 2020 Leonardo Garcia. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
