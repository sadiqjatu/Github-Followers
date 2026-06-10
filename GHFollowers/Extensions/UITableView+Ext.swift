//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Sadiq Jatu on 10/05/26.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
