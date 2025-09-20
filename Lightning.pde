//coordinate integer variables
int startX = (int) (Math.random() * 600);
int startY = 120;
int endX = (int) (Math.random() * 600);
int endY = 120;

void setup() {
  size(900,900);
  
  //grey background
  background(0,0,0,100);
  
  frameRate(600);
  
}

void draw() {
   
  //grass
  fill(20,20,240);
  rect(0,700,900,200);
  
  //lightning
      fill(0,0,0,50);
      rect(-100,100,1200,1200);
      strokeWeight(10);
      stroke(238, 247, 54);
      endX = startX + (int) (Math.random() * 10);
      endY = startY + (int) (Math.random() * 10);
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      
  //cloud
  for (int a = 0; a < 1000; a += 100) {
    fill(96,102,98);
    noStroke();
    ellipse(a, 60,150,150);
  }
  
  //rain loop
  for (int y = 120; y < 700; y += 30){
    for (int x = 0; x < 900; x += 20) {
      rain(x,y);
        }
      }
    
  }
  
void mousePressed() {
  
  startX = (int) (Math.random() * 600);
  endX = (int) (Math.random() * 600);
  startY = 120;
  endY = 120;
 
  
  fill(255,255,255,100);
  rect(0,100,900,800);
}

void rain(int x, int y) {
  stroke(20,20,240);
  strokeWeight(2);
  line(x,y,x + 10, y + 15);
  }
  
