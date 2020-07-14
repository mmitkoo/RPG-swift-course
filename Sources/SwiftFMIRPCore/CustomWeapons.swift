struct WoodenStick: Weapon {
    var attack: Int = 2
    var defence: Int = 1
}

struct FireSword: Weapon {
    var attack: Int = 10
    var defence: Int = 1
}

struct IronMace: Weapon {
    var attack: Int = 5
    var defence: Int = 5
}

struct DragonSlayer: Weapon {
    var attack: Int = 25
    var defence: Int = 15
}

struct Axe: Weapon {
    var attack: Int = 9
    var defence: Int = 2
}

struct OracleSecepter: Weapon {
    var attack: Int = 20
    var defence: Int = 20
}

class CustomEquipmentGenerator : EquipmentGenerator {
    var allArmors: [Armor] = [FireWings(), DragonArmor(), LargeShield(), SteelBoots(), DiamondPlatemail(),DragonPlatemail()]
    
    var allWeapons: [Weapon] = [WoodenStick(), FireSword(), IronMace(), DragonSlayer(), Axe(), OracleSecepter()]
    
    init() {
        allArmors = [NoArmor()]
        allWeapons = [WoodenStick()]
    }

    func getRandomArmor() -> Armor {
        return allArmors.randomElement() ??  SteelBoots()
    }

    func getRandomWeapon() -> Weapon {
        return allWeapons.randomElement() ?? WoodenStick()
    }
}