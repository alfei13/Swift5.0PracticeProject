//
//  ComicCommentViewController.swift
//  SwiftPracticeProject
//
//  Created by Mac on 2019/8/23.
//  Copyright © 2019 caolaidong. All rights reserved.
//

import UIKit

class ComicCommentViewController: UComicBaseViewController {

    lazy var tb: UITableView = {
            let tb = UITableView(frame: CGRect.zero, style: .plain)
            tb.delegate = self
            tb.dataSource = self
            return tb
        }()
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
        override func configUI() {
            view.addSubview(tb)
            tb.snp.makeConstraints {
                $0.edges.equalToSuperview()
            }
        }

}

extension ComicCommentViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            100
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        cell.textLabel?.text = String(indexPath.row)
        return cell
        
    }
}
