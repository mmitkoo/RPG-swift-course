var mapGenerator = DefaultMapGenerator()
var playerGenerator = DefaultPlayerGenerator(heroGenerator: CustomHeroGenerator(equipmentGenerator: CustomEquipmentGenerator()))
//var figthGenerator = CustomFightGenerator()
//var equipmentGenerator = DefaultEquipmentGenerator()
var mapRendered = DefaultMapRenderer()
var game = Game(mapGenerator: mapGenerator, playerGenerator: playerGenerator, mapRenderer: mapRendered)

game.run()
