(function() {

	var system,
		numParticles,
		container,
		bounds;

	
	function createElement() {
		var el = document.createElement("div");
		el.style.position = "absolute";
		el.style.width = 3;
		el.style.height = 3;
		el.style.backgroundColor = "#000000";
		container.appendChild(el);
		return el;
	}
	
	function initSystem() {
		system = adc.particleSystem.extend();
		numParticles = 200;
		container = document.getElementById("container");
		bounds = {
			x1: 0,
			y1: 0,
			x2: window.innerWidth,
			y2: window.innerHeight
		};
	}

	function initParticles() {
		var i, particle;
		for(i = 0; i < numParticles; i += 1) {

			particle = adc.domParticle.extend({
				bounds: bounds,
				element: createElement()
			});
			particle.init();
			system.addParticle(particle);
		}
	}

	function animate() {
		system.update();
		system.render();
	}


	initSystem();
	initParticles();
	setInterval(animate, 1000 / 60);

}());