protocol EquipmentGenerator {
    var allArmors: [Armor] {get}
    var allWeapons: [Weapon] {get}
    func getRandomArmor() -> Armor
    func getRandomWeapon() -> Weapon 
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