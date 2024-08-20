/*window.addEventListener('message', function(event) {
    if (event.data.type === 'updatePosUI') {
		if (event.data.display){
			$("#interaction").show();
			updatePosition(event.data.coords);
		}
        else{
			$("#interaction").hide();
		}
    }
});*/
window.addEventListener('message', (event) => {
	var item = event.data;
	if (item !== undefined && item.type === "ui") {
		if (item.display === true) {
			$("#nui").show();
		} else{
			$("#nui").hide();
		}
	}
	else if(item !== undefined && item.type === "updatePosUI"){
		updatePosition(event.data.coords);
	}
});

$(function(){
	window.onload = (e) => {
		$("#nui").hide();

	};
});

document.addEventListener("mousedown", function(event) {
	const mouseClick="mouseClick"
    if (event.button === 2) {
		fetch(`https://${GetParentResourceName()}/disableFocus`, {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json; charset=UTF-8',
			},
			body: JSON.stringify({ mouseClick }),
		});
    }
});

function updatePosition(coords) {
	const closeMenu = document.getElementById('closeMenu');
	const skinReload = document.getElementById('skinReload');
    const head = document.getElementById('head');
	const mask = document.getElementById('mask');
	const glasses = document.getElementById('glasses');
	const tshirt = document.getElementById('tshirt');
	const backpack = document.getElementById('backpack');
    const chest = document.getElementById('chest');
    const rightarm = document.getElementById('rightarm');
	const leftarm = document.getElementById('leftarm');
    const pant = document.getElementById('pant');
    const shoes = document.getElementById('shoes');

	closeMenu.style.left = (coords.closeMenu.x * window.innerWidth) + 'px';
    closeMenu.style.top = (coords.closeMenu.y * window.innerHeight) + 'px';

	skinReload.style.left = (coords.skinReload.x * window.innerWidth) + 'px';
    skinReload.style.top = (coords.skinReload.y * window.innerHeight) + 'px';

    head.style.left = (coords.head.x * window.innerWidth) + 'px';
    head.style.top = (coords.head.y * window.innerHeight) + 'px';

	glasses.style.left = (coords.glasses.x * window.innerWidth) + 'px';
    glasses.style.top = (coords.glasses.y * window.innerHeight) + 'px';

	mask.style.left = (coords.mask.x * window.innerWidth) + 'px';
    mask.style.top = (coords.mask.y * window.innerHeight) + 'px';

    chest.style.left = (coords.chest.x * window.innerWidth) + 'px';
    chest.style.top = (coords.chest.y * window.innerHeight) + 'px';

	tshirt.style.left = (coords.tshirt.x * window.innerWidth) + 'px';
    tshirt.style.top = (coords.tshirt.y * window.innerHeight) + 'px';

	backpack.style.left = (coords.backpack.x * window.innerWidth) + 'px';
    backpack.style.top = (coords.backpack.y * window.innerHeight) + 'px';

    rightarm.style.left = (coords.rightArm.x * window.innerWidth) + 'px';
    rightarm.style.top = (coords.rightArm.y * window.innerHeight) + 'px';

	leftarm.style.left = (coords.leftArm.x * window.innerWidth) + 'px';
    leftarm.style.top = (coords.leftArm.y * window.innerHeight) + 'px';

	pant.style.left = (coords.pant.x * window.innerWidth) + 'px';
    pant.style.top = (coords.pant.y * window.innerHeight) + 'px';

	shoes.style.left = (coords.shoes.x * window.innerWidth) + 'px';
    shoes.style.top = (coords.shoes.y * window.innerHeight) + 'px';
}
function controlClick(buttonId) {
    fetch(`https://${GetParentResourceName()}/controlInteraction`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify({ buttonId }),
    });
}