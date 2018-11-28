## SwiftHelpers

A bunch of useful functions and extensions.

## Installation

Just copy files from 'Source' folder into your project and add them to your target. 'Core' folder is mandatory.

## Usage:
#### JSON

Let's say that we have the next json:
```Swift
let json: Dictionary<String, Any>? = ["config": ["info": ["urls": ["url1", "url2"],
                                                          "someKey": "someValue"],
                                                 "debug": "1"],
                                      "appVersion": "1.0"]
```
And we need to extract first url. This is how we can do it with built-in methods:
```Swift
func firstUrl_standart() -> String {
    guard let config = json?["config"] as? Dictionary<String, Any>,
        let info = config["info"] as? Dictionary<String, Any>,
        let urls = info["urls"] as? [String], !urls.isEmpty else
    {
        return "defaultUrl"
    }

    return urls[0]
}
```
Compare it with a functional approach:
```Swift
func firstUrl_functional() -> String {
    let urls: [String]? = extract("urls") § extract("info") § extract("config") § json

    return urls?.first ?? "defaultUrl"
}
```

It looks really shorter and more understandable, doesn't it?

#### TODO

More useful functions/extensions are coming.

## License
SwiftHelpers is available under the MIT license. See the LICENSE file for more info.
