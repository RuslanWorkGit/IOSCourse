//
//  MonoPageViewController.swift
//  HM-6
//
//  Created by Ruslan Liulka on 18.10.2024.
//

import UIKit
import SnapKit

class MonoPageViewController: UIViewController {

    private var topView: UIView!
    private var topLabel: UILabel!
    private var currencyView: UIView!
    
    private var greenView: UIView!
    private var blackView: UIView!
    private var partBuy: MenuBlock!
    private var archive: MenuBlock!
    private var instalments: MenuBlock!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topView = UIView()
        topView.backgroundColor = .systemGray
        view.addSubview(topView)
        
        topLabel = UILabel()
        topLabel.text = "More"
        topLabel.textColor = .white
        topLabel.textAlignment = .center
        topLabel.font = .systemFont(ofSize: .init(24), weight: .semibold)
        topView.addSubview(topLabel)
                
        currencyView = CurrencyHeader()
        topView.addSubview(currencyView)
        
        setupHeaderViewConstraints()
        
        greenView = UIView()
        greenView.backgroundColor = .systemGreen
        view.addSubview(greenView)
        
        blackView = UIView()
        blackView.backgroundColor = .darkGray
        view.addSubview(blackView)
        
        partBuy = MenuBlock()
        partBuy.configure(with: "Part Buy", image: UIImage.downPayment, color: .green)
        view.addSubview(partBuy)
   
        archive = MenuBlock()
        archive.configure(with: "Archive", image: UIImage.paw, color: .purple)
        
        instalments = MenuBlock()
        instalments.configure(with: "Installments", image: UIImage.checkmark, color: .lightGray)
        
        let stackView = UIStackView(arrangedSubviews: [archive, instalments])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        view.addSubview(stackView)
        
        setupMainViewConstraints()
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(partBuy.snp.bottom).offset(16)
            make.left.equalTo(self.view.snp.left).offset(32)
            make.right.equalTo(self.view.snp.right).offset(-32)
            make.height.equalTo(200)
            
        }
    }
    
    func setupHeaderViewConstraints() {
        topView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.right.left.equalTo(view)
            make.height.equalTo(view.snp.height).multipliedBy(0.2)
        }
        
        topLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.left.equalTo(view.snp.left).offset(16)
            make.right.equalTo(view.snp.right).offset(-16)
        }
        
        currencyView.snp.makeConstraints { make in
            make.top.equalTo(topLabel.snp.bottom).offset(8)
            make.left.equalTo(view.snp.left).offset(16)
            make.right.equalTo(view.snp.right).offset(-16)
        }
        
    }
    
    func setupMainViewConstraints() {
        greenView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(16)
            make.left.equalTo(view.snp.left).offset(16)
            make.right.equalTo(view.snp.right).offset(-16)
            make.height.equalTo(view.snp.height).multipliedBy(0.25)
        }
        
        blackView.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.bottom)
            make.left.equalTo(view.snp.left).offset(16)
            make.right.equalTo(view.snp.right).offset(-16)
            make.bottom.equalTo(view.snp.bottom)
        }
        
        partBuy.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.top).offset(124)
            make.left.equalTo(view.snp.left).offset(32)
            make.right.equalTo(view.snp.right).offset(-32)
            make.height.equalTo(200)
        }
        
        
    }

}
