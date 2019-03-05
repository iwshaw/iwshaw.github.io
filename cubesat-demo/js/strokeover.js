var ctx = canvas.getContext("2d"),
    img = new Image,
    radius = 40;

img.onload = setup;
img.src = "img/woolsey2-fire-after.jpg";

function setup() {

  // set image as pattern for fillStyle
  ctx.fillStyle = ctx.createPattern(this, "no-repeat");

  // reveals image while mousing over canvas
  canvas.onmousemove = function(e) {
    var r = this.getBoundingClientRect(),
        x = e.clientX - r.left,
        y = e.clientY - r.top;

    ctx.beginPath();
    ctx.moveTo(x + radius, y);
    ctx.arc(x, y, radius, 0, 2*Math.PI);
    ctx.fill();
  };
}
