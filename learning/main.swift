//
//  main.swift
//  learning
//

import Foundation

do {
    // Array
    var arr = [Int]()
    arr.append(0)
    arr.append(4)
    print("array: ", arr)

    let characters = ["b", "a", "o"]
    for character in characters {
        print("This is \(character)")
    }

    // Dictionaries
    var dictionary: [String: String] = [:]
    dictionary["America"] = "New York"
    dictionary["Vietnam"] = "Hanoi"
    dictionary["Thailand"] = "Bangkok"

    print("dictionary:", dictionary["Vietnam", default: "Unknown"], ",count:", dictionary.count)
    dictionary.removeAll()
    print("removed", dictionary)


    // Sets
    var cars = Set<String>([])
    cars.insert("Ferrari")
    cars.insert("Lamborghini")
    print("set:",cars)

    // ENUM
    enum Weekday {
        case monday, tuesday, wednesday, friday, saturday, sunday
    }
    var day: Weekday
    day = .tuesday
    day = .friday
    print("Enum", day)
    
    let cp2 = CheckPointTwo()
    cp2.execute()
    let cp3 = CheckPointThree()
    cp3.execute()
}

