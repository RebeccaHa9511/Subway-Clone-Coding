import UIKit


class SandwichVC: UIViewController, UITableViewDataSource {

    //컨텐츠를 담음.
    
    var sandwichDataManager = SandwichDataManager()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self //tableView의 대리자를 ViewController로 임명.
        
        tableView.delegate = self

        
        sandwichDataManager.makeSandwichData() //DataManager 에 실제로 데이터 생성되는 시점.
    }



    //UITableViewDataSource 를 채택하면 구현해줘야하는 메서드 2개
    //몇개의 컨텐츠를 만들면 되는지 알려주는 메서드.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { print(#function)
        return sandwichDataManager.getSandwichData().count //컨텐츠 갯수만큼 count
    }
    
    //몇번째 있는 cell 은 어떠한 방식으로 표시를 해주면 되는지?
    //tableViewCell 을 리턴해주는 메서드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        
        //구체적인 cell의 형태를 구현
        
        //기존에 만들어놨던 셀을 꺼내서 쓸꺼라는 뜻. cell의 identifier 에 설정이 미리 되어있어야함.
        let cell = tableView.dequeueReusableCell(withIdentifier: "SandwichCell", for: indexPath) as! SandwichCell
        //'cell'은 movie cell에서 꺼내도 actually uitableviewcell 타입을 가지고 있기 때문에 타입 캐스팅을 해줘야함.
        
        let sandwich = sandwichDataManager.getSandwichData()[indexPath.row]
        
        cell.sandwichImageView.image = sandwich.sandwichImg //배열에 접근해서 이미지를 꺼내서 넣어줌. (같은 옵셔널 타입이라서 옵셔널 바인딩 따로 필요 x)
        cell.sandwichNameLabel.text = sandwich.sandwichName
        cell.sandwichEngNameLabel.text = sandwich.sandwichNameEng
        
        cell.selectionStyle = .gray
        
        
        return cell
    }
    
    //데이터 전달할때 'prepare segue' 사용 !! == 공식 !

}

//touch 가 일어나면 대리자에게 전달해서 데이터 전달해줌.
extension SandwichVC: UITableViewDelegate {
    //indexPath에서 몇번째 cell이 touched 됬는지 전달받음.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: indexPath)
        //sender을 통해서 indexPath 를 밑으로 넘겨주면 아래의 sender에서 indexPath전달받을수 잇음.
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailVC = segue.destination as! CustonDetailVC
            
            let array = sandwichDataManager.getSandwichData()
            
            let indexPath = sender as! IndexPath
            detailVC.sandwichData = array[indexPath.row]
        }

}

    
            
        }
   
    
    

