// priority: 0

console.info('[Progress] Shitsco Inc. reward items are go');

ItemEvents.armorTierRegistry(event => {
	event.add('shitsco', tier => {
		tier.durabilityMultiplier = 40
		tier.slotProtections = [3, 6, 8, 3]
		tier.enchantmentValue = 25
		tier.equipSound = 'minecraft:item.armor.equip_leather'
		tier.repairIngredient = '#c:diamonds'
		tier.toughness = 4.0
		tier.knockbackResistance = 0.2
	});
	
	event.add('badge', tier => {
		tier.durabilityMultiplier = 2
		tier.slotProtections = [1, 1, 1, 1]
		tier.enchantmentValue = 50
		tier.equipSound = 'minecraft:item.armor.equip_leather'
		tier.repairIngredient = '#c:leather'
		tier.toughness = 8.0
		tier.knockbackResistance = 0.2
	});
});

StartupEvents.registry('item', event => {
	event.create('shitsco_hat', 'helmet')
		.displayName('Shitsco Inc. Novelty Hat')
		.tooltip('Fits kinda funny')
		.unstackable()
		.rarity('epic')
		.texture('kubejs:item/shitsco_helmet')
		.group('combat')
		.tier('shitsco');
	
	event.create('shitsco_chestplate', 'chestplate')
		.displayName('Shitsco Inc. Novelty T-Shirt')
		.tooltip('Sorta itchy')
		.unstackable()
		.rarity('epic')
		.texture('kubejs:item/shitsco_chestplate')
		.group('combat')
		.tier('shitsco');
	
	event.create('shitsco_leggings', 'leggings')
		.displayName('Shitsco Inc. Novelty Pants')
		.tooltip('So starchy they stand up on their own')
		.unstackable()
		.rarity('epic')
		.texture('kubejs:item/shitsco_leggings')
		.group('combat')
		.tier('shitsco');
	
	event.create('shitsco_boots', 'boots')
		.displayName('Shitsco Inc. Novelty Shoes')
		.tooltip('Might be a size too small?')
		.unstackable()
		.rarity('epic')
		.texture('kubejs:item/shitsco_boots')
		.group('combat')
		.tier('shitsco');
		
	event.create('signed_photo')
		.displayName('Signed photo of Walter')
		.tooltip('Good Boy of the Year')
		.unstackable()
		.rarity('epic')
		.texture('kubejs:item/shitsco_walter')
		.group('decoration');
	
	event.create('shitsco_jetpack')
		.displayName('Shitsco Brand Jetpack')
		.tooltip('Guaranteed failure resistant!')
		.unstackable()
		.texture('kubejs:item/shitsco_jetpack')
		.group('tools')
		.food(food => {
			food.hunger(1)
			.saturation(1)
			.alwaysEdible()
			.eaten(ctx => {
				ctx.player.tell("I don't think it's supposed to spark like that!");
				ctx.player.setY(512.0);
				ctx.player.playSound('entity.firework_rocket.launch');
			});
		});
	
	event.create('shitsco_jetpack_premium')
		.displayName('Shitsco Brand Premium Jetpack')
		.tooltip('Safety Inspected, Satisfaction Guaranteed')
		.unstackable()
		.rarity('epic')
		.glow(true)
		.texture('kubejs:item/shitsco_jetpack')
		.group('tools');
	
	event.create('shitsco_badge', 'chestplate')
		.displayName('Shitsco Inc. Employee of the Month Badge')
		.tooltip('We are all proud of you.')
		.unstackable()
		.rarity('epic')
		.texture('kubejs:item/badge_chestplate')
		.group('combat')
		.tier('badge');
});

StartupEvents.registry("block", event => {
	event.create('shitsco_trophy')
		.material('clay')
		.hardness(0.5)
		.displayName('Shitsco Inc. Participation Trophy')
		.tagBlock('minecraft:mineable/pickaxe')
		.fullBlock(false)
		.opaque(false)
		.viewBlocking(false)
		.box(5,0,5,11,12,11)
		.defaultCutout();
});

StartupEvents.registry("painting_variant", event => {
	event.create('kubejs:walter_painting')
		.width(64)
		.height(64);
});
