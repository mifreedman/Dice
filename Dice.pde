void setup()
  {
      size(500,540);
      noLoop();
  }
  
  Die first;
  int numDots = 0;
  void draw()
  {
      background(30);
      //first = new Die(100, 100);
      //first.show();
      for (int y = 10; y<420; y+=80) {
        for (int x = 10; x<420; x+=80) {
          first = new Die(x, y);
          first.show();
        } 
      }
      textSize(20);
      fill(225, 70, 110);
      text("Total dots: " + numDots, 180, 510);

      
  }
  void mousePressed()
  {
      redraw();
      numDots = 0;
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY;
      int side;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
          roll();
      }
      void roll()
      {
          side = (int)(Math.random()*6)+1;
      }
      
      void show()
      {
          fill(250);
          rect(myX, myY, 75, 75, 20);
          fill((int)(Math.random()*50)+200, 200, (int)(Math.random()*50)+200);
          int dotSiz = 10;
          if(side == 6) {
            ellipse(myX+25, myY+19, dotSiz, dotSiz);
            ellipse(myX+25, myY+38, dotSiz, dotSiz);
            ellipse(myX+25, myY+57, dotSiz, dotSiz);
            ellipse(myX+50, myY+19, dotSiz, dotSiz);
            ellipse(myX+50, myY+38, dotSiz, dotSiz);
            ellipse(myX+50, myY+57, dotSiz, dotSiz);
          } else if (side == 5) {
            ellipse(myX+20, myY+20, dotSiz, dotSiz); 
            ellipse(myX+55, myY+20, dotSiz, dotSiz);
            ellipse(myX+20, myY+55, dotSiz, dotSiz);
            ellipse(myX+55, myY+55, dotSiz, dotSiz);
            ellipse(myX+37, myY+37, dotSiz, dotSiz);
          } else if (side == 4) {
            ellipse(myX+25, myY+25, dotSiz, dotSiz); 
            ellipse(myX+50, myY+25, dotSiz, dotSiz);
            ellipse(myX+25, myY+50, dotSiz, dotSiz);
            ellipse(myX+50, myY+50, dotSiz, dotSiz);
          } else if (side == 3) {
            ellipse(myX+20, myY+20, dotSiz, dotSiz);
            ellipse(myX+37, myY+37, dotSiz, dotSiz);
            ellipse(myX+55, myY+55, dotSiz, dotSiz);
          } else if (side == 2) {
            ellipse(myX+25, myY+25, dotSiz, dotSiz);
            ellipse(myX+50, myY+50, dotSiz, dotSiz);
          } else { // if side == 1
            ellipse(myX+37, myY+37, dotSiz, dotSiz);
          }
        numDots = numDots+side;
      }
  }
