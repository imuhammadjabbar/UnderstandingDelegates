//
//  VCA.swift
//  DelegationSTEPS
//
//  Created by Muhammad Jabbar on 11/03/2018.
//  Copyright © 2018 Muhammad Jabbar. All rights reserved.
//

import UIKit

//// Delegate STEP 4 -- Shake Hand to Receive Messages
class VCA: UIViewController, VCBDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnShowVCBAction(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueShowVCB", sender: self);
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //// Delegate STEP 5 -- Get Reference of Sender/Catch up the Interface to listen
        //// to the messages
        let referenceVCB = segue.destination as! VCB;
        referenceVCB.delegate = self;
    }

    //// Delegate STEP 6 --  Receive/Listen the message
    func changeBackgroundColor(color: UIColor?) {
        self.view.backgroundColor = color;
    }
    
}
