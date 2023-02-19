// priority: 0

console.info('Hello, World! (You will see this line every time client resources reload)')

REIEvents.hide('item', event => {
    event.hide('createaddition:bioethanol_bucket');
    event.hide('createaddition:seed_oil_bucket');
    event.hide('twilightforest:uncrafting_table');
});

REIEvents.hide('fluid', event => {
    event.hide('createaddition:bioethanol');
    event.hide('createaddition:seed_oil');
});

REIEvents.removeCategories(event => {
    //event.remove works too, but yeeting is so much more fun 😉
    event.yeet('twilightforest:uncrafting')
})


JEIEvents.hideItems(event => {
	// Hide items in JEI here
	// event.hide('minecraft:cobblestone')
})
