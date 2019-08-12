//
//  codeLangTableViewController.swift
//  tablePractice
//
//  Created by Ella Isgar on 8/12/19.
//  Copyright © 2019 Ella Isgar. All rights reserved.
//

import UIKit

struct Codes {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class codeLangTableViewController: UITableViewController {
    
    var allLang = [
        Codes(id: 1, title: "JavaScript", text: "This is the best, most popular kind of code.", image: "somefancy code"),
        Codes(id: 2, title: "Python", text: "SUPER popular coding language.", image: "a python snake?"),
        Codes(id: 3, title: "Java", text: "Idk to be honest", image: "some kind of coffee?")
    ]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allLang.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "languageCell", for: indexPath)

        cell.textLabel?.text = allLang[indexPath.row].title

        return cell
    }
    
    func tableView(_tableView: UITableView, titleForHeaderInSection section : Int) -> String? {
        return "Section \(section)"
    }

}
