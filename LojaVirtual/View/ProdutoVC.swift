//
//  ProdutoVC.swift
//  LojaVirtual
//
//  Created by Rafael Jose on 02/10/20.
//

import UIKit

class ProdutoVC: UIViewController {
    
    @IBOutlet weak var produtosTableView: UITableView!
        
    var categorias: [String] = ["Eletrônicos", "Lazer", "Eletrodomésticos"]
    
    var produtos: [Produto] = [
        Produto(nome: "MackBook", preco: "R$ 14.000,00"),
        Produto(nome: "IPhone", preco: "R$ 5.000,00"),
        Produto(nome: "PS4", preco: "R$ 2.500,00"),
//        Produto(nome: "Bola de Futebol", preco: "R$ 70,00"),
//        Produto(nome: "Bola de Basquete", preco: "R$ 60,00"),
//        Produto(nome: "Geladeira", preco: "R$ 2.000,00")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        produtosTableView.dataSource = self
    }
}

// MARK: - Table view data source

extension ProdutoVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
       
        return categorias.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var qtdLinha = 0
        
        if section == 0 {
            qtdLinha = 3
        } else if section == 1 {
            qtdLinha = 2
        } else if section == 2 {
            qtdLinha = 1
        }
        
        return qtdLinha
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = produtosTableView.dequeueReusableCell(withIdentifier: "ProdutoCell", for: indexPath
        )
        
        cell.textLabel?.text = produtos[indexPath.row].nome
        cell.detailTextLabel?.text = produtos[indexPath.row].preco
        print(indexPath.row)
        return cell
    }
}
