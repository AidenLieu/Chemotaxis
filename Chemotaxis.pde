Bacteria[] colony;
void setup()   
{     
  size(500,500);
  colony = new Bacteria[10];
  for(int i = 0; i < colony.length; i++){
    colony[i] = new Bacteria(); 
  }
}   

void draw()   
{    
  background(0);
  for(int i = 0; i < colony.length; i++){
    colony[i].move();
    colony[i].show();    
  }
}  
class Bacteria    
{     
  int myX, myY, myColor;
  Bacteria(){
    myX = (int)(Math.random() * 501);
    myY = (int)(Math.random() * 501);
  }
  void move(){
    myX = myX + (int)(Math.random() * 5) - 2;
    myY = myY + (int)(Math.random() * 5) - 2;
  }
  void show(){
    myColor = color(255);
    if(mouseX > myX)
       myX = myX + (int)(Math.random() * 5) - 1;
    else if (mouseY > myY)
       myY = myY + (int)(Math.random() * 5) - 1;
    if(mouseX < myX)
       myX = myX + (int)(Math.random() * 5) - 3;
    else if (mouseY < myY)
       myY = myY + (int)(Math.random() * 5) - 3;
    if(mouseX - myX < 20 && mouseX - myX > - 20 && mouseY - myY < 20 && mouseY - myY > - 20){
      myColor = color(255,0,0);
    }
    fill(myColor);
    ellipse(myX,myY,20,20);
  }
}    
