document.addEventListener("DOMContentLoaded", function(){
  // phase I:
  const canvas = document.getElementById('myCanvas');
  canvas.width = 500;
  canvas.height = 500;

  const ctx = canvas.getContext('2d');

  // phase II: make a rectangle
  ctx.fillStyle = 'rgb(38, 27, 96)';
  ctx.fillRect(10,10,120,160);

  // phase III: make a circle
  ctx.beginPath();
  ctx.arc(200, 100, 60, 0, 2*Math.PI, true);
  ctx.strokeStyle = 'blue';
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = 'red';
  ctx.fill();

  // phase IV: make your favorite shape
  ctx.beginPath();
  ctx.moveTo(100, 90);
  ctx.lineTo(50,56);
  ctx.lineTo(50,115);
  ctx.fillStyle = 'white'
  ctx.fill();
});
