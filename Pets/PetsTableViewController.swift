//
//  PetsTableViewController.swift
//  Pets
//
//  Created by Madison Waters on 9/4/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class PetsTableViewController: UITableViewController {
    
    var pets = [
                "B.B.",
                "Black Dirt",
                "Albert Bubbers Bergevin",
                "Obi Wan K-Bergevin",
                "Tiger",
                "Tigerman",
                "One Eyed Sally",
                "Mary Runs Wild"
            ]


    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetsCell", for: indexPath)

        // Configure the cell...
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PetsCell")
        cell.textLabel?.text = pets[indexPath.row]
        
        return cell
    }

}
