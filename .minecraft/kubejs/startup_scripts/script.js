// priority: 0

console.info('[Progress] Happy holidays from your friends at Shitsco Inc.')

const materials = [
	"zinc",
	"desh",
	"ostrum",
	"calorite",
];
const types = [
	"chunk",
	"dust",
	"purified_ore"
];

StartupEvents.registry('item', event => {
	materials.forEach(material => {
		// Add ore processing transition items for each ore
		types.forEach(type => {
			// i.e. 'zinc_chunk'
			event.create(`${material}_${type}`)
				.texture(`kubejs:item/${material}_${type}`)
				.textureJson({
					layer0: `kubejs:item/${material}_${type}`
				})
				.group("indrev.indrev_group");
		});
	});
});

StartupEvents.registry('fluid', event => {
	materials.forEach(material => {
		// Add molten metal for each ore
		event.create(`molten_${material}`)
			.stillTexture(`kubejs:block/${material}_molten`)
			.flowingTexture(`kubejs:block/${material}_molten`)
			.luminosity(8)
	});
});
