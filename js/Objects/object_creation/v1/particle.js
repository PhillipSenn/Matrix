var adc = adc || {};

adc.particle = {
	x: 0,
	y: 0,
	vx: 0,
	vy: 0,
	gravity: 0.0,
	bounce: -0.9,
	friction: 1.0,
	bounds: null,
	color: "#000000",
	context: null,

	update: function() {
		this.vy += this.gravity;
		this.x += this.vx;
		this.y += this.vy;
		this.vx *= this.friction;
		this.vy *= this.friction;

		if(this.x < this.bounds.x1) {
			this.x = this.bounds.x1;
			this.vx *= this.bounce;
		}
		else if(this.x > this.bounds.x2) {
			this.x = this.bounds.x2;
			this.vx *= this.bounce;
		}
		if(this.y < this.bounds.y1) {
			this.y = this.bounds.y1;
			this.vy *= this.bounce;
		}
		else if(this.y > this.bounds.y2) {
			this.y = this.bounds.y2;
			this.vy *= this.bounce;
		}
	},

	render: function() {
		if(this.context === null) {
			throw new Error("context needs to be set on particle");
		}
		this.context.fillStyle = this.color;
		this.context.fillRect(this.x - 1.5, this.y - 1.5, 3, 3);
	}
};
