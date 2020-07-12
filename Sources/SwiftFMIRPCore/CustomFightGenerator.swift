class CustomFightGenerator : FightGenerator {
    // func generateFight(name: String) -> Player {
    //     var player = DefaultPlayer()
    //     player.name = name
    //     player.hero = heroGenerator.getRandom()
    //     return player
    // }
}

// protocol Fight {
//     var attacker: Hero {get set}
//     var host: Hero {get set}
    
//     func start(finish:(Fight) -> ())
//     var winner: Hero {get set}
// }


// struct DefaultPlayerGenerator: PlayerGenerator {
//     var heroGenerator: HeroGenerator
//     init(heroGenerator: HeroGenerator) {
//         self.heroGenerator = heroGenerator
//     }
    
//     func generatePlayer(name: String) -> Player {
//         var player = DefaultPlayer()
//         player.name = name
//         player.hero = heroGenerator.getRandom()
//         return player
//     }
// }

struct CustomFight: Fight {
    var attacker: Hero
    var host: Hero
    var winner: Hero


    
    func start(finish:(Fight) -> ()) {
        print("hello")
    }
}