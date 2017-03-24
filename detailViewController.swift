//
//  detailViewController.swift
//  movieAPP_HW1
//
//  Created by YenShao on 2016/12/26.
//  Copyright © 2016年 YenShao. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {
    
    @IBOutlet weak var detailImg: UIImageView!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    var infoPic:String?
    var infodetail:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let okinfodetail = infodetail
        {
            detailLabel.text = okinfodetail
        }
        
        if let okinfoPic = infoPic
        {
            detailImg.image = UIImage(named: okinfoPic)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
