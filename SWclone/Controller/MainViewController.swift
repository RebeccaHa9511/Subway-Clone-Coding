//
//  MainViewController.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/17.
//

import UIKit

class MainViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        addContentScrollView()
        setPageControl()
        addNavBarImage()

    }

    var mainImages = [#imageLiteral(resourceName: "mainimg1"), #imageLiteral(resourceName: "mainimg2"), #imageLiteral(resourceName: "손으로주문")]
    var mainImageViews = [UIImageView]()

    private func addContentScrollView() {
           for i in 0..<mainImages.count {
               let imageView = UIImageView()
               let xPos = self.view.frame.width * CGFloat(i)
               imageView.frame = CGRect(x: xPos, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
               imageView.image = mainImages[i]
               scrollView.addSubview(imageView)
               scrollView.contentSize.width = imageView.frame.width * CGFloat(i + 1)
           }
       }
    
    private func setPageControl() {
         pageControl.numberOfPages = mainImages.count
     }
    
    private func setPageControlSelectedPage(currentPage:Int) {
          pageControl.currentPage = currentPage
      }

    
    //스크롤 했을때
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
          let value = scrollView.contentOffset.x/scrollView.frame.size.width
          setPageControlSelectedPage(currentPage: Int(round(value)))
      }
    
    //네비게이션바에 이미지 추가하기 (서브웨이 로고)
    func addNavBarImage() {
            let navController = navigationController!
            let image = UIImage(named: "subway-1") //Your logo url here
            let imageView = UIImageView(image: image)
            let bannerWidth = navController.navigationBar.frame.size.width
            let bannerHeight = navController.navigationBar.frame.size.height
            let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
            let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
            imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
            imageView.contentMode = .scaleAspectFit
            navigationItem.titleView = imageView
        }
    
    
    
}
