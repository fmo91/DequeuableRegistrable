//
//  Identifiable.swift
//  DequeuableRegistrable
//
//  Created by Fernando Ortiz on 1/5/17.
//  Copyright © 2017 Fernando Martín Ortiz. All rights reserved.
//

import UIKit

public protocol Identifiable {
    static var identifier: String { get }
}

// MARK: - Defaults -
public extension Identifiable {
    public static var identifier: String {
        return String(describing: Self.self)
    }
}
