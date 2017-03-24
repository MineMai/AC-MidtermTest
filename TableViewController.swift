//
//  TableViewController.swift
//  movieAPP_HW1
//
//  Created by YenShao on 2016/12/26.
//  Copyright © 2016年 YenShao. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        {
            cell.movieName.text = model.movie[indexPath.row]["name"]
            cell.movieImg.image = UIImage(named: model.movie[indexPath.row]["picture"]!)
            cell.movieData.text = model.movie[indexPath.row]["date"]
            return cell
        }
        else
        {
            let cell = UITableViewCell()
            cell.textLabel?.text = model.movie[indexPath.row]["name"]
            cell.imageView?.image = UIImage(named: model.movie[indexPath.row]["picture"]!)
            return cell
        }

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "detailSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue"
        {
            if let dvc = segue.destination as? detailViewController
            {
                if let select = tableView.indexPathForSelectedRow?.row
                {
                    dvc.infoPic = model.movie[select]["picture"]
                    dvc.infodetail = model.movie[select]["describe"]
                }
                
            }
        }
    }
    
    
    

    

}
