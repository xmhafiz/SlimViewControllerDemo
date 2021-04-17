//
//  ViewController.swift
//  NewsSampleApps
//
//  Created by Hafiz on 17/04/2021.
//

import UIKit

class ViewController: UIViewController {

    lazy var headerView = HeaderView()
    lazy var summaryView = SummaryView()
    lazy var recentStoryView = RecentArticleView()
    
    lazy var scrollView = UIScrollView()
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.addArrangedSubview(headerView)
        stackView.addArrangedSubview(recentStoryView)
        stackView.addArrangedSubview(summaryView)
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        scrollView.pinToEdges(inView: view)
        mainStackView.pinToEdges(inView: scrollView)
        mainStackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    }
}

