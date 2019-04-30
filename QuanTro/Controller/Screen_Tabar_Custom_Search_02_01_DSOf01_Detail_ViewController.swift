//
//  Screen_Tabar_Custom_Search_02_01_DSOf01_Detail_ViewController.swift
//  QuanTro
//
//  Created by vuminhtam on 4/30/19.
//  Copyright © 2019 Le Nguyen Quoc Cuong. All rights reserved.


import UIKit

class Screen_Tabar_Custom_Search_02_01_DSOf01_Detail_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func bt_Chat(_ sender: Any) {
        self.goto_MH_Chat_User1_User2()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print(".........user2 chon la hien tai de chuan bi chat la :\(vistor).............")
    }
    
    func goto_MH_Chat_User1_User2() {
        let scr = self.storyboard?.instantiateViewController(withIdentifier: "MH_Chat_User1_User2") as! Screen_Tabar_Custom_Search_02_01_DSOf01_Detail__Chat_ViewController
        //        present(scr!, animated: true, completion: nil)
        navigationController?.pushViewController(scr, animated: true)
    }
    
}
