// priority: 0


StartupEvents.registry('item', event => {

});

StartupEvents.registry('fluid', event => {
	event.create("biofuel")
		.stillTexture("kubejs:block/bioethanol_still")
		.flowingTexture("kubejs:block/bioethanol_still")
		.bucketColor(0xAC9A62)
		.luminosity(1)
});
