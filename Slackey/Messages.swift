//
//  Messages.swift
//  Slackey
//
//  Created by Kenny Speer on 5/6/19.
//  Copyright © 2019 Kenny Speer. All rights reserved.
//

import Foundation

struct Message {
    let text: String
    let author: String
    
    static let all: [Message] = [
        Message(text: "Never put off until tomorrow what you can do the day after tomorrow.", author: "Mark Twain"),
        Message(text: "Efficiency is doing better what is already being done", author: "Peter Drucker"),
        Message(text: "To infinity and beyond!", author: "Buzz Lightyear"),
        Message(text: "may the Force be with you.", author: "Han Solo"),
        Message(text: "Simplicity is the ultimate sophistication.", author: "Leonardo Da Vinci"),
        Message(text: "It's not just what it looks like and feels like.  Design is how it works.", author: "Steve Jobs")
    ]
}

extension Message: CustomStringConvertible {
    var description: String {
        return "\"\(text)\" - \(author)"
    }
}
