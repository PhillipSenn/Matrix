var adc = adc || {};

adc.domParticle = adc.particle.extend({
	render: function() {
		if(this.element === null) {
			throw new Error("element needs to be set on particle");
		}
		this.element.style.left = this.x;
		this.element.style.top = this.y;
	}
});
