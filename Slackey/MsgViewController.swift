//
//  MsgViewController.swift
//  Slackey
//
//  Created by Kenny Speer on 5/6/19.
//  Copyright © 2019 Kenny Speer. All rights reserved.
//

import Cocoa

class MsgViewController: NSViewController {

    @IBOutlet var textLabel: NSTextField?
    
    let messages = Message.all
    
    var currentMsgIndex: Int = 0 {
        didSet {
            updateMessage()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        currentMsgIndex = 0
    }
    
    func updateMessage() {
        textLabel?.stringValue = String(describing: messages[currentMsgIndex])
    }
}

extension MsgViewController {
    
    static func freshController() -> MsgViewController {
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let identifier = NSStoryboard.SceneIdentifier("MsgViewController")
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? MsgViewController else {
            fatalError("Can't find MsgViewController? - check Main.storyboard")
        }
        return viewcontroller
    }
}

extension MsgViewController {
    @IBAction func previous(_ sender: NSButton) {
        currentMsgIndex = (currentMsgIndex - 1 + messages.count) % messages.count
    }
    
    @IBAction func next(_ sender: NSButton) {
        currentMsgIndex = (currentMsgIndex + 1) % messages.count
    }
    
    @IBAction func quit(_ sender: NSButton) {
        NSApplication.shared.terminate(sender)
    }
}
