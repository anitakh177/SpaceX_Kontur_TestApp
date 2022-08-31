//
//  MainViewController.swift
//  SpaceX
//
//  Created by anita on 25.08.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Views
    private let tableView = UITableView()
   
    private var horizontalCollectionView = HorizontalCollectionView()
    private var mainTableView = MainTableView()

    
    // MARK: - Properties
    
    private var dataFetcherService = DataFetcherService()


    override func viewDidLoad() {
        super.viewDidLoad()
       
      configureTableView()
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }



}

private extension MainViewController {
    
    func configureTableView() {
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self
       
        tableView.register(ImageTableViewCell.self, forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView.register(TitleAndSettingsTableViewCell.self, forCellReuseIdentifier: TitleAndSettingsTableViewCell.identifier)
        tableView.register(CollectionTableViewCell.self, forCellReuseIdentifier: CollectionTableViewCell.identifier)
        tableView.register(ParametersTableViewCell.self, forCellReuseIdentifier: ParametersTableViewCell.identifier)
        
        tableView.separatorStyle = .none
        tableView.contentInsetAdjustmentBehavior = .never

    }

    
}

extension MainViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
            case 0:
                let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath)
                return cell
            
            case 1:
                let cell = tableView.dequeueReusableCell(withIdentifier: TitleAndSettingsTableViewCell.identifier, for: indexPath)
                return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath)
                return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: ParametersTableViewCell.identifier, for: indexPath)
            return cell
            
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
        switch indexPath.row {
        case 0:
            return 270
        case 1:
            return 40
        case 2:
            return 120
        default:
            return 40
        }
    }
    
    
}
