//
//  ViewController.swift
//  HelloWorld
//
//  Created by weiyongming on 2019/7/17.
//  Copyright © 2019 jam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!

    @IBOutlet weak var labelT: UILabel!

    @IBOutlet weak var btnShow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func testClick(_ sender: UIButton) {
        labelT.text="123123";
        labelT.text="22222";
        labelT.text="33333";
    }
    
    @IBAction func tetete(_ sender: UIButton) {
        let date = datePicker.date
        
        // 创建一个日期格式器
        let dformatter = DateFormatter()
        // 为日期格式器设置格式字符串
        dformatter.dateFormat = "yyyy年MM月dd日 HH:mm:ss"
        // 使用日期格式器格式化日期、时间
        let datestr = dformatter.string(from: date)
        
        let message =  "您选择的日期和时间是：\(datestr)"
        
        // 创建一个UIAlertController对象（消息框），并通过该消息框显示用户选择的日期、时间
        let alertController = UIAlertController(title: "当前日期和时间",
                                                message: message,
                                                preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }


}

