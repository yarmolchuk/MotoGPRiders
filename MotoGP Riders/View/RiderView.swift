//
//  RiderView.swift
//  MotoGP Riders
//
//  Created by Dima Yarmolchuk on 12/24/17.
//  Copyright © 2017 Dima Yarmolchuk. All rights reserved.
//

import UIKit

class RiderView: UIView {
    
    private var valueObservation: NSKeyValueObservation!

    private var riderImageView: UIImageView!
    private var indicatorView: UIActivityIndicatorView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    init(frame: CGRect, photoUrl: String) {
        super.init(frame: frame)
        commonInit()
        
        valueObservation = riderImageView.observe(\.image, options: [.new]) { [unowned self] observed, change in
            if change.newValue is UIImage {
                self.indicatorView.stopAnimating()
            }
        }
        
        NotificationCenter.default.post(name: .MRDownloadImage, object: self, userInfo: ["imageView": riderImageView, "photoUrl" : photoUrl])
    }
    
    private func commonInit() {
        // Setup the background
        backgroundColor = .black
        
        // Create the cover image view
        riderImageView = UIImageView()
        riderImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(riderImageView)
        
        // Create the indicator view
        indicatorView = UIActivityIndicatorView()
        indicatorView.translatesAutoresizingMaskIntoConstraints = false
        indicatorView.activityIndicatorViewStyle = .whiteLarge
        indicatorView.startAnimating()
        addSubview(indicatorView)
        
        NSLayoutConstraint.activate([
            riderImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            riderImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            riderImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            riderImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            indicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            indicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func highlightRider(_ didHighlightView: Bool) {
        if didHighlightView == true {
            backgroundColor = .white
        } else {
            backgroundColor = .black
        }
    }
}

