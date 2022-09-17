//
//  ViewController.swift
//  Kebab
//
//  Created by Oussama Siharde on 9/16/22.
//

import Cocoa
import Foundation

class ViewController: NSViewController {
    @IBOutlet var text_field1: NSTextFieldCell!
    
    @IBOutlet var text_field2: NSTextField!

    @IBAction func button1(_ sender: Any) {
        var text = text_field1.stringValue
        text.removeAll(where: {$0.isPunctuation})
        
        text_field2.stringValue = text.split{$0 == " "}.map({ $0.lowercased() }).joined(separator: "-")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

