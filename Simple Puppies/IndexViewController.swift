//
//  IndexViewController.swift
//  Simple Puppies
//
//  Created by galvanize on 8/18/14.
//  Copyright (c) 2014 galvanize. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    
    @IBOutlet var tableView: UITableView!
    let images = ["puppy1.jpg", "puppy2.jpg", "puppy3.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("hello")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.images.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("myCell") as UITableViewCell
        
        let imageName = images[indexPath.row]
        
        cell.textLabel.text = imageName

        cell.imageView.image = UIImage(named: imageName)
        
        return cell

    }
    

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        var myController: ViewController = segue.destinationViewController as ViewController
        var indexPath = self.tableView.indexPathForSelectedRow()
        var imageName = self.images[indexPath.row]
        myController.imageName = imageName
    }

}
