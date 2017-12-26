//
//  ViewController.swift
//  MotoGP Riders
//
//  Created by Dima Yarmolchuk on 12/24/17.
//  Copyright © 2017 Dima Yarmolchuk. All rights reserved.
//

import UIKit

private enum Constants {
    static let CellIdentifier = "Cell"
}

class MainViewController: UIViewController {
    
    @IBOutlet weak var horizontalScrollerView: HorizontalScrollerView!
    @IBOutlet var tableView: UITableView!
    
    private var currentRiderIndex = 0
    private var currentRiderData: [RiderData]?
    private var allRiders = [Rider]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        allRiders = RidersAPI.shared.getRiders()
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
        horizontalScrollerView.dataSource = self
        horizontalScrollerView.delegate = self
        horizontalScrollerView.reload()
        
        showDataForRider(at: currentRiderIndex)
    }
    
    private func showDataForRider(at index: Int) {
        
        if (index < allRiders.count && index > -1) {
            let rider = allRiders[index]
            currentRiderData = rider.tableRepresentation
        } else {
            currentRiderData = nil
        }
        tableView.reloadData()
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let riderData = currentRiderData else {
            return 0
        }
        return riderData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CellIdentifier, for: indexPath)
        if let riderData = currentRiderData {
            let row = indexPath.row
            cell.textLabel!.text = riderData[row].title
            cell.detailTextLabel!.text = riderData[row].value
        }
        return cell
    }
}

extension MainViewController: HorizontalScrollerViewDelegate {
    func horizontalScrollerView(_ horizontalScrollerView: HorizontalScrollerView, didSelectViewAt index: Int) {
        let previousRiderView = horizontalScrollerView.view(at: currentRiderIndex) as! RiderView
        previousRiderView.highlightRider(false)
        currentRiderIndex = index
    
        let riderView = horizontalScrollerView.view(at: currentRiderIndex) as! RiderView
        riderView.highlightRider(true)
        showDataForRider(at: index)
    }
}

extension MainViewController: HorizontalScrollerViewDataSource {
    func numberOfViews(in horizontalScrollerView: HorizontalScrollerView) -> Int {
        return allRiders.count
    }
    
    func horizontalScrollerView(_ horizontalScrollerView: HorizontalScrollerView, viewAt index: Int) -> UIView {
        let rider = allRiders[index]
        let riderView = RiderView(frame: CGRect(x: 0, y: 0, width: 210, height: 260), photoUrl: rider.photoUrl)
        if currentRiderIndex == index {
            riderView.highlightRider(true)
        } else {
            riderView.highlightRider(false)
        }
        return riderView
    }
}
