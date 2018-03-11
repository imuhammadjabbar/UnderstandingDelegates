//
//  VCB.swift
//  DelegationSTEPS
//
//  Created by Muhammad Jabbar on 11/03/2018.
//  Copyright © 2018 Muhammad Jabbar. All rights reserved.
//

import UIKit

//LINK: https://medium.com/@jamesrochabrun/implementing-delegates-in-swift-step-by-step-d3211cbac3ef


//// Delegate STEP 1 -- Define a way to communicate/Define Protocol
protocol VCBDelegate {
    func changeBackgroundColor(color: UIColor?);
}

class VCB: UIViewController {
    
    @IBOutlet weak var btnSendMessage: UIButton!
    //// Delegate STEP 2 -- Provide/Define an Interface to communicate
    var delegate : VCBDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //--->>> Changing Button color to Random
        self.btnSendMessage.backgroundColor = UIColor.randomColor;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSendMessageAction(_ sender: UIButton) {
        //// Delegate STEP 3 -- Send Message via Provided Inteface
        delegate?.changeBackgroundColor(color: sender.backgroundColor);
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

extension CGFloat {
    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static var randomColor: UIColor {
        return UIColor(red: .random, green: .random, blue: .random, alpha: 1.0)
    }
}
