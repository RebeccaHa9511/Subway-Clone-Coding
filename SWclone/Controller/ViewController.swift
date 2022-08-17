
import UIKit

class ViewController: UIViewController {
   
    var pageViewController : PageViewController!
    var btnLists : [UIButton] = []

    @IBOutlet weak var favBtn: UIButton!
    @IBOutlet weak var promotionBtn: UIButton!
    @IBOutlet weak var sandwichBtn: UIButton!
    @IBOutlet weak var saladBtn: UIButton!
    @IBOutlet weak var wrapBtn: UIButton!
    @IBOutlet weak var sidesBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBtnList()
        changeBtnColor()
    }

    
    @IBAction func favesButton(_ sender: Any) {
        pageViewController.setViewcontrollersFromIndex(index: 0)
 
    }
    @IBAction func promotionButton(_ sender: Any) {
        pageViewController.setViewcontrollersFromIndex(index: 1) }
    @IBAction func sandwichButton(_ sender: Any) {
        pageViewController.setViewcontrollersFromIndex(index: 2)}
    @IBAction func saladButton(_ sender: Any) {
        pageViewController.setViewcontrollersFromIndex(index: 3)}
    @IBAction func wrapButton(_ sender: Any) {
        pageViewController.setViewcontrollersFromIndex(index: 4)}
    @IBAction func sidesButton(_ sender: Any) {
        pageViewController.setViewcontrollersFromIndex(index: 5)}
    
    func setBtnList() {
        favBtn.tintColor = .systemGreen
        btnLists.append(favBtn)
        btnLists.append(promotionBtn)
        btnLists.append(sandwichBtn)
        btnLists.append(saladBtn)
        btnLists.append(wrapBtn)
        btnLists.append(sidesBtn)
    }
    
    var currentIndex : Int = 0 {
           didSet{
               changeBtnColor()
               print(currentIndex)
           }
       }
    
    func changeBtnColor(){
        
        for (index, element) in btnLists.enumerated(){
            
            if index == currentIndex{
                element.setTitleColor(.systemGreen, for: .normal)
            }
            else{
                element.setTitleColor(.darkGray, for: .normal)
            }
            
        }
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pageSegue" {
                   print("Connected")
                   guard let vc = segue.destination as? PageViewController else {return}
                   pageViewController = vc
                   
                   pageViewController.completeHandler = { (result) in
                       self.currentIndex = result
                   }
                   
               }
        }
    

}

