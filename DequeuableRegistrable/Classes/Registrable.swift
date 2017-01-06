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
public enum CollectionViewReusableViewType {
    case header, footer
}

public extension Registrable where Self:UICollectionReusableView {
    public static func register(in collectionView: UICollectionView, as type: CollectionViewReusableViewType) {
        switch type {
        case .header: registerAsHeader(in: collectionView)
        case .footer: registerAsFooter(in: collectionView)
        }
    }
    
    private static func registerAsHeader(in collectionView: UICollectionView) {
        collectionView.register(nib,
            forSupplementaryViewOfKind: UICollectionElementKindSectionHeader,
            withReuseIdentifier: identifier
        )
    }
    private static func registerAsFooter(in collectionView: UICollectionView) {
        collectionView.register(nib,
            forSupplementaryViewOfKind: UICollectionElementKindSectionFooter,
            withReuseIdentifier: identifier
        )
    }
}
