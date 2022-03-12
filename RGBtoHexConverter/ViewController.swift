//
//  ViewController.swift
//  RGBtoHexConverter
//
//  Created by Oğuzhan Erdem on 11.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtRed: UITextField!
    @IBOutlet weak var txtGreen: UITextField!
    @IBOutlet weak var txtBlue: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var btnConvert: UIButton!
    @IBOutlet weak var lblSelectedColor: UILabel!
    var secilenIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        secilenIndex = sender.selectedSegmentIndex
        lblResult.text?.removeAll()
        txtRed.text?.removeAll()
        txtGreen.text?.removeAll()
        txtBlue.text?.removeAll()
        lblSelectedColor.backgroundColor = UIColor.white
       
       if secilenIndex == 0 {
           btnConvert.setTitle("RGB - HEX Çevir", for: UIControl.State.normal)
       }
       else {
           btnConvert.setTitle("HEX - RGB Çevir", for: UIControl.State.normal)
       }
       
       
       
       
    }
     
    @IBAction func btnConvertClicked(_ sender: UIButton) {
    }
    
}

