//
//  Operators.swift
//  iOS
//
//  Created by Viacheslav Soroka on 11/28/18.
//  Copyright © 2018 Viacheslav Soroka. All rights reserved.
//

infix operator § : RightApplyPrecedence
infix operator • : CompositionPrecedence

infix operator <| : RightApplyPrecedence
infix operator |> : LeftApplyPrecedence
