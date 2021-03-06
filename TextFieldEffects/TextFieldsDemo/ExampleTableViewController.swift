//
//  ExampleTableViewController.swift
//  TextFieldEffects
//
//  Created by Raúl Riera on 28/08/2015.
//  Copyright © 2015 Raul Riera. All rights reserved.
//

import UIKit
import TextFieldEffects

class ExampleTableViewController : UITableViewController {
    
    @IBOutlet private var textFields: [TextFieldEffects]!
    @IBOutlet weak var hoshi: HoshiTextField!
    
    /**
    Set this value to true if you want to see all the "firstName"
    textFields prepopulated with the name "Raul" (for testing purposes)
    */
    let prefillTextFields = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hoshi.error = "Some long long long very very long long long alskdfjlasd asdlkajs dfasdla error!"

        guard prefillTextFields == true else { return }
        
        _ = textFields.map { $0.text = "Raul" }
        
    }
}
