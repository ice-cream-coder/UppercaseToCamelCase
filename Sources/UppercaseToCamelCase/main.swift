//
//  main.swift
//  UppercaseToCamelCase
//
//  Created by Roy Dawson on 2/20/20.
//

import Foundation


var lines = [String]()
while let line = readLine() {
    if line == "" {
        break
    }
    lines.append(line)
}

let result = lines.map { line in
    let capitalized = line.split(separator: "_").map {
        $0.capitalized
    }.joined()
    var camel = capitalized.first!.lowercased()
    let substring = capitalized[capitalized.index(after: capitalized.startIndex)...]
    camel.append(String(substring))
    return camel
}.joined(separator: "\n")

print(result)
