//
//  StatsView.swift
//  NewsSampleApps
//
//  Created by Hafiz on 17/04/2021.
//

import UIKit

class StatsView: UIView {
    @IBOutlet weak var viewContainerView: UIView!
    @IBOutlet weak var readContainerView: UIView!
    @IBOutlet weak var totalViewValueLabel: UILabel!
    @IBOutlet weak var totalReadValueLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        let xibFileName = "StatsView" // xib extension not included
        let view = Bundle.main.loadNibNamed(xibFileName, owner: self, options: nil)![0] as! UIView
        self.addSubview(view)
        view.frame = self.bounds
        setupView()
    }
    
    func setupView() {
        viewContainerView.clipsToBounds = true
        viewContainerView.layer.cornerRadius = 10
        readContainerView.clipsToBounds = true
        readContainerView.layer.cornerRadius = 10
    }
    
    func updateContent(profile: DemoProfile) {
        totalViewValueLabel.text = profile.totalViews
        totalReadValueLabel.text = profile.totalReads
    }
}
