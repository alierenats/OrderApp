//
//  ViewController.swift
//  OrderApp
//
//  Created by Eren Ates on 25.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodTableView: UITableView!
    
    var foodsList = [Foods]()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodTableView.dataSource = self
        foodTableView.delegate = self
        
        //Objects
        
        let y1 = Foods(foodId: 1, foodName: "Ayran", foodImageName: "ayran", foodPrice: 1.5)
        let y2 = Foods(foodId: 2, foodName: "Fanta", foodImageName: "fanta", foodPrice: 2.0)
        let y3 = Foods(foodId: 3, foodName: "Baklava", foodImageName: "baklava", foodPrice: 5.0)
        let y4 = Foods(foodId: 4, foodName: "Izgara Et", foodImageName: "izgarasomon", foodPrice: 15.0)
        let y5 = Foods(foodId: 5, foodName: "Izgara Tavuk", foodImageName: "izgaratavuk", foodPrice: 80.0)
        let y6 = Foods(foodId: 6, foodName: "Kadayıf", foodImageName: "kadayif", foodPrice: 6.0)
        let y7 = Foods(foodId: 7, foodName: "Kahve", foodImageName: "kahve", foodPrice: 3.0)
        let y8 = Foods(foodId: 8, foodName: "Köfte", foodImageName: "kofte", foodPrice: 12.0)
        let y9 = Foods(foodId: 9, foodName: "Lazanya", foodImageName: "lazanya", foodPrice: 11.0)
        let y10 = Foods(foodId: 10, foodName: "Makarna", foodImageName: "makarna", foodPrice: 8.0)
        let y11 = Foods(foodId: 11, foodName: "Pizza", foodImageName: "pizza", foodPrice: 14.0)
        let y12 = Foods(foodId: 12, foodName: "Su", foodImageName: "su", foodPrice: 0.5)
        let y13 = Foods(foodId: 13, foodName: "Sütlaç", foodImageName: "sutlac", foodPrice: 4.0)
        let y14 = Foods(foodId: 14, foodName: "Tiramisu", foodImageName: "tiramisu", foodPrice: 6.5)


        foodsList.append(y1)
        foodsList.append(y2)
        foodsList.append(y3)
        foodsList.append(y4)
        foodsList.append(y5)
        foodsList.append(y6)
        foodsList.append(y7)
        foodsList.append(y8)
        foodsList.append(y9)
        foodsList.append(y10)
        foodsList.append(y11)
        foodsList.append(y12)
        foodsList.append(y13)
        foodsList.append(y14)

    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource,FoodTableViewCellProtocol{
    func toOrder(indexPath: IndexPath) {
        let incomingFood = foodsList[indexPath.row]
        print("\(incomingFood.foodName!) sipariş verildi. Kazanç : \(incomingFood.foodPrice!)")
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let incomingFood = foodsList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)  as!  FoodTableViewCell
        
        cell.labelFoodName.text = incomingFood.foodName
        cell.labelFoodPrice.text = "\(incomingFood.foodPrice!) TL"
        cell.foodImageView.image = UIImage(named: incomingFood.foodImageName!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
        
        
    }
    
}

