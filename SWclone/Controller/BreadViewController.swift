//
//  BreadViewController.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/17.
//

import UIKit

class BreadViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var collectionViewCell : CollectionViewCell?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var backButton: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if backButton.isSelected ==  true {
            return backView()
        }
    }
    
    let viewModel = CollectionViewCell.ImageViewModel() // 뷰모델 변수를 추가
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.countOfImageList // 뷰모델에서 카운트 가져옴
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as?
                CollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let imageInfo = viewModel.imageInfo(at: indexPath.item) // indexPath.item을 기준으로 뷰모델에서 ImageInfo 가져옴
        cell.update(info: imageInfo) // 해당 셀을 업데이트
        return cell
    }
    // 셀이 선택되었을 때
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }

    
//    @IBAction func cancleButtonTapped(_ sender: UIButton) {
//
//        let previousVC = self.storyboard?.instantiateViewController(withIdentifier: "CustonDetailVC") as! CustonDetailVC
//
//        present(previousVC, animated: true, completion: nil)
//    }
    
    @objc func backView(){
        dismiss(animated: false, completion: nil)
        
    }
    
    

}


