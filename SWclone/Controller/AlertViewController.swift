//
//  AlertViewController.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/16.
//

import UIKit

class AlertViewController: UIViewController {

    
    @IBOutlet weak var swnamesLabel: UILabel!
    @IBOutlet weak var cancleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cancleButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)

    }

    
//    @IBAction func cancleButtonTapped(_ sender: UIButton) {
//
//        let previousVC = self.storyboard?.instantiateViewController(withIdentifier: "CustonDetailVC") as! CustonDetailVC
//
//        present(previousVC, animated: true, completion: nil)
//    }
    
    @objc func dismissView(){
        dismiss(animated: false, completion: nil)
        
    }
    
    
}
