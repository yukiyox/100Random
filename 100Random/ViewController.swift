//
//  ViewController.swift
//  100Random
//
//  Created by Yukiyo Suenaga on 2023/06/19.
//

import UIKit

class ViewController: UITableViewController {
    var numbers: [Int] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        generateRandomNumbers()
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    func generateRandomNumbers() {
        var allNumbers = Array(1...100)
        allNumbers.shuffle()
        numbers = Array(allNumbers.prefix(20))
    }
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath)
        
        let number = numbers[indexPath.row]
        cell.textLabel?.text = "\(number)"
        
        if number >= 50 {
            cell.textLabel?.textColor = .systemPink
        } else {
            cell.textLabel?.textColor = .black
        }
        return cell
        
    }
}

