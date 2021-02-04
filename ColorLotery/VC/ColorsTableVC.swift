//
//  ColorsTableVC.swift
//  ColorLotery
//
//  Created by Vasili Mandalac on 2/3/21.
//

import UIKit

class ColorsTableVC: UIViewController  {
    
    //Creating an empty array of colors
    var colors: [UIColor] = []
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    //Loads the random Colors
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    }
    
    //Func for adding 75 random Colors
    func addRandomColors() {
        for _ in 0..<75 {
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail , sender: color )
    }
}
