Bear [] pooh;
Honey pot;
void setup(){
  size(300,300);
  color yellow = color(255, 244, 163);
  background(yellow);
  frameRate(20);
  pooh = new Bear[10];
  for(int i = 0; i < pooh.length;i++)
  {
    pooh[i] = new Bear();
  }
}
void draw(){
  background(255, 244, 163);
  pot = new Honey();
  pot.show();
  for(int i = 0; i < pooh.length;i++)
  {

    pooh[i].walk();

    pooh[i].show();
  }
}
class Bear{
  int myX, myY;
  Bear(){
    myX=myY=250;
  }
  void walk(){
      double easingOne = Math.random()*0.10;
      double easingTwo = Math.random()*0.10;
      float targetX = mouseX;
      float dx = targetX - myX; 
      float targetY = mouseY;
      float dy = targetY - myY;
      myX = myX + (int)(Math.random()*6)-3 + (int)(dx * easingOne);
      myY = myY + (int)(Math.random()*6)-3 + (int)(dy * easingTwo);
  }
  void show(){
    noStroke();
    fill(186, 125, 94);
    ellipse(myX,myY,60,60);
    ellipse(myX-20,myY-20,30,30);
    ellipse(myX+20,myY-20,30,30);
    fill(0);
    ellipse(myX-15,myY-5,5,5);
    ellipse(myX+15,myY-5,5,5);
    fill(226, 165, 133);
    ellipse(myX,myY+15,33,27);
    fill(81, 59, 48);
    ellipse(myX,myY+5,15,10);
    stroke(0);
    noFill();
    strokeWeight(2);
    arc(myX,myY+12,10,10,0,PI);
}
}

class Honey{
    int xOne, yOne;
    Honey()
    {
        xOne = mouseX;
        yOne = mouseY;
    }
    void show()
    { 
        noStroke();
        fill(255, 218, 86);
        rect(xOne,yOne,40,50,10);
        fill(219, 171, 2);
        rect(xOne,yOne,40,10,10);
        fill(255);
        stroke(0);
        strokeWeight(1);
        ellipse(xOne+16,yOne+23,10,10);
        ellipse(xOne+24,yOne+23,10,10);
        stroke(0);
        strokeWeight(1);
        fill(247, 252, 113);
        ellipse(xOne+20,yOne+30,20,10);
        fill(0);
        ellipse(xOne+16,yOne+30,3,9);
        ellipse(xOne+24,yOne+30,3,9);
    }
}
