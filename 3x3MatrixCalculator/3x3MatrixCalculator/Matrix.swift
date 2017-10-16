//
//  Matrix.swift
//  3x3MatrixCalculator
//
//  Created by Korman Chen on 10/15/17.
//  Copyright © 2017 Korman Chen. All rights reserved.
//

import Foundation

class Matrix {
    private var matrix: [[Int]]
    
    init() {
        matrix = Array(repeating: Array(repeating: 0, count: 3), count: 3)
    }
    
    func set(_ someMatrix: [[Int]]) {
        self.matrix = someMatrix
    }
}
