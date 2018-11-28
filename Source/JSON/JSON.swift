//
//  JSON.swift
//  iOS
//
//  Created by Viacheslav Soroka on 11/28/18.
//  Copyright © 2018 Viacheslav Soroka. All rights reserved.
//

public func extract<Key, Value>(_ key: Key, _ json: Dictionary<Key, Any>?) -> Value? {
    return json.flatMap {
        cast($0[key])
    }
}

public func extract<Key, Value>(_ key: Key) -> (Dictionary<Key, Any>?) -> Value? {
    return curry(extract)(key)
}
