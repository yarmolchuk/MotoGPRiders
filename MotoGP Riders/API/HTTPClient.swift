//
//  HTTPClient.swift
//  MotoGP Riders
//
//  Created by Dima Yarmolchuk on 12/25/17.
//  Copyright © 2017 Dima Yarmolchuk. All rights reserved.
//

import UIKit

class HTTPClient {
    
    @discardableResult func getRequest(_ url: String) -> AnyObject {
        return Data() as AnyObject
    }

    @discardableResult func postRequest(_ url: String, body: String) -> AnyObject {
        return Data() as AnyObject
    }

    func downloadImage(_ url: String) -> UIImage? {
        let aUrl = URL(string: url)
        guard let data = try? Data(contentsOf: aUrl!),
            let image = UIImage(data: data) else {
                return nil
        }
        return image
    }
}
