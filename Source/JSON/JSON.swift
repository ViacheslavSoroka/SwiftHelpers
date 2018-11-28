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

//class Parser {
//    let json: Dictionary<String, Any>? = ["config": ["info": ["urls": ["url1", "url2"],
//                                                              "someKey": "someValue"],
//                                                     "debug": "1"],
//                                          "appVersion": "1.0"]
//    
//    func firstUrl_functional() -> String {
//        let urls: [String]? = extract("urls") § extract("info") § extract("config") § json
//        
//        return urls?.first ?? "defaultUrl"
//    }
//    
//    func firstUrl_standart() -> String {
//        guard let config = json?["config"] as? Dictionary<String, Any>,
//            let info = config["info"] as? Dictionary<String, Any>,
//            let urls = info["urls"] as? [String], !urls.isEmpty else
//        {
//            return "defaultUrl"
//        }
//        
//        return urls[0]
//    }
//}
