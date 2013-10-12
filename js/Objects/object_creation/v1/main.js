(function() {

	if (typeof Object.create !== "function") {
	    Object.create = function (o) {
	        function F() {}
	        F.prototype = o;
	        return new F();
	    };
	}

	var system,
		numParticles,
		canvas,
		context,
		bounds;


	function initSystem() {
		system = Object.create(adc.particleSystem);
		numParticles = 200;
		canvas = document.getElementById("canvas");
		context = canvas.getContext("2d");
		canvas.width = window.innerWidth;
		canvas.height = window.innerHeight;
		bounds = {
			x1: 0,
			y1: 0,
			x2: canvas.width,
			y2: canvas.height
		};
	}

	function initParticles() {
		var i, particle;
		for(i = 0; i < numParticles; i += 1) {
			particle = Object.create(adc.particle);
			particle.bounds = bounds;
			particle.context = context;
			particle.x = Math.random() * bounds.x2;
			particle.y = Math.random() * bounds.y2;
			particle.vx = Math.random() * 10 - 5;
			particle.vy = Math.random() * 10 - 5;
			system.addParticle(particle);
		}
	}

	function animate() {
		context.clearRect(bounds.x1, bounds.y1, bounds.x2, bounds.y2);
		system.update();
		system.render();
	}
	
	initSystem();
	initParticles();
	setInterval(animate, 1000 / 60);


}());