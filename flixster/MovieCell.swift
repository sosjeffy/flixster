//
//  MovieCell.swift
//  flixster
//
//  Created by Jeffy Touth on 4/5/21.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var movieBackgroundView: UIImageView!
    var blurEffectView: UIView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func blur() {
            if self.blurEffectView == nil {
                let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialDark)
                let visualEffectView = UIVisualEffectView(effect: blurEffect)
                    
                visualEffectView.frame = self.movieBackgroundView.bounds

                self.movieBackgroundView.addSubview(visualEffectView)

                self.blurEffectView = visualEffectView
            }
             
        }
}
