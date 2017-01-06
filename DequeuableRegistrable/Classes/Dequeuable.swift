//
//  Dequeuable.swift
//  DequeuableRegistrable
//
//  Created by Fernando Ortiz on 1/5/17.
//  Copyright © 2017 Fernando Martín Ortiz. All rights reserved.
//

import UIKit

public protocol Dequeuable: Identifiable {}

// MARK: - UITableViewCell -
public extension Dequeuable where Self:UITableViewCell {
    public static func dequeue(from tableView: UITableView) -> Self {
        return tableView.dequeueReusableCell(withIdentifier: identifier) as! Self
    }
}

// MARK: - UICollectionViewCell -
public extension Dequeuable where Self:UICollectionViewCell {
    public static func dequeue(from collectionView: UICollectionView, for indexPath: IndexPath) -> Self {
        return collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! Self
    }
}

// MARK: - UICollectionReusableView -
public extension Dequeuable where Self:UICollectionReusableView {
    public static func dequeue(from collectionView: UICollectionView, for indexPath: IndexPath, as type: CollectionViewReusableViewType) -> Self {
        return collectionView.dequeueReusableSupplementaryView(ofKind: type.value, withReuseIdentifier: identifier, for: indexPath) as! Self
    }
}
