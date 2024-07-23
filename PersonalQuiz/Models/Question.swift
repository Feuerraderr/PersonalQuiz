//
//  Question.swift
//  PersonalQuiz
//
//  Created by Владислав Резван on 24.07.2024.
//

struct Question {
    let title: String
    let answers: [Answer]
    let answerCategory: AnswerCategory
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                answers: [
                    Answer(tittle: "Стейк", animal: .dog),
                    Answer(tittle: "Рыба", animal: .cat),
                    Answer(tittle: "Морковь", animal: .rabbit),
                    Answer(tittle: "Кукуруза", animal: .turtle)
                ],
                answerCategory: .single
            ),
            Question(
                title: "Кто вам нравится больше?",
                answers: [
                    Answer(tittle: "Палавать", animal: .dog),
                    Answer(tittle: "Спать", animal: .cat),
                    Answer(tittle: "Обниматься", animal: .rabbit),
                    Answer(tittle: "Есть", animal: .turtle)
                ],
                answerCategory: .multiple
            ),
            Question(
                title: "Любите ли вы ездить на машине?",
                answers: [
                    Answer(tittle: "Ненавижу", animal: .cat),
                    Answer(tittle: "Нервничаю", animal: .rabbit),
                    Answer(tittle: "Не замечаю", animal: .turtle),
                    Answer(tittle: "Обожаю", animal: .dog)
                ],
                answerCategory: .ranged
            )
        ]
    }
}

struct Answer {
    let tittle: String
    let animal: Animal
}

enum AnswerCategory {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case turtle = "🐢"
    case rabbit = "🐰"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .turtle:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .rabbit:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
