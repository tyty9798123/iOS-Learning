//
//  TestTableViewController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/11/24.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {

    var array : [String] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.isEditing = true;
        self.tableView.register(
               UINib(nibName: "AddItemTableViewCell", bundle: nil),
               forCellReuseIdentifier: "AddItemTableViewCell")
        self.tableView.register(
            UINib(nibName: "PBTestTableViewCell", bundle: nil),
            forCellReuseIdentifier: "reuseIdentifier")
        
        
         // self.tableView.backgroundColor = .blue;
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        array = ["Jason", "John", "Mary"]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if (section == 0){
            return 1
        }
        else if (section == 1){
            return array.count
        }
        return 0;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.section == 0){
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddItemTableViewCell", for: indexPath)
            return cell
        }
        else if (indexPath.section == 1){
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            if let customizedCell = cell as? PBTestTableViewCell{
                let name = array[indexPath.row]
                customizedCell.titleLabel.text = name
                customizedCell.contentLabel.text = "This is content."
            }
            return cell
        }
        else{
            return UITableViewCell(); // empty
        }
    }
    /*
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(300);
    }*/
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            if (indexPath.section == 1){
                array.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            
            // 把最上面的 AddItemTableViewCell 抓出來 使用 section 和 index
            let cell = tableView.cellForRow(at: IndexPath(item: 0, section: 0))
            // 如果他是點選 addItem 的 cell
            if let addItemCell = cell as? AddItemTableViewCell{
                // 取得當前 textFiled 的 值
                // 先用 if let 確定他有 值
                if let newNmae = addItemCell.nameTextField.text{
                    array.append(newNmae)

                    tableView.insertRows(
                        at: [IndexPath(item: array.count-1, section: 1)],
                        with: .automatic)
                    addItemCell.nameTextField.text = nil //清空
                }
                
            }
        }    
    }
    

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .insert
    }
    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
