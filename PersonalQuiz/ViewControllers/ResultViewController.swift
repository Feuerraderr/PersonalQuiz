//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Владислав Резван on 23.07.2024.
//

import UIKit

final class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answers: [Animal]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        getResult()
    }
    
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
    
}

extension ResultViewController {
    private func getResult() {
        let dogs = answers.filter { $0 == Animal.dog }
        let cats = answers.filter { $0 == Animal.cat }
        let rabbits = answers.filter { $0 == Animal.rabbit }
        let turtles = answers.filter { $0 == Animal.turtle }
        
        let animals = [dogs, cats, rabbits, turtles]
        let results = animals.sorted { $0.count > $1.count }
        guard let result = results.first?.first else { return }
        
        updateUI(with: result)
        
    }
    
    private func updateUI(with animal: Animal) {
        resultLabel.text = "Вы - \(animal.rawValue)!"
        descriptionLabel.text = "\(animal.definition)"
    }
}
