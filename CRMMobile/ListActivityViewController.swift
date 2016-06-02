//
//  ListActivityViewController.swift
//  CRMMobile
//
//  Created by Thanh Nhat on 5/31/16.
//  Copyright © 2016 Thanh Nhat. All rights reserved.
//

import UIKit


class ListActivityViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableviewListActivity: UITableView!

    var addArray : [Int] = []
    
    override func nextButtonAction(sender: UIButton!) {
        let addFilterView = initViewController("ActivityStoryboard", storyid: "AddFilterViewControllerID") as! AddFilterViewController
        self.navigationController?.pushViewController(addFilterView, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let number = indexPath.row
        if addArray.contains(number) {
            let cell = tableviewListActivity.cellForRowAtIndexPath(indexPath) as! ListActivityTableViewCell
            cell.buttonCheckBox.hidden = true
            let index = addArray.indexOf(number)
            if index != nil {
                self.addArray.removeAtIndex(index!)
            }
            
        }else {
            self.addArray.append(number)
            let cell2 = tableviewListActivity.cellForRowAtIndexPath(indexPath) as! ListActivityTableViewCell
            let image2 : UIImage = UIImage(named:"checkboxed")!
            cell2.buttonCheckBox.hidden = false
            cell2.buttonCheckBox.setImage(image2, forState: .Normal)
            
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableviewListActivity.dequeueReusableCellWithIdentifier("ListActivitycell", forIndexPath: indexPath) as! ListActivityTableViewCell
        cell.buttonCheckBox.hidden = true
        print("indexpath = \(indexPath.row)")
        
        for(var i = 0 ;i < addArray.count ; i++) {
            if(addArray[i] == indexPath.row) {
                cell.buttonCheckBox.hidden = false
                let image2 : UIImage = UIImage(named:"checkboxed")!
                cell.buttonCheckBox.setImage(image2, forState: .Normal)
            }
        }
        return cell
    }
   
    
    
    

}
