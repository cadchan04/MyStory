//
//  DetailViewController.swift
//  MyStory
//
//  Created by Cadence Chan on 1/30/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var info: info?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let info = info {
            print(info.info)
        }
        
        if let information = info {
           twiceImageView.image = information.image
            infoText.text = information.info

        }

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var twiceImageView: UIImageView!

    
    @IBOutlet weak var infoText: UITextView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
