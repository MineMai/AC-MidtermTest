//
//  signViewController.swift
//  movieAPP_HW1
//
//  Created by YenShao on 2016/12/26.
//  Copyright © 2016年 YenShao. All rights reserved.
//

import UIKit

class signViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameListTextView: UITextView!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    let totalNumber = 2

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.text = ""

        
    }

    
    @IBAction func inputBtn(_ sender: UIButton)
    {
        
        let howmany = checkNameCount()
        print("howmany = \(howmany)")
        
        if howmany > totalNumber
        {
            messageLabel.text = "只能簽三筆"
        }
        else
        {
            if let name = nameTextField.text
            {
                if nameTextField.text == ""
                {
                    messageLabel.text = "名字不能留白"
                }
                else
                {
                    messageLabel.text = ""
                    nameListTextView.text = nameListTextView.text + name + "\n"
                    nameTextField.text = ""
                }
                
            }
        }
        
        
        
        
    }
    
    
    func checkNameCount() -> Int
    {
        //let countOfWords = nameListTextView.text.characters.count
        //print("countOfWords = \(countOfWords)")
        
        let countOfWord = nameListTextView.text.characters
        var count = 0
        for i in countOfWord
        {
            if i == "\n"
            {
                print("i = \(i)")
                count += 1
            }
        }
        return count
        
        
    }
    
    
    

    

}











