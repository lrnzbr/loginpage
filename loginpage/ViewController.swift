//
//  ViewController.swift
//  loginpage
//
//  Created by Lorenzo Brown on 2/15/18.
//  Copyright © 2018 lrnzbr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        setupClouds()
        setupLogo()
        setupWelcomeMessage()
        setupFBButton()
        setupEmailButton()
        setupDividerBar()
        setupTermsOfService()
        setupReceiveDonations()
        
    
    }

    func setupBackground(){
       
        let gradientLayer0 = CAGradientLayer()
        gradientLayer0.frame = view.bounds
        gradientLayer0.colors = [UIColor(red: 0.02, green: 0.36, blue: 0.99, alpha: 1).cgColor, UIColor(red: 0.03, green: 0.64, blue: 1.00, alpha: 1).cgColor]
        gradientLayer0.locations = [1, 0]
        self.view.layer.addSublayer(gradientLayer0)
        self.view.alpha = 1
        
    }
    
    func setupLogo(){
        let imageView = UIImageView()
        imageView.image = UIImage(named:"logo-full")
        self.view.addSubview(imageView)
        self.view.addConstraintsWithFormat(format: "V:|-64-[v0(48)]", views: imageView)
        self.view.addConstraintsWithFormat(format: "H:[v0(156)]", views: imageView)
        imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }
    
    func setupWelcomeMessage(){
        let message = UILabel()
        message.text = "Get started with your personal  giving account".uppercased()
        message.font = UIFont(name: "Poppins-Bold", size: 14)
        message.textColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1)
        message.numberOfLines = 2
        message.textAlignment = .center
        self.view.addSubview(message)
        
        view.addConstraintsWithFormat(format: "V:|-176-[v0(48)]", views: message)
        view.addConstraintsWithFormat(format: "H:[v0(343)]", views: message)
        
        message.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }
    
    func setupFBButton(){
        let fbButton = UIButton()
        
        let shadow0 = UIView(frame: CGRect(x: 0, y: 0, width: 343, height: 56))
        shadow0.clipsToBounds = false
        shadow0.layer.shadowColor = UIColor(red: 0.00, green: 0.13, blue: 0.50, alpha: 0.20).cgColor
        shadow0.layer.shadowOpacity = 0.2
        shadow0.layer.shadowOffset = CGSize(width: 0, height: 8)
        fbButton.addSubview(shadow0)
        fbButton.layer.cornerRadius = 28
        fbButton.backgroundColor = UIColor(red: 1.00, green: 1.00, blue: 1.00, alpha: 1)
        fbButton.alpha = 1
        self.view.addSubview(fbButton)
        
        self.view.addConstraintsWithFormat(format: "V:|-248-[v0(56)]", views: fbButton)
        self.view.addConstraintsWithFormat(format: "H:[v0(343)]", views: fbButton)
        fbButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        let textLabel = UILabel()
        textLabel.text = "Continue with Facebook"
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.font = UIFont(name: "Poppins-Medium", size: 15)
        textLabel.textColor = UIColor(red: 0.23, green: 0.35, blue: 0.60, alpha: 1)
        fbButton.addSubview(textLabel)
        textLabel.centerYAnchor.constraint(equalTo: fbButton.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: fbButton.centerXAnchor).isActive = true
        
        let fbIcon = UIImageView(image: UIImage(named:"icon-fb-"))
        fbButton.addSubview(fbIcon)
        fbButton.addConstraintsWithFormat(format: "H:[v0(24)]-8-[v1]", views: fbIcon, textLabel)
        fbIcon.centerYAnchor.constraint(equalTo: fbButton.centerYAnchor).isActive = true 
    }
    
    func setupEmailButton() {
        let emailButton = UIButton()
        emailButton.layer.cornerRadius = 28
        emailButton.layer.borderWidth = 1.5
        emailButton.layer.borderColor = UIColor.white.cgColor
        self.view.addSubview(emailButton)
        
        self.view.addConstraintsWithFormat(format: "V:|-328-[v0(56)]", views: emailButton)
        self.view.addConstraintsWithFormat(format: "H:[v0(343)]", views: emailButton)
        emailButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        let textLabel = UILabel()
        textLabel.text = "Login with email"
        textLabel.font = UIFont(name: "Poppins-Medium", size: 15)
        textLabel.textColor = UIColor.white
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        emailButton.addSubview(textLabel)
        textLabel.centerYAnchor.constraint(equalTo: emailButton.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: emailButton.centerXAnchor).isActive = true
    }
    
    func setupDividerBar() {
        let dividerBar = UIView()
        dividerBar.backgroundColor = UIColor.white
        self.view.addSubview(dividerBar)
        self.view.addConstraintsWithFormat(format: "H:[v0(32)]", views: dividerBar)
        self.view.addConstraintsWithFormat(format: "V:|-415-[v0(1)]", views: dividerBar)
        
        dividerBar.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
    }
    
    func setupTermsOfService() {
        let termsOfService = UILabel()
        termsOfService.text = "By creating a personal giving account, you agree to Givelify's Terms of Service"
        termsOfService.textColor = UIColor.white
        termsOfService.font = UIFont(name: "Poppins-Regular", size: 12)
        termsOfService.numberOfLines = 2
        termsOfService.textAlignment = .center
        self.view.addSubview(termsOfService)
        termsOfService.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.view.addConstraintsWithFormat(format: "V:|-440-[v0(38)]", views: termsOfService)
        self.view.addConstraintsWithFormat(format: "H:[v0(293)]", views: termsOfService)
    
    }
    
    func setupReceiveDonations() {
        let receiveDonations = UILabel()
        receiveDonations.text = "Ready to start receiving Donations? "
        receiveDonations.textColor = UIColor.white
        receiveDonations.font = UIFont(name: "Poppins-Regular", size: 14)
        self.view.addSubview(receiveDonations)
        receiveDonations.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.view.addConstraintsWithFormat(format: "V:[v0(24)]-40-|", views: receiveDonations)
        self.view.addConstraintsWithFormat(format: "H:[v0(250)]", views: receiveDonations)
        
        let icon = UIImageView(image: UIImage(named:"icons-16-o-"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(icon)
        icon.centerYAnchor.constraint(equalTo: receiveDonations.centerYAnchor).isActive = true
        self.view.addConstraintsWithFormat(format: "H:[v0]-16-|", views: icon)
        
    }
    
    func setupClouds() {
        let cloud1 = UIImageView(image:UIImage(named:"combined-shape-copy-2"))
        let cloud2 = UIImageView(image:UIImage(named:"combined-shape"))
        let cloud3 = UIImageView(image:UIImage(named:"combined-shape-copy"))
        let cloud4 = UIImageView(image:UIImage(named:"combined-shape-copy-4"))

        self.view.addSubview(cloud1)
        self.view.addSubview(cloud2)
        self.view.addSubview(cloud3)
        self.view.addSubview(cloud4)
        
        
        self.view.addConstraintsWithFormat(format: "V:[v0(120)]-33-|", views: cloud1)
        self.view.addConstraintsWithFormat(format: "H:|[v0(49)]", views: cloud1)
        
        self.view.addConstraintsWithFormat(format: "V:[v0(119)]-44-|", views: cloud2)
        self.view.addConstraintsWithFormat(format: "H:|[v0(187)]", views: cloud2)
        
        self.view.addConstraintsWithFormat(format: "V:[v0(119)]-32-|", views: cloud3)
        self.view.addConstraintsWithFormat(format: "H:[v0(176)]|", views: cloud3)
        
        self.view.addConstraintsWithFormat(format: "V:[v0(126)]|", views: cloud4)
        self.view.addConstraintsWithFormat(format: "H:[v0(102)]|", views: cloud4)
    }

}

extension UIView {
    func addConstraintsWithFormat(format:String, views:UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
        
    }
}
