//
//  ViewController.swift
//  MyStory
//
//  Created by Cadence Chan on 1/30/23.
//

import UIKit

class ViewController: UIViewController {

    let twice = info(image: UIImage(named: "twice_debut")!, info: "Twice is a K-pop girl group under JYP Entertainment. They have 9 members: Jihyo, Nayeon, Jeonyeon, Momo, Sana, Mina, Dahyun, Chaeyoung, and Tzuyu. The girls on debuted October 20, 2015.")
    let popular = info(image: UIImage(named: "twice_fancy")!, info: "Twice has published many different songs. Some of the most popular songs include FANCY, The Feels, and I CAN'T STOP ME.")
    let recent = info(image: UIImage(named: "twice_talk_that_talk")!, info: "Twice has had many comebacks. Their most recent album, Between 1&2, was their 11th mini album, with the title track Talk that Talk.")
    
    var infos: [info] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infos = [twice, popular, recent]
        
    }
    
    var buttonNum = 0

    @IBAction func firstButton(_ sender: UIButton) {
        buttonNum = 1
        performSegue(withIdentifier: "detailSegue", sender: sender)
        print("Who is Twice? was pressed")
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
        buttonNum = 2
        performSegue(withIdentifier: "detailSegue", sender: sender)
        print("Popular Songs was pressed")
    }
    
    
    @IBAction func thirdButton(_ sender: UIButton) {
        buttonNum = 3
        performSegue(withIdentifier: "detailSegue", sender: sender)
        print("Recent Songs was pressed")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue", let detailViewController = segue.destination as? DetailViewController {

            if buttonNum == 1 {
                detailViewController.info = infos[0]
            } else if buttonNum == 2 {
                detailViewController.info = infos[1]
            } else if buttonNum == 3 {
                detailViewController.info = infos[2]
            } else {
                print("no button was chosen")
            }
        }
    }

}

