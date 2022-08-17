//
//  PageViewController.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/15.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    var completeHandler : ((Int)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self

        if let favVC = viewsList.first {
                    self.setViewControllers([favVC], direction: .forward, animated: true, completion: nil)
                }
    }
    
    let viewsList : [UIViewController] = {
           
           let storyBoard = UIStoryboard(name: "Main", bundle: nil)
          
           let vc1 = storyBoard.instantiateViewController(withIdentifier: "FavoritesVC")
           let vc2 = storyBoard.instantiateViewController(withIdentifier: "PromotionVC")
           let vc3 = storyBoard.instantiateViewController(withIdentifier: "SandwichVC")
            let vc4 = storyBoard.instantiateViewController(withIdentifier: "SaladVC")
            let vc5 = storyBoard.instantiateViewController(withIdentifier: "WrapsVC")
            let vc6 = storyBoard.instantiateViewController(withIdentifier: "SidesVC")
           return [vc1, vc2, vc3, vc4, vc5, vc6]
           
       }()
    
    
    

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = viewsList.firstIndex(of: viewController) else {return nil}
        
        let previousIndex = index - 1
        
        if previousIndex < 0 { return nil}
        
        return viewsList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = viewsList.firstIndex(of: viewController) else {return nil}
              
        let nextIndex = index + 1
              
        if nextIndex == viewsList.count { return nil}
              
        return viewsList[nextIndex]
              
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
           if completed {
               
               completeHandler?(currentIndex)
           }
       }
    var currentIndex : Int {
        guard let vc = viewControllers?.first else { return 0 }
        return viewsList.firstIndex(of: vc) ?? 0
    }
    
    func setViewcontrollersFromIndex(index : Int){
          if index < 0 && index >= viewsList.count {return }
        self.setViewControllers([viewsList[index]], direction: .forward, animated: true, completion: nil)
        completeHandler?(currentIndex)
    }
    
    

}
