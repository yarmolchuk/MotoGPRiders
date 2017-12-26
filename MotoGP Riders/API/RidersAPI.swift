//
//  LibraryAPI.swift
//  MotoGP Riders
//
//  Created by Dima Yarmolchuk on 12/25/17.
//  Copyright © 2017 Dima Yarmolchuk. All rights reserved.
//

import Foundation
import UIKit

final class RidersAPI {
    
    static let shared = RidersAPI()
    
    private let persistencyManager = PersistenceManager()
    private let httpClient = HTTPClient()
    private let isOnline = false
    
    private init() {
        NotificationCenter.default.addObserver(self, selector: #selector(downloadImage(with:)), name: .MRDownloadImage, object: nil)
    }
    
    func getRiders() -> [Rider] {
        return persistencyManager.getRiders()
    }
    
    func addRider(_ rider: Rider, at index: Int) {
        persistencyManager.addRider(rider, at: index)
        if isOnline {
            httpClient.postRequest("/api/addRider", body: rider.description)
        }
    }
    
    func deleteRider(at index: Int) {
        persistencyManager.deleteRider(at: index)
        if isOnline {
            httpClient.postRequest("/api/deleteRider", body: "\(index)")
        }
    }
    
    @objc func downloadImage(with notification: Notification) {
        guard let userInfo = notification.userInfo,
            let imageView = userInfo["imageView"] as? UIImageView,
            let photoUrl = userInfo["photoUrl"] as? String,
            let filename = URL(string: photoUrl)?.lastPathComponent else {
                return
        }
        
        if let savedImage = persistencyManager.getImage(with: filename) {
            imageView.image = savedImage
            return
        }
        
        DispatchQueue.global().async {
            let downloadedImage = self.httpClient.downloadImage(photoUrl) ?? UIImage()
            DispatchQueue.main.async {
                imageView.image = downloadedImage
                self.persistencyManager.saveImage(downloadedImage, filename: filename)
            }
        }
    }
}
