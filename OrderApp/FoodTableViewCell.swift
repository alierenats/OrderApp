//
//  FoodTableViewCell.swift
//  OrderApp
//
//  Created by Eren Ates on 25.07.2023.
//

import UIKit

protocol FoodTableViewCellProtocol {
    
    func toOrder(indexPath:IndexPath)
}

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var foodImageView: UIImageView!
    
    
    @IBOutlet weak var labelFoodName: UILabel!
    
    @IBOutlet weak var labelFoodPrice: UILabel!
    
    var cellProtocol:FoodTableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func toOrderButton(_ sender: Any) {
        
        cellProtocol?.toOrder(indexPath: indexPath!)
    }
    
    
}
