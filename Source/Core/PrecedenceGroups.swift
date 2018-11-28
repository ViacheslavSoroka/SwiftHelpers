//
//  PrecedenceGroups.swift
//  iOS
//
//  Created by Viacheslav Soroka on 11/28/18.
//  Copyright © 2018 Viacheslav Soroka. All rights reserved.
//

precedencegroup CompositionPrecedence {
    associativity: right
    higherThan: BitwiseShiftPrecedence
}

precedencegroup RightApplyPrecedence {
    associativity: right
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}

precedencegroup LeftApplyPrecedence {
    associativity: left
    higherThan: AssignmentPrecedence
    lowerThan: TernaryPrecedence
}
