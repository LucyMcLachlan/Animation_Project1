//Lucy McLachlan
//Animation_Project
//Block 1-4a
//feb 10th 2021

//VARIABLES
int bg1,bg2,bg3;
int mg1,mg2,mg3,mg4,mg5,mg6,mg7;
int boat;
int cloud1,cloud2,cloud3;
int x,y;
float a;
float r;

void boat(int x, int y, float angle){ 
  pushMatrix();
  translate(x,y);
  rotate(radians(a));
  noStroke();
  fill(229,112,88);
  arc(0,0,150,110,0,PI);
  fill(232,246,250);
  triangle(0,-120,90,-5,0,-5);
  triangle(-4,-100,-4,-5,-50,-5);
  popMatrix();}

void setup(){
    size(800,600);
    bg1 = 0;
    bg2 = 400;
    bg3 = 800;
    mg1 = 0;
    mg2 = 170;
    mg3 = 320;
    mg4 = 470;
    mg5 = 620;
    mg6 = 770;
    mg7 = 920;
    boat = 100;
    
    cloud1 = 450;
    cloud2 = 250;
    cloud3 = -30;
   
    y = 460;
}

void draw(){
  //sky
  background(137,186,227);
  
  //bg hills
  fill(46,167,93);
  noStroke();
  ellipse(bg1,400,400,400);
  ellipse(bg2,400,400,400);
  ellipse(bg3,400,400,400);
  bg1 = bg1 + 2;
  bg2 = bg2 + 2;
  bg3 = bg3 + 2;
  if(bg1>1000){
    bg1 = -200;
  }
   if(bg2>1000){
    bg2 = -200;
  }
   if(bg3>1000){
    bg3 = -200;
  }
  
  //midground hills
  fill(80,140,97);
  ellipse(mg1,400,200,210);
  ellipse(mg2,400,200,210);
  ellipse(mg3,400,200,210);
  ellipse(mg4,400,200,210);
  ellipse(mg5,400,200,210);
  ellipse(mg6,400,200,210);
  ellipse(mg7,400,200,210);
    
  mg1 = mg1 + 4;
  mg2 = mg2 + 4;
  mg3 = mg3 + 4;
  mg4 = mg4 + 4;
  mg5 = mg5 + 4;
  mg6 = mg6 + 4;
  mg7 = mg7 + 4;
  
    if(mg1>865){
    mg1 = -100;
    }
    if(mg2>865){
    mg2 = -100;
    }
    if(mg3>865){
    mg3 = -100;
    }
    if(mg4>865){
    mg4 = -100;
    }
    if(mg5>865){
    mg5 = -100;
    }
    if(mg6>865){
    mg6 = -100;
    }
    if(mg7>865){
    mg7 = -100;
    }
    
  //ground
  
  fill(85,196,176);
  rect(0,400,800,400);
  
  //boat
  
  boat(x,y,a);
  x = x + 5;
  
    if(x>=905){
    x = -450;
    a = 0;
    r = 0; //resetts values after each pass
    }
  a = a + r;
  if (a >= 20){
    r = r * -1;
  }
  if(a <= -20){
  r= r * -1;
  }
   r= r + 0.01;
  //cloud
  fill(210,237,245);
  ellipse(cloud1,75,45,30);
  ellipse(cloud1 + 30,65,75,50);
  ellipse(cloud1 + 50,75,45,50);
  ellipse(cloud1 + 70,75,45,30);
  
  cloud1 = cloud1 + 1;
    if(cloud1>830){
    cloud1 = - 90;
    }
    
  ellipse(cloud2,100,60,80);
  ellipse(cloud2 + 20,115,85,40);
  ellipse(cloud2 - 20,100,70,50);
  
  cloud2 = cloud2 + 1;
   if(cloud2>830){
   cloud2 = -90;
   }
   
  ellipse(cloud3,75,45,30);
  ellipse(cloud3 + 30,65,75,50);
  ellipse(cloud3 + 50,75,45,50);
  ellipse(cloud3 + 70,75,45,30);
  
   cloud3 = cloud3 + 1;
   if(cloud3>830){
   cloud3 = -90;
   }
}
