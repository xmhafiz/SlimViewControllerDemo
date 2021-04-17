//
//  ViewController.swift
//  NewsSampleApps
//
//  Created by Hafiz on 17/04/2021.
//

import UIKit

class ViewController: UIViewController {

    lazy var headerView = HeaderView()
    lazy var summaryView = StatsView()
    lazy var postView = PostView()
    
    lazy var scrollView = UIScrollView()
    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.addArrangedSubview(headerView)
        stackView.addArrangedSubview(postView)
        stackView.addArrangedSubview(summaryView)
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // mock fetching data and populate into views
        setupData()
    }
    
    func setupView() {
        scrollView.pinToEdges(inView: view)
        mainStackView.pinToEdges(inView: scrollView)
        mainStackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    }
    
    func setupData() {
        let profile = DemoProfileStore()
        // update header
        headerView.update(profile: profile)
        // update text
        postView.updatePost(title: profile.postTitle, description: profile.postDescription)
        // update summary
        summaryView.updateContent(profile: profile)
        
    }
}

