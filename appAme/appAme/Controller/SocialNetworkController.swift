//
//  SocialNetworn.swift
//  appAme
//
//  Created by Igor Lima Rocha Azevedo on 23/08/20.
//  Copyright © 2020 Igor Lima Rocha Azevedo. All rights reserved.
//

import UIKit

class SocialNetworkController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts: [ProductPost] = [
        ProductPost(name: "Tênis", description: "Fabrico tênis utilizando tecidos veganos. Uma produção totalmente familiar e natural S2", image: "shoes"),
        ProductPost(name: "Cadernos", description: "Crio cadernos estilizados com materiais robustos e de extrema qualidadde", image: "notebooks"),
        ProductPost(name: "Máscara", description: "Fabrico mascaras com um ótimo tecido e excelete segurança.", image: "mask"),
        ProductPost(name: "Imãs Caseiros", description: "Eu crio imãs caseiros com diversos temas de filmes, séries e animes.", image: "magnets")
    ]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
}

extension SocialNetworkController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! ProductPostCell
        cell.labelCell.text = posts[indexPath.row].name
        cell.descriptionCell.text = posts[indexPath.row].description
        cell.imageProduct.image = UIImage(named: posts[indexPath.row].image)
        return cell
    }
}

extension SocialNetworkController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
