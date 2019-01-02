//
//  SampleTableViewCell.swift
//  DequeuableRegistrable
//
//  Created by Fernando Ortiz on 1/5/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit
import DequeuableRegistrable

class SampleTableViewCell: UITableViewCell, DequeuableRegistrable {

    // MARK: - Views -
    @IBOutlet weak var sampleTitleLabel: UILabel!
    
    // MARK: - Life cycle -
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
}
