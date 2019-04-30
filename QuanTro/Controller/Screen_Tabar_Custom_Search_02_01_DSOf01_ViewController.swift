//
//  Screen_Tabar_Custom_Search_02_01_DSOf01_ViewController.swift
//  QuanTro
//
//  Created by vuminhtam on 4/30/19.
//  Copyright © 2019 Le Nguyen Quoc Cuong. All rights reserved.
//

import UIKit

class Screen_Tabar_Custom_Search_02_01_DSOf01_ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate   = self
        self.load_table()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let titleView:UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 25))
        let label:UILabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 25))
        label.text = "\(Q!)"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .center
        titleView.addSubview(label)
        
        self.navigationItem.titleView = titleView
    }
    
    func goto_MH_Search_02_01_DSOf01_detail(){
        let scr = storyboard?.instantiateViewController(withIdentifier: "MH_timkiem_02_01_DSOf01_datail")
        navigationController?.pushViewController(scr!, animated: true)
    }
}

extension Screen_Tabar_Custom_Search_02_01_DSOf01_ViewController: UITableViewDataSource,UITableViewDelegate
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
        
        let image = cell.viewWithTag(100) as! UIImageView
        let lb_diachi = cell.viewWithTag(101) as! UILabel
        let lb_gia    = cell.viewWithTag(102)  as! UILabel
        
        image.image = UIImage(named: "person")
        lb_diachi.text = "abc/mmmm"
        lb_gia.text   = "4000 $"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.goto_MH_Search_02_01_DSOf01_detail()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func load_table() {
        
        var tablename = ref.child("User").child("User2")
        tablename.observe(.childAdded, with: { (snapshot) in
            // kiem tra xem postDict co du lieu hay ko
            let postDict = snapshot.value as? [String : AnyObject]
            if(postDict != nil)
            {
//             self.listFriend.append(user)
            }
        })
    }
    
    
}
