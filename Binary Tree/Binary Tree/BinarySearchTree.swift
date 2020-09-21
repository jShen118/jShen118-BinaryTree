//
//  BinarySearchTree.swift
//  Binary Tree
//
//  Created by Joshua Shen on 12/1/18.
//  Copyright © 2018 Joshua Shen. All rights reserved.
//

import Foundation

class BinarySearchTree {
    var headNode: BinaryNode
    
    init(_ data: String) {
        self.headNode = BinaryNode(data)
    }
    
    func addData(_ data: String, _ comparedNode: BinaryNode) {
        let nextNode = next(data, comparedNode)
        if nextNode == nil {
            branchEnd(data, comparedNode)
            return
        }
        addData(data, nextNode!)
    }
    
    func branchEnd(_ data: String, _ node: BinaryNode) {
        if data > node.data {node.right = BinaryNode(data)}
        if data < node.data {node.left = BinaryNode(data)}
    }
    
    //helper to find the next node that a string is to be compared to
    func next(_ data: String, _ comparedNode: BinaryNode)-> BinaryNode? {
        if data < comparedNode.data {return comparedNode.left}
        if data > comparedNode.data {return comparedNode.right}
        return nil
    }
    
    func inOrder(_ head: BinaryNode)-> String {
        if (head.left == nil && head.right == nil) {return head.description + " "}
        if head.left == nil {return head.description + " " + inOrder(head.right!)}
        if head.right == nil {return inOrder(head.left!) + " " + head.description}
        return inOrder(head.left!) + " " + head.description + " " + inOrder(head.right!)
    }
    
    func preOrder(_ head: BinaryNode)-> String {
        if (head.left == nil && head.right == nil) {return head.description + " "}
        if head.left == nil {return head.description + " " + preOrder(head.right!)}
        if head.right == nil {return head.description + " " + preOrder(head.left!)}
        return head.description + " " + preOrder(head.left!) + " " + preOrder(head.right!)
    }
    
    func postOrder(_ head: BinaryNode)-> String {
        if (head.left == nil && head.right == nil) {return head.description + " "}
        if head.left == nil {return postOrder(head.right!) + " " + head.description}
        if head.right == nil {return postOrder(head.left!) + " " + head.description}
        return postOrder(head.left!) + " " + postOrder(head.right!) + " " + head.description
    }
    
    func numberNodes(_ head: BinaryNode)-> Int {
        if (head.left == nil && head.right == nil) {return 1}
        if head.left == nil {return 1 + numberNodes(head.right!)}
        if head.right == nil {return 1 + numberNodes(head.left!)}
        return numberNodes(head.left!) + 1 + numberNodes(head.right!)
    }
}










