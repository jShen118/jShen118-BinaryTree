//
//  main.swift
//  Binary Tree
//
//  Created by Joshua Shen on 12/1/18.
//  Copyright © 2018 Joshua Shen. All rights reserved.
//

import Foundation

func binaryTreeTest() {
    let bt = BinarySearchTree("MMM")
    bt.addData("HHH", bt.headNode)
    bt.addData("RRR", bt.headNode)
    bt.addData("SSS", bt.headNode)
    bt.addData("ZZZ", bt.headNode)
    bt.addData("QQQ", bt.headNode)
    bt.addData("OOO", bt.headNode)
    bt.addData("KKK", bt.headNode)
    bt.addData("LLL", bt.headNode)
    bt.addData("FFF", bt.headNode)
    bt.addData("GGG", bt.headNode)
    bt.addData("BBB", bt.headNode)
    print(bt.inOrder(bt.headNode))
    print(bt.preOrder(bt.headNode))
    print(bt.postOrder(bt.headNode))
    print(bt.numberNodes(bt.headNode))
}
binaryTreeTest()



