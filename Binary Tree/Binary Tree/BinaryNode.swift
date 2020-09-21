//
//  BinaryNode.swift
//  Binary Tree
//
//  Created by Joshua Shen on 12/1/18.
//  Copyright © 2018 Joshua Shen. All rights reserved.
//

import Foundation

class BinaryNode: CustomStringConvertible {
    let data: String
    var left: BinaryNode?
    var right: BinaryNode?
    
    init(_ data: String) {self.data = data}
    
    var description: String {return data}
}


