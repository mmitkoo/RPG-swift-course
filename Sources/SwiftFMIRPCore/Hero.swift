protocol Hero {
    var race: String {get}

    var energy: Int {get set}
    var lifePoitns: Int {get set}

    var weapon: Weapon? {get set}
    var armor: Armor? {get set}
}

protocol HeroGenerator {
    func getRandom() -> Hero
}

protocol Fight {
    var attacker: Hero {get set}
    var host: Hero {get set}
    
    func start(finish:(Fight) -> ())
    var winner: Hero? {get set}
}

protocol FightGenerator {
    var attacker: Player {get set}
    var defender: Player {get set}

    func generateFight() -> Fight
}

protocol EquipmentGenerator {
    var allArmors: [Armor] {get}
    var allWeapons: [Weapon] {get}
    func getRandomArmor() -> Armor
    func getRandomWeapon() -> Weapon 
}
