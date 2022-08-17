//
//  CustonDetailVC.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/16.
//

import UIKit
import ExpyTableView

class CustonDetailVC: UIViewController, ExpyTableViewDelegate, ExpyTableViewDataSource {
    func tableView(_ tableView: ExpyTableView, expyState state: ExpyState, changeForSection section: Int) {
        print("\(section)섹션")
               
               switch state {
               case .willExpand:
                print("WILL EXPAND")

               case .willCollapse:
                print("WILL COLLAPSE")

               case .didExpand:
                print("DID EXPAND")

               case .didCollapse:
                print("DID COLLAPSE")
               }
    }
    
    func tableView(_ tableView: ExpyTableView, canExpandSection section: Int) -> Bool {
        return true
    }
    
    func tableView(_ tableView: ExpyTableView, expandableCellForSection section: Int) -> UITableViewCell {
        let cell = ExpandableTableViewCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        //row 갯수 배열 갯수로 return
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ExpandableTableViewCell", for: indexPath) as? ExpandableTableViewCell else { return UITableViewCell() }
        return cell

    }
    
    

    @IBOutlet weak var nutritionExpy: UITableView!
    
    @IBOutlet weak var sandwichImageView: UIImageView!
    
    @IBOutlet weak var sandwichNameLabel: UILabel!
    
    @IBOutlet weak var sandwichDetailLabel: UILabel!
    
    @IBOutlet weak var suggestionButton: UIButton!
    
    
    var sandwichData: Sandwiches?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()

    }
        
    @IBAction func suggestionButtonTapped(_ sender: UIButton) {
        
        
    }
    
    
    
    func setupUI() {
        sandwichImageView.image = sandwichData?.sandwichImg
        sandwichNameLabel.text = sandwichData?.sandwichName
        sandwichDetailLabel.text = sandwichData?.sandwichDetails
        
        suggestionButton.clipsToBounds = true
        suggestionButton.layer.cornerRadius = 20
        
    
    }
    
}
