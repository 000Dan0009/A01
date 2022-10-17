




void setup(){

    size(500,500);
    rectMode(CENTER);
    
    fill(10,95,100,10);
    background(0);
    
  
//global variables for random walk 1
int x1;
int y1 ;

int speed1 = 9;

//global variables for random walk 2
int x2;
int y2;

int speed2 = 6;

//global variables for random walk 3
int x3;
int y3;

int speed3 = 7;

 //random starting positions 1
  x1 = int(random(width));
  y1 = int(random(height));
    
 //random starting positions 2
  x2 = int(random(width));
  y2 = int(random(height));
    
  //random starting position 3
  x3 =int(random(width));
  y3 =int(random(height));
    
  //random walker 1
  x1 = x1+int( random(-speed1, speed1) );
  y1 = y1+int( random(-speed1, speed1) );
  
  
  //random walker 2
  x2 = x2+int( random(-speed1, speed1) );
  y2 = y2+int( random(-speed1, speed1) );
  
  ellipse(x2, y2, 10, 10);
  ellipse(x1, y1, 10, 10);
  
  ellipse(abs(x1), abs(y1), abs(cos(frameCount*0.3)*5), abs(tan(frameCount*0.3)*5));
  ellipse(abs(x2), abs(y2), abs(cos(frameCount*0.2)*5), abs(cos(frameCount*0.2)*5));
  ellipse(abs(x3), abs(y3), abs(tan(frameCount*0.1)*5), abs(tan(frameCount*0.1)*5));
}

void draw(){
  
  saveFrame("### out.jpg");
  
  
  //color space RGB. Each value is between 0 and 255
  
  //background(0);
  
  //translate individual square
  pushMatrix();

translate(width/2,height/2);

rotate(frameCount);

rect(mouseX/2,mouseY/2,20,20);
rect(20,20,50,50);

popMatrix();

 pushMatrix();

translate(width/2,height/2);

rotate(frameCount);

rect(mouseX/2,mouseY/2,50,50);
rect(50,50,50,50);

popMatrix();

}


void mousePressed() {
  background(0);
//added visual style - for different thickness of triangles 
  stroke(159, 43, 104);
  fill(0);
  strokeWeight(abs(15+tan(frameCount*0.03)*10));
  ellipse(width/-2, height/-4, 100, 100);
  
 background(0);
//added visual style - a pulsing blue outline of a circle
  stroke(255, 13, 14);
  fill(0);
  strokeWeight(abs(15+tan(frameCount*0.03)*10));
  ellipse(width/-2, height/-4, 100, 100);
}
