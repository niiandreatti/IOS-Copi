

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    private lazy var setupNavigationBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var conteiner2: UIView = {
        let conteiner2 = UIView()
        conteiner2.translatesAutoresizingMaskIntoConstraints = false
        conteiner2.backgroundColor = .systemGray5
        return conteiner2
    }()
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named:"santander")
        return image
    }()
    
    private lazy var menu: UIButton = {
        let image = UIButton()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.setImage(UIImage(named:"menu"), for: .normal)
        image.addTarget(self, action: #selector(menutapped), for: .touchUpInside)
        return image
    }()
    
    private lazy var local: UIButton = {
        let image = UIButton()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.setImage(UIImage(named:"localizacao"), for: .normal)
        image.addTarget(self, action: #selector(localtapped), for: .touchUpInside)
        return image
    }()
    
    private lazy var image2: UIButton = {
        let image2 = UIButton()
        image2.translatesAutoresizingMaskIntoConstraints = false
        image2.setImage(UIImage(named:"Santander2"), for: .normal)
        image2.contentMode = .scaleToFill
        image2.adjustsImageWhenHighlighted = false
        return image2
    }()
    
    private lazy var conteiner: UIView = {
        let conteiner = UIView()
        conteiner.translatesAutoresizingMaskIntoConstraints = false
        conteiner.backgroundColor = .systemGray6
        conteiner.layer.cornerRadius = 25
        return conteiner
    }()
    
    private lazy var ajuda: UIImageView = {
        let help = UIImageView()
        help.image = UIImage(named: "Ajuda")
        help.translatesAutoresizingMaskIntoConstraints = false
        return help
    }()
    
    private lazy var helpers: UIButton = {
        let button1 = UIButton()
        button1.setTitle("Ajuda", for: .normal)
        button1.layer.cornerRadius = 8
        button1.setTitleColor(.black, for: .normal)
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        button1.backgroundColor = .white
        button1.titleEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button1
    }()
    
    private lazy var id: UIImageView = {
        let help = UIImageView()
        help.image = UIImage(named: "Id .Santander")
        help.translatesAutoresizingMaskIntoConstraints = false
        return help
    }()
    
    private lazy var idSantander: UIButton = {
        let button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.setTitle("ID Santander", for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button2.layer.cornerRadius = 8
        button2.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        button2.titleEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        button2.backgroundColor = .white
        button2.addTarget(self, action: #selector(button2Tapped), for: .touchUpInside)
        return button2
    }()
    
    private lazy var acess: UIImageView = {
        let help = UIImageView()
        help.image = UIImage(named: "Acessar")
        help.translatesAutoresizingMaskIntoConstraints = false
        return help
    }()
    
    private lazy var accessAccount: UIButton = {
        let button3 = UIButton()
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.setTitle("Acessar sua\n       conta", for: .normal)
        button3.setTitleColor(.white, for: .normal)
        button3.layer.cornerRadius = 8
        button3.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        button3.titleEdgeInsets = UIEdgeInsets(top: 35, left: 0, bottom: 0, right: 0)
        button3.backgroundColor = .red
        button3.titleLabel?.numberOfLines = 2
        button3.addTarget(self, action: #selector(button3Tapped), for: .touchUpInside)
        return button3
    }()
    
    private lazy var paybutton: UIButton = {
        let button4 = UIButton()
        button4.translatesAutoresizingMaskIntoConstraints = false
        button4.setImage(UIImage(named: "pagar"), for: .normal)
        button4.addTarget(self, action: #selector(paytapped), for: .touchUpInside)
        return button4
    }()
    
    private lazy var buttonsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [helpers, idSantander, accessAccount])
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    func configureUI(){
        view.addSubview(setupNavigationBar)
        view.addSubview(image)
        setupNavigationBar.addSubview(menu)
        setupNavigationBar.addSubview(local)
        conteiner2.addSubview(conteiner)
        view.addSubview(conteiner2)
        view.addSubview(image2)
        conteiner2.addSubview(buttonsStackView)
        helpers.addSubview(ajuda)
        idSantander.addSubview(id)
        accessAccount.addSubview(acess)
        conteiner.addSubview(paybutton)
        configureLayouts()
    }
    
    func configureLayouts(){
        let setupNavigationBar = [
            setupNavigationBar.widthAnchor.constraint(equalTo: view.widthAnchor),
            setupNavigationBar.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.096),
            setupNavigationBar.topAnchor.constraint(equalTo: view.topAnchor),
        ]
        
        
        let image = [
            image.widthAnchor.constraint(equalToConstant: 150),
            image.heightAnchor.constraint(equalToConstant: 50),
            image.centerXAnchor.constraint(equalTo: self.setupNavigationBar.centerXAnchor),
            image.bottomAnchor.constraint(equalTo: self.setupNavigationBar.bottomAnchor, constant: -5),
        ]
        
        let menu = [
            menu.widthAnchor.constraint(equalToConstant: 70),
            menu.heightAnchor.constraint(equalToConstant: 50),
            menu.leadingAnchor.constraint(equalTo: self.setupNavigationBar.leadingAnchor,constant: 10),
            menu.bottomAnchor.constraint(equalTo: self.setupNavigationBar.bottomAnchor, constant: 17),
        ]
        
        let local = [
            local.widthAnchor.constraint(equalToConstant: 70),
            local.heightAnchor.constraint(equalToConstant: 50),
            local.trailingAnchor.constraint(equalTo: self.setupNavigationBar.trailingAnchor),
            local.bottomAnchor.constraint(equalTo: self.setupNavigationBar.bottomAnchor, constant: 15),
        ]
        
        let conteiner = [
            conteiner.widthAnchor.constraint(equalTo: self.conteiner2.widthAnchor),
            conteiner.heightAnchor.constraint(equalTo: self.conteiner2.heightAnchor, multiplier: 0.3),
            conteiner.bottomAnchor.constraint(equalTo: self.conteiner2.bottomAnchor),
        ]
        
        let conteiner2 = [
            conteiner2.widthAnchor.constraint(equalTo: view.widthAnchor),
            conteiner2.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
            conteiner2.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ]
        
        let image2 = [
            image2.topAnchor.constraint(equalTo: self.setupNavigationBar.bottomAnchor),
            image2.bottomAnchor.constraint(equalTo: self.conteiner2.topAnchor),
            image2.leftAnchor.constraint(equalTo: view.leftAnchor),
            image2.rightAnchor.constraint(equalTo: view.rightAnchor),
        ]
        
        let buttonsStackView = [
            buttonsStackView.centerXAnchor.constraint(equalTo: self.conteiner2.centerXAnchor),
            buttonsStackView.centerYAnchor.constraint(equalTo: self.conteiner2.centerYAnchor,constant: -25),
            buttonsStackView.heightAnchor.constraint(equalToConstant: 100),
            buttonsStackView.widthAnchor.constraint(equalTo: self.conteiner2.widthAnchor, multiplier: 0.9)
        ]
        
        let ajuda = [
            ajuda.centerXAnchor.constraint(equalTo: self.helpers.centerXAnchor, constant: 10.5),
            ajuda.centerYAnchor.constraint(equalTo: self.helpers.topAnchor,constant: 15 ),
            ajuda.widthAnchor.constraint(equalToConstant: 70),
            ajuda.heightAnchor.constraint(equalToConstant: 70),
        ]
        
        let id = [
            id.centerXAnchor.constraint(equalTo: self.idSantander.centerXAnchor, constant: 3),
            id.centerYAnchor.constraint(equalTo: self.idSantander.topAnchor,constant: 8 ),
            id.widthAnchor.constraint(equalToConstant: 70),
            id.heightAnchor.constraint(equalToConstant: 70),
        ]
        
        let acess = [
            acess.centerXAnchor.constraint(equalTo: self.accessAccount.centerXAnchor,constant: 9),
            acess.centerYAnchor.constraint(equalTo: self.accessAccount.topAnchor,constant: 22 ),
            acess.widthAnchor.constraint(equalToConstant: 80),
            acess.heightAnchor.constraint(equalToConstant: 80),
        ]
        
        let paybutton = [
            paybutton.centerXAnchor.constraint(equalTo: self.conteiner.centerXAnchor),
            paybutton.centerYAnchor.constraint(equalTo: self.conteiner.centerYAnchor, constant: -9),
            paybutton.widthAnchor.constraint(equalToConstant: 160),
            paybutton.heightAnchor.constraint(equalToConstant: 50),
        ]
        
        
        NSLayoutConstraint.activate(setupNavigationBar + image + conteiner + image2 + conteiner2 + buttonsStackView + ajuda + id + acess + paybutton + menu + local)
    }
    
    @objc func localtapped(){
        print("local")
    }
    
    @objc func menutapped(){
        print("menu")
    }
    
    @objc func buttonTapped(){
        print("helpers")
    }
    
    @objc func button2Tapped(){
        print("idSantander")
    }
    
    @objc func button3Tapped(){
        print("accessAccount")
    }
    @objc func paytapped(){
        print("paytapped")
    }
    
    
}




