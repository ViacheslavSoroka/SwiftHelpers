//
//  NSLocking+Extensions.swift
//  iOS
//
//  Created by Viacheslav Soroka on 3/13/19.
//  Copyright © 2019 Viacheslav Soroka. All rights reserved.
//

import Foundation

public extension NSLocking {
    
    // MARK: - Public
    
    public func `do`<Result>(action: () -> Result) -> Result {
        self.lock()
        defer { self.unlock() }
        
        return action()
    }
}
