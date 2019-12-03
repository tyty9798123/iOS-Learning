//
//  TwoTableViewVIewControllerViewController.swift
//  PbUICourse
//
//  Created by 劉謹賢 on 2019/12/2.
//  Copyright © 2019 劉謹賢. All rights reserved.
//

import UIKit

class TwoTableViewVIewControllerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AddItemTableViewCellDelegate {
    func addItem(newName: String){
        studentList.append(newName)
        bottomTableView.insertRows(
        at: [IndexPath(item: studentList.count-1, section: 0)],
        with: .fade)
        updateCount();
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == topTableView{
            return 1
        }
        else if tableView == bottomTableView{
            return studentList.count
        }
        else{
            return 0;
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            if (tableView == bottomTableView){
                studentList.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
        updateCount();
    }
    
    @IBAction func dismissBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == topTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AddItemTableViewCell", for: indexPath) as! AddItemTableViewCell
            cell.delegate = self
            return cell
        }
        else if tableView == bottomTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
            if let customizedCell = cell as? PBTestTableViewCell{
                let name = studentList[indexPath.row]
                customizedCell.titleLabel.text = name
                customizedCell.contentLabel.text = "This is content."
            }
            return cell
        }
        else{
            return UITableViewCell();
        }
    }
    

    var studentList: [String] = []
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var topTableView: UITableView!
    @IBOutlet weak var bottomTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topTableView.delegate = self
        topTableView.dataSource = self
        bottomTableView.delegate = self
        bottomTableView.dataSource = self
        
        topTableView.register(
            UINib(nibName: "AddItemTableViewCell", bundle: nil),
            forCellReuseIdentifier: "AddItemTableViewCell"
        )
        bottomTableView.register(
        UINib(nibName: "PBTestTableViewCell", bundle: nil),
        forCellReuseIdentifier: "reuseIdentifier")
        
        studentList = ["John", "Steven", "Lily"]
        
        
        // Do any additional setup after loading the view.
        updateCount();
    };
    
    func updateCount(){
        titleLabel.text = "studentListCount: \(studentList.count)"
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
