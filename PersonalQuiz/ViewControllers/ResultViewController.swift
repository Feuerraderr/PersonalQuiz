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
    private var result: Animal? {
        getResult(from: answers)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        resultLabel.text = "Вы - \(result?.rawValue ?? " ")"
        descriptionLabel.text = "\(result?.definition ?? "")"
    }
    
    
    @IBAction func doneButtonAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
    
}

extension ResultViewController {
    private func getResult(from answers: [Animal]) -> Animal? {
        let dogs = answers.filter { $0 == Animal.dog }
        let cats = answers.filter { $0 == Animal.cat }
        let rabbits = answers.filter { $0 == Animal.rabbit }
        let turtles = answers.filter { $0 == Animal.turtle }
        
        let animals = [dogs, cats, rabbits, turtles]
        let results = animals.sorted { $0.count > $1.count }.flatMap { $0 }
        
        return results.first
    }
}
