struct CustomFightGenerator : FightGenerator {
    var attacker: Player
    var defender: Player

    func generateFight() -> Fight {
        return CustomFight(attacker: attacker.hero, host: defender.hero, winner: nil)
    }
}

// protocol Fight {
//     var attacker: Hero {get set}
//     var host: Hero {get set}
    
//     func start(finish:(Fight) -> ())
//     var winner: Hero {get set}
// }

struct CustomFight: Fight {
    var attacker: Hero
    var host: Hero 
    var winner: Hero?
    
    func start(finish:(Fight) -> ()) {
        print("hello")
    }
}