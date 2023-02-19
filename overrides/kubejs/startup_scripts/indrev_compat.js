// priority: 0

console.info('[Progress] Indrev compat items are go');

const materials = [
	"zinc",
	"desh",
	"ostrum",
	"calorite",
];

const types = [
	"chunk",
	"dust",
	"purified_ore",
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
	// Another loop to avoid zinc problems
	const type = "crushed";
	const crushedMats = materials.slice(1);
	crushedMats.forEach(material => {
		event.create(`${type}_${material}`)
			.texture(`kubejs:item/${material}_${type}`)
			.textureJson({
				layer0: `kubejs:item/${material}_${type}`
			})
			.group("indrev.indrev_group");
	})
});

StartupEvents.registry('fluid', event => {
	materials.forEach(material => {
		// Add molten metal for each ore
		event.create(`molten_${material}`)
			.stillTexture(`kubejs:block/${material}_molten`)
			.flowingTexture(`kubejs:block/${material}_molten`)
			.noBucket()
	});
});
