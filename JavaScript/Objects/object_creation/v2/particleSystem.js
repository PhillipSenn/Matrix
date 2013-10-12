var adc = adc || {};

adc.particleSystem = {
	particles: [],

	extend: function(props) {
		var prop, obj;
		obj = Object.create(this, props);
		for(prop in props) {
			if(props.hasOwnProperty(prop)) {
				obj[prop] = props[prop];
			}
		}
		return obj;
	},

	addParticle: function(particle) {
		this.particles.push(particle);
	},

	update: function() {
		var i,
			numParticles = this.particles.length;

		for(i = 0; i < numParticles; i += 1) {
			this.particles[i].update();
		}
	},

	render: function() {
		var i,
			numParticles = this.particles.length;
		for(i = 0; i < numParticles; i += 1) {
			this.particles[i].render();
		}
	}
};