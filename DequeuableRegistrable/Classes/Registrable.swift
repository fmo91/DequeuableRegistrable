//
//  Registrable.swift
//  DequeuableRegistrable
//
//  Created by Fernando Ortiz on 1/5/17.
//  Copyright © 2017 Fernando Martín Ortiz. All rights reserved.
//

import UIKit

public protocol Registrable: Identifiable {
    static var nib: UINib { get }
}

// MARK: - Defaults -
public extension Registrable {
    static var nib: UINib {
        return UINib(nibName: String(describing: Self.self), bundle: nil)
    }
}

// MARK: - UITableViewCell -
public extension Registrable where Self:UITableViewCell {
    public static func register(in tableView: UITableView) {
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
}

// MARK: - UICollectionViewCell
public extension Registrable where Self:UICollectionViewCell {
    public static func register(in collectionView: UICollectionView) {
        collectionView.register(nib, forCellWithReuseIdentifier: identifier)
    }
}

// MARK: - UICollectionReusableView -
public extension Registrable where Self:UICollectionReusableView {
    public static func register(in collectionView: UICollectionView, as type: CollectionViewReusableViewType) {
        collectionView.register(nib,
            forSupplementaryViewOfKind  : type.value,
            withReuseIdentifier         : identifier
        )
    }
}
