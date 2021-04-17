//
//  HeaderView.swift
//  NewsSampleApps
//
//  Created by Hafiz on 17/04/2021.
//

import UIKit

class HeaderView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var editButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        let xibFileName = "HeaderView" // xib extension not included
        let view = Bundle.main.loadNibNamed(xibFileName, owner: self, options: nil)![0] as! UIView
        self.addSubview(view)
        view.frame = self.bounds
        setupView()
    }
    
    func setupView() {
        editButton.clipsToBounds = true
        editButton.layer.cornerRadius = editButton.frame.height/2
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
    }
    
    func update(profile: DemoProfile) {
        profileImageView.image = UIImage(named: profile.avatarImageName)
        titleLabel.text = profile.name
        subtitleLabel.text = profile.role
    }
}
