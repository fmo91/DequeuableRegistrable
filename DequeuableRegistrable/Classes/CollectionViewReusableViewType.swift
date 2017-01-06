//
//  CollectionViewReusableViewType.swift
//  Pods
//
//  Created by Fernando Ortiz on 6/1/17.
//
//

import UIKit

public enum CollectionViewReusableViewType {
    case header, footer
    
    internal var value: String {
        switch self {
        case .header: return UICollectionElementKindSectionHeader
        case .footer: return UICollectionElementKindSectionFooter
        }
    }
}
