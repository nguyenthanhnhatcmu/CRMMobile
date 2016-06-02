//
//  AddFilterViewController.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 5/31/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import UIKit

class AddFilterViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mytableView: UITableView!
    var sections : [Section] = SectionData().getSectionFromData()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].heading
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }
    
    
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("sectionCell", forIndexPath: indexPath)
        cell.textLabel?.text = sections[indexPath.section].items[indexPath.row]
        return cell
    }
    


}
