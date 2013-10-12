var adc = adc || {};

adc.canvasParticle = adc.particle.extend({
	render: function() {
		if(this.context === null) {
			throw new Error("context needs to be set on particle");
		}
		this.context.fillStyle = this.color;
		this.context.fillRect(this.x - 1.5, this.y - 1.5, 3, 3);
	}
});
