//
//  ViewController.swift
//  Hello World
//
//  Created by Анастасия Козлова on 16.04.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var showGreetingButton: UIButton! // мы создали переменную кнопки, чтобы скруглить ее углы в интерфейсе
    @IBOutlet var greetingLabel: UILabel! // @IBOutlet - это ключевое слово говорит, что наша переменная связана с элементом интерфейса, к-ый используется в interface builder
    
    override func viewDidLoad() {  // мы унаследовали этот метод от класса UIViewController
        super.viewDidLoad() // super - это обращение к родительскому классу. Мы здесь обращаемся к родительскому классу и вызываем этот метод у родительского класса
        greetingLabel.isHidden.toggle() // метод toggle() переворачивает значение логического свойства на противоположное; у всех св-в по умолчанию знач isHidden = false, значит с помощью метода toggle() мы поменяли его на true
        // скругляем углы кнопки show greeting:
        showGreetingButton.layer.cornerRadius = 10
    }

    @IBAction func showGreetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        showGreetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        ) // .normal значит для любого состояния кнопки, т е мы не смотрим на состояние кнопки, нам всегда нужно отображать вот такой заголовок show greeting, независимо от того, есть фокус на кнопке или нет; greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting" - ТЕРНАРНЫЙ ОПЕРАТОР
    }
    
}

