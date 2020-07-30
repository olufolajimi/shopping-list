//
//  ViewController.swift
//  Shopping List
//
//  Created by Folajimi  on 08/07/2020.
//  Copyright © 2020 Folajimi Babasola. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
//  MARK: Properties
    @IBOutlet weak var inputTextField: UITextField!
    var listOfItems: [String] = []
    var itemToAdd = ""
    @IBOutlet weak var tableViewItems: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//    MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItems.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataEntryCell", for: indexPath)
        cell.textLabel?.text = listOfItems[indexPath.row]
        return cell
    }

//  MARK: Actions
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTextField.resignFirstResponder()
        return true
    }
    
    @IBAction func addToList(_ sender: UIButton) {
        itemToAdd = inputTextField.text!

        listOfItems.append(itemToAdd)
        print("Added " + itemToAdd + " to listOfItems")
        
        inputTextField.text = ""
        
        tableViewItems.reloadData()
        
    }
    @IBAction func clearList(_ sender: UIButton) {
        listOfItems = []
        tableViewItems.reloadData()
    }
}

