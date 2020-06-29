int mappedSpeed = 200;
int delay = 30;


int mappedY;
int mappedX;
int mx = mouseX;
int my = mouseY;
float speed;
float usableSpeed; //colors bunter
float usableY; //Hände hoch
float usableX; //toggle zwischen 1-3
float sat;

//color array
//Window Colors
color c1= #FA0011;
color c2= #2400FA;      
color c3= #00FA59;      
color c4= #E4FA00; 
color[] colors = {c1, c2, c3, c4};
color c = (colors[int(random(0, 4))]);





void setup() {
  size(600, 600);
  colorMode(HSB);
  rectMode(CENTER);
  noStroke();
  frameRate(24);
  background(0);
}

void draw() {
  background(0);
  speed = abs(mouseX-pmouseX) + abs(mouseY-pmouseY);
  
  
  println(usableSpeed);
  push();
  translate(width/2,height/2);
  rotate(millis()/100);
  stroke(200);
  noFill();
  for(int i = 0; i<360; i=i+36){
    push();
    rotate(radians(i));
    
    //glow through transparency    
    if (frameCount % delay == 0) {
      
      c=(colors[int(random(0, 4))]);
    }
    usableSpeed = map(speed, 0,50,0,mappedSpeed);
    strokeWeight(10);
    //sat = saturation(c);
    stroke(c,usableSpeed);
    ellipse(50,10,100,100);
    
    //shape
    strokeWeight(1);
    stroke(200);
    ellipse(50,10,100,100);
    pop();
  }
  pop();
  //shape 1 
  
  //shape 2
  
  //shape 3
  
}
