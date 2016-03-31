// referenced and modified from http://p5play.molleindustria.org/examples/index.html?fileName=sprite9.js

var droplet;
var drop;
var dropImage;
var dropNum = 100;
var dropletGroup;


function setup() {
  createCanvas(800,400);  
  
  face = loadImage("assets/droplet.png");
  dropImage= loadImage("assets/drop.png")
  

  droplet = createSprite(400, 200, 100, 100);
 droplets = new Group();
 
 for(var i =0;i<9;i++)
  {
     drop = createSprite(random(0,width), random(0,height));
     drop.addAnimation("floating","assets/drop_anim/drop_anim_00000.png","assets/drop_anim/drop_anim_00026.png")
     droplets.add(drop);
   
  }
 
 
 
  drop.draw = function() {
  
    fill(56,165,215);
    ellipse(1,1,56,56)
   
    
  }
  

  droplet.draw = function() {
   
    

    fill(56,165,215);
    

    push();
    rotate(radians(this.getDirection()));
    ellipse(0,0, ((this.getSpeed()/2)+dropNum), ((this.getSpeed()/2)-dropNum));
   
    pop();
    
  
    image(face, this.deltaX*2,this.deltaY*2);
    
       droplet.velocity.x = (mouseX-droplet.position.x)/10;
  droplet.velocity.y = (mouseY-droplet.position.y)/10;
    
    }
  
  droplet.maxSpeed = 40;
}

function draw()
{
  background(255,255,255);  
  
 
 droplet.debug = mouseIsPressed;
 
 drop.debug = mouseIsPressed;

  if (droplet.collide(droplets))
  {
  
    drop.visible = false;
   dropNum = dropNum + 1;
  }

  drawSprites();
 
  
}