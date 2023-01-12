import processing.pdf.*;

PFont font, font1, font2,font3,font4, arrowFont;

int diameter=60;
//clicakble area
int bounds=diameter;

PImage img, img2, img3, img4,img5,img6,img7,img8,img9;

PImage graphics;
PGraphics pg;
PGraphics pat;
PGraphics pp,aa,bb,cc;

public void settings(){
    size(714, 1010);
}
void setup() {

 
  font1=createFont("微软雅黑",40);
   font2=createFont("宋体",35);
  font3=createFont("微软雅黑",70);
   font4=createFont("宋体",40);
  font=font1;
  textFont(font);

  fill(0);

  arrowFont = createFont("FreeSans.ttf", 32);

  img = loadImage("imgButton.png");
  img2 = loadImage("imgButton2.png");
  img3 = loadImage("imgButton3.png");
  img4 = loadImage("imgButton4.png");
 img5 = loadImage("first.png");
 img6=loadImage("second.png");
 img7=loadImage("third.png");
 img8=loadImage("forth.png");
img9=loadImage("background.png");
  graphics = loadImage("first.png"); 
//  locX=180;
 // locY=180;
pp=createGraphics(700, 1000);
aa=createGraphics(700, 1000);
bb=createGraphics(700, 1000);
 cc=createGraphics(700, 1000); 
  pg = createGraphics(714, 1010);
  pat = createGraphics(700, 1000);
}

int drawcolor=#40FFDA;
int fcolor=#F9F7EA;
int typesize=20;
//int font=font1;
int align=CENTER;
int SIZE=30; //button size
int edge=20; //DISTance from edge
int DIST=100; //DISTance between each category
int pdfC=0;
int f=0;
void draw() {


  int colors[]={#000000, #E83EFF, #40FFDA, #FAFF0D, #FFFFFF}, 
    n;

  int fontcolors[]={#F9F7EA, #1A1515}, 
    f;
 


  //close button
  //rect(edge,edge,SIZE,SIZE);
  strokeWeight(2);

  //bg color selector
  textFont(arrowFont);
  textSize(10);
  //font color selector
  textFont(arrowFont);
  textSize(10);
  fill(0);
  text("wordscolour", edge+SIZE+20, edge+SIZE+DIST-60);
  //for (f=0; f<fontcolors.length; f++)


  //image button
  textFont(arrowFont);
  textSize(10);
  fill(0);
  image(img9,0,0);
  
  img.resize(SIZE+2, 0);
  image(img, edge, edge+(SIZE*3)+(DIST*2)+615);
  img2.resize(SIZE+2, 0);
  image(img2, edge+SIZE, edge+(SIZE*3)+(DIST*2)+615);
  
  //draggable 


  img3.resize(SIZE+2, 0);
  image(img3, edge+2*SIZE+10, edge+(SIZE*3)+(DIST*2)+615);
  img4.resize(SIZE+2, 0);
  image(img4, edge+3*SIZE+10, edge+(SIZE*3)+(DIST*2)+615);
  
 
    image(pp,0,0);
  image(aa,0,0);
  image(bb,0,0);
  image(cc,0,0);

  //typeface
  //font1
  textFont(font1);
  textSize(15);
  fill(255);
  fill(0);
    text("P1", edge+54-48, edge+335+615);
      text("P2", edge+54-15, edge+335+615);
         text("P3", edge+80, edge+335+615);
            text("P4", edge+110, edge+335+615);
  //font2
  textFont(font2);

  textSize(20);

  //alignment
  textFont(arrowFont);
  textSize(10);
  fill(0);
 

 


  //save pdf button

  textFont(font1);
  textSize(15);
   fill(fcolor);

  pg.beginDraw();
//  pg.text(myText[0], 0, 10,600, 1400);
  //pg.text(myText, 90,0, 410,height);
  pg.textFont(font3);
    pg. text("创意编程", 300,20);
pg.textFont(font4);
textLeading(20);
text("三\n学\n习\n蒙\n德\n里\n安",675,110);
textLeading(20);
text("四 \n静\n态\n与\n动\n态\n图\n像",20,300);
text("五\n静\n态\n与\n动\n态\n图\n像",480,340);
text("续",480,507);
text("六\n基\n本\n交\n互\n设\n计",246,520);
  textSize(20);
  fill(255);
  rect(edge+150, edge+380+526, SIZE, SIZE);
  fill(0);
  text("Aa", edge+152, edge+930);
 
  pg.textFont(font);
   pg.text("戴淑妍/Daisy 时间:2023/1/11", 300,850);
    pg.text("指导老师：张立群", 300,900);
  pg.textAlign(align, CENTER);
  pg.fill(fcolor);
  pg.textSize(typesize);

  
pg.image(img9,0,0);
  pg.endDraw();
 
 



  if (mousePressed)
  {   
    //close
    if (inside(edge, edge, SIZE+edge, SIZE+edge))//exit
    {
      exit();
    }

    //bg color selector
    for (n=0; n<colors.length; n++)
    {
      //rect(edge,n*SIZE+DIST, SIZE,SIZE);
      if (inside(edge, n*SIZE+DIST, edge+SIZE, n*SIZE+DIST+SIZE))
      { 
        drawcolor=colors[n];
      }
    }

    //font color selector
    for (f=0; f<fontcolors.length; f++)
    {
      //rect(edge+SIZE+20,f*SIZE+DIST, SIZE,SIZE);
      if (inside(edge+SIZE+20, f*SIZE+DIST, edge+2*SIZE+20, f*SIZE+DIST+SIZE))
      { 
        fcolor=fontcolors[f];
      }
    }


    //image
    if (inside(edge, edge+(SIZE*3)+(DIST*2)+615, edge+SIZE, edge+(SIZE*4)+(DIST*2)+615))
    {
    aa.beginDraw();
    
     aa.image(img5,17,448);
    aa.endDraw();  
      
    }
    if (inside(edge+SIZE, edge+(SIZE*3)+(DIST*2)+615, edge+2*SIZE, edge+(SIZE*4)+(DIST*2)+615))
    {pp.beginDraw();
    
     pp.image(img6,244,208);
    pp.endDraw();  
    }

    if (inside(edge+2*SIZE+10, edge+(SIZE*3)+(DIST*2)+615, edge+3*SIZE+10, edge+(SIZE*4)+(DIST*2)+615))
   {bb.beginDraw();
    
     bb.image(img7,310,520);
    bb.endDraw();  
    }
    if (inside(edge+3*SIZE+10, edge+(SIZE*3)+(DIST*2)+615, edge+4*SIZE+10, edge+(SIZE*4)+(DIST*2)+615))
   {cc.beginDraw();
    
     cc.image(img8,584,253);
    cc.endDraw();  
    }
    if (inside(edge, edge+470, edge+SIZE, edge+470+SIZE))
    {
      align=LEFT;
    }
    //center
    //rect(edge+SIZE, edge+470, SIZE, SIZE);
    if (inside(edge+SIZE, edge+470, edge+2*SIZE, edge+470+SIZE))
    {
      align=CENTER;
    }
    //right
    //rect(edge+2*SIZE, edge+470, SIZE, SIZE);
    if (inside(edge+2*SIZE, edge+470, edge+3*SIZE, edge+470+SIZE))
    {
      align=RIGHT;
    }

    //typeface
    //rect(edge+50,edge+380, SIZE,SIZE);
    if (inside(edge+50-40, edge+380, edge+50+SIZE, edge+380+SIZE))
    {
      font=font1;
    }
    //rect(edge+80,edge+380, SIZE,SIZE);
     for (f=0; f<fontcolors.length; f++)
    {
    if (inside(edge+152, edge+918, edge+152+SIZE, edge+918+SIZE))
    {
      fcolor=fontcolors[f];
    }
    }

   

   
    //pattern none
    //ellipse(edge+2*SIZE+35, edge+580, SIZE+2, SIZE+2);
    if (inside(edge+2*SIZE+20, edge+565, edge+3*SIZE+20, edge+565+SIZE))
    {
      pat = createGraphics(595, 842);
      pat.beginDraw();
      pat.clear();
      pat.endDraw();
    }
  }
}
    //rect(edge,edge+650, 70,SIZE);
 
