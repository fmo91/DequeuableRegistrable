//
//  ViewController.swift
//  DequeuableRegistrable
//
//  Created by Fernando Ortiz on 01/05/2017.
//  Copyright (c) 2017 Fernando Ortiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Fernando", "Martin", "Ortiz"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        SampleTableViewCell.register(in: tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }

}

// MARK: - UITableViewDelegate, UITableViewDataSource -
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = SampleTableViewCell.dequeue(from: tableView)
        cell.sampleTitleLabel.text = names[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
}
