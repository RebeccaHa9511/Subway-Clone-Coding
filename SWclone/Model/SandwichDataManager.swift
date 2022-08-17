//
//  SandwichDataManager.swift
//  SWclone
//
//  Created by Rebecca Ha on 2022/06/16.
//

import UIKit


class SandwichDataManager {
    //일반적인 데이터 매니저는 빈배열로 시작하고 서버에서 통신한 결과를 빈 배열에 받음.
    var sandwichDataArray: [Sandwiches] = []
    
    func makeSandwichData() {
        
        sandwichDataArray = [
            Sandwiches.init(sandwichImg: UIImage(named: "베지아보카도"), sandwichName: "베지 아보카도", sandwichNameEng: "VEGGIE DELITE AVOCADO", sandwichDetails: "신선한 야채에 부드러운 아보카도를 더해 즐기는 깔끔한 한 끼 !"),
            
            Sandwiches.init(sandwichImg: UIImage(named: "로스트치킨아보카도"), sandwichName: "로스트 치킨 아보카도", sandwichNameEng: "ROASTED CHICKEN AVOCADO",sandwichDetails: "담백한 닭가슴살 위 아보카도 한스쿱! 입안가득 부드러운 신선함 !"),
            
            Sandwiches.init(sandwichImg: UIImage(named: "터키베이컨아보카도"), sandwichName: "터키 베이컨 아보카도", sandwichNameEng: "TURKEY BACON AVOCADO",sandwichDetails: "담백한 터키와 바삭한 베이컨 환상조합에 부드러운 아보카도는 신의 한수"),
            
            Sandwiches.init(sandwichImg: UIImage(named: "로티세리 바비큐 치킨"), sandwichName: "로티세리 바비큐 치킨", sandwichNameEng: "ROTISSERIE BARBECUE CHICKEN",sandwichDetails: "촉촉한 바비큐 치킨의 풍미가득. 손으로 찢어 더욱 부드러운 치킨의 혁명"),
            
            Sandwiches.init(sandwichImg: UIImage(named: "스테이크 치즈"), sandwichName: "스테이크 & 치즈", sandwichNameEng: "STEAK & CHEESE",sandwichDetails: "육즙이 쫙~ 풍부한 비프 스테이크의 풍미가 입안 한 가득"),
            
            Sandwiches.init(sandwichImg: UIImage(named: "k바비큐"), sandwichName: "K - 바비큐", sandwichNameEng: "K-BBQ",sandwichDetails: "써브웨이 최초의 코리안 스타일 샌드위치! 마늘, 간장 그리고 은은한 불맛까지!"),
            
            Sandwiches.init(sandwichImg: UIImage(named: "풀드포크"), sandwichName: "풀드 포크 바비큐", sandwichNameEng: "PULLED PORK BARBECUE",sandwichDetails: "미국 스타일의 풀드 포크 바비큐가 가득 들어간 샌드위치")
        
        ]
    }
    
    func getSandwichData() -> [Sandwiches] {
        return sandwichDataArray
    }
    
    
}

