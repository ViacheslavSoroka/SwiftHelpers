//
//  Castable.swift
//  iOS
//
//  Created by Viacheslav Soroka on 3/13/19.
//  Copyright © 2019 Viacheslav Soroka. All rights reserved.
//

public enum Castable<Wrapped> {
    
    // MARK: - Cases
    
    case value(Wrapped)
    
    // MARK: - Public
    
    public func match<A>(_ action: (A) throws -> ()) rethrows -> Castable<Wrapped> {
        switch self {
        case let .value(wrapped):
            try cast(wrapped).map(action)
            return .value(wrapped)
        }
    }
    
    public func map<A>(_ transform: (Wrapped) throws -> A) rethrows -> Castable<A> {
        return try .value(transform(self.extract()))
    }
    
    public func extract() -> Wrapped {
        switch self {
        case let .value(wrapped): return wrapped
        }
    }
}

public func castable<A>(_ a: A) -> Castable<A> {
    return .value(a)
}
