protocol Player {
    var name: String {get set}
    var hero: Hero {get set}
    var isAlive: Bool {get set}
}

protocol PlayerGenerator {
    init(heroGenerator: HeroGenerator)
    func generatePlayer(name: String) -> Player
}

extension Player {
     mutating func reduceEnergy() {
        hero.energy -= 1
    }
}

class DefaultPlayer: Player {
    var name: String = "Default Player"
    var hero: Hero = Viking()
    var isAlive: Bool  = true
}

struct DefaultPlayerGenerator: PlayerGenerator {
    var heroGenerator: HeroGenerator

    init(heroGenerator: HeroGenerator) {
        self.heroGenerator = heroGenerator
    }
    
    func generatePlayer(name: String) -> Player {
        var player = DefaultPlayer()
        player.name = name
        player.hero = heroGenerator.getRandom()
        return player
    }
}