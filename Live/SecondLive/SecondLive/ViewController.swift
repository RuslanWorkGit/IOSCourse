//
//  ViewController.swift
//  SecondLive
//
//  Created by Ruslan Liulka on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var centralLabel: UILabel!
    @IBOutlet weak var centralButton: UIButton!
    
//    init() {
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        centralLabel.text = "New Text"
        centralLabel.backgroundColor = .systemBlue
        print("View loaded")
    }
    
    override func viewWillLayoutSubviews() {
        //
    }
    
    override func viewDidLayoutSubviews() {
        //
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        //
    }
    
    deinit {
        
    }

    @IBAction func centralButtonPressed(_ sender: Any) {
        centralLabel.backgroundColor = .systemGreen
        print("pressed!")
    }
    
}

