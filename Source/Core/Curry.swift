//
//  Curry.swift
//  iOS
//
//  Created by Viacheslav Soroka on 11/28/18.
//  Copyright © 2018 Viacheslav Soroka. All rights reserved.
//

public func curry<A, B, C>(_ f: @escaping (A, B) -> C) -> (A) -> (B) -> C {
    return { a in
        { f(a, $0) }
    }
}
