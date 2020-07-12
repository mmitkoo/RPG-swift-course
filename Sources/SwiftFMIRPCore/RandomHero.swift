struct Phoenix: Hero {
   var race: String  = "Winds"

    var energy: Int = 10
    var lifePoitns: Int = 50 

    var weapon: Weapon?  = nil
    var armor: Armor? = FireWings()
}

struct DragonKiller: Hero {
   var race: String  = "Knights"

    var energy: Int = 10
    var lifePoitns: Int = 50 

    var weapon: Weapon?  = DragonSlayer()
    var armor: Armor? = DragonArmor()
}

struct DarkKnight: Hero {
   var race: String  = "Knights"

    var energy: Int = 10
    var lifePoitns: Int = 50 

    var weapon: Weapon?  = IronMace()
    var armor: Armor? = LargeShield()
}

struct Mage: Hero {
   var race: String  = "Mages"

    var energy: Int = 10
    var lifePoitns: Int = 50 

    var weapon: Weapon?  = OracleSecepter()
    var armor: Armor? = DiamondPlatemail()
}

struct Viking: Hero {
   var race: String  = "Vikings"

    var energy: Int = 10
    var lifePoitns: Int = 50 

    var weapon: Weapon?  = Axe()
    var armor: Armor? = SteelBoots()
}