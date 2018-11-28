//
//  Functions.swift
//  iOS
//
//  Created by Viacheslav Soroka on 11/28/18.
//  Copyright © 2018 Viacheslav Soroka. All rights reserved.
//

/// Apply. g § f § a === g(f(a))
public func §<A, B>(_ f: (A) -> B, _ a: A) -> B {
    return f(a)
}

/// Compose. (g • f)(a) === g(f(a))
public func •<A, B, C>(_ f: @escaping (A) -> B, _ g: @escaping (B) -> C) -> (A) -> C {
    return {
        g(f($0))
    }
}

/// Pipe. g <| f <| a === g(f(a))
public func <|<A, B>(_ f: (A) -> B, _ a: A) -> B {
    return f(a)
}

/// Reversed pipe. a |> f |> g === g(f(a))
public func |><A, B>(_ a: A, _ f: (A) -> B) -> B {
    return f(a)
}

public func cast<A, B>(_ a: A) -> B? {
    return a as? B
}
