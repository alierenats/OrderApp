//
//  Foods.swift
//  OrderApp
//
//  Created by Eren Ates on 25.07.2023.
//

import Foundation

class Foods {
    
    var foodId:Int?
    var foodName:String?
    var foodImageName:String?
    var foodPrice:Double?
    
    init(){
        
    }
    
    init(foodId:Int,foodName:String,foodImageName:String,foodPrice:Double) {
        self.foodId = foodId
        self.foodName = foodName
        self.foodImageName = foodImageName
        self.foodPrice = foodPrice
    }
    
    
}
