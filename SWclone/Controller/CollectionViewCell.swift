//
//  CollectionViewCell.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/17.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var breadImg: UIImageView!
    let breadImage = [#imageLiteral(resourceName: "화이트-1") , #imageLiteral(resourceName: "파마산오레가노"), #imageLiteral(resourceName: "위트"), #imageLiteral(resourceName: "허니오트"), #imageLiteral(resourceName: "하티"), #imageLiteral(resourceName: "플랫브레드")]
    
    func update(info: ImageInfo) {
        breadImg.image = info.image
        
    }
    
    struct ImageInfo {
        let name: String
        
        var image: UIImage? {
            return UIImage(named: "\(name)")
        }
        
        init (name: String) {
            self.name = name
        }
    }
    
    class ImageViewModel {
        let imageInfoList: [ImageInfo] = [
            ImageInfo(name: "화이트-1"),
            ImageInfo(name: "파마산오레가노"),
            ImageInfo(name: "위트"),
            ImageInfo(name: "허니오트"),
            ImageInfo(name: "하티"),
            ImageInfo(name: "플랫브레드")
        ]
        
        var countOfImageList: Int {
            return imageInfoList.count
        }
        
        func imageInfo(at index: Int) -> ImageInfo {
            return imageInfoList[index]
        }
    }
    
    
}
