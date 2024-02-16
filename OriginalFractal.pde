boolean holder = true;
boolean on = false;
int one = 300;
public void setup(){
  size(500,500);
  rectMode(CENTER);
  textAlign(CENTER);
}
public void draw(){
  background(0);
  if (on == true){
    if (one > 1000){
      one = 500;
    }
    one+=25;
  }
  if (holder == true){ 
    strokeWeight(1);
    sammich(250,250, one);
    //lengt+=50;
  }
    strokeWeight(8);
    stroke(0,0,0);
    line(0,370,190,280);
    line(500,370,500-190,280);
}
public void keyPressed(){
  if (key == ' '){
    if (one > 1000){
      one = 500;
    }
    one += 50;
  
  }
  if (key == 'b' || key == 'B'){
    on = !on;
    
  }

  
  
}
public void sammich(int x, int y, int len){
  if (len <= 1){
  fill(255,255,0,50);
  ellipse(x,y-25,len+200,len+200);
  stroke(0,0,0);
  fill(234,188,95);
  ellipse(x-20,y+35, len+85,len+26);
  ellipse(x+20,y+35, len+85,len+26);
  noStroke();
  rect(x,y+35,len+70,len+26);
  stroke(0,0,0);
  fill(230,174,161);

  rect(x, y+20, len+115, len+15);
  rect(x, y+10, len+115, len+15);
  rect(x, y, len+115, len+15);

  fill(255,255,0);
  rect(x, y-20, len+115,len+10);
  rect(x, y-10, len+115,len+10);

  fill(255,0,0);
  rect(x, y-30, len+125, len+15);
  fill(0,255,0);
  rect(x, y-38, len+130, len+10);
  //noStroke();
  fill(234,188,95);
  ellipse(x-30,y-50, len+85,len+26);
  ellipse(x+30,y-50, len+85,len+26);
  noStroke();
  rect(x,y-50,len+70,len+26);

  
  fill(255,255,255);
  ellipse(x-35,y-70,len+50,len+65);
  ellipse(x+35,y-70,len+50,len+65);

  fill(0,0,0);
  ellipse(x-35,y-60,len+35,len+40);
  ellipse(x+35,y-60,len+35,len+40);

  }
  
  
  
  
  else{

  noStroke();
  fill(234,188,95);
  ellipse(x-len-20,y+len+35, len+85,len+26);
  ellipse(x+len+20,y+len+35, len+85,len+26);
  rect(x,y+len+35,len+70,len+26);
  stroke(0,0,0);
  

  fill(230,174,161);

  rect(x, y+20, len+115, (len/4)+15);
  rect(x, y+10, len+115,len+15);
  rect(x, y, len/+115, len+15);

  fill(255,255,0);
  rect(x, y-20, 2*len+115,(len/6)-10);
  rect(x, y-10, 2*len+115,(len/6)+10);



  fill(255,0,0);
  rect(x, y-(len/5)-30, 2*len+125, (len/2)+15);
  fill(0,255,0);
  rect(x, y-(len/4)-50, 2*len+130, (len/4)+10);
  noStroke();
  fill(234,188,95);
  ellipse(x-len-30,y-len-50, 2*len+85,(len/3)+26);
  ellipse(x+len+30,y-len-50, 2*len+85,(len/3)+26);
  rect(x,y-(len/2)-50,(len/3)+70,(len/3)+26);




  stroke(0,0,0);
  fill(255,255,255);
  ellipse(x-len-35,y-len-70,len+50,len+65);
  ellipse(x+len+35,y-len-70,len+50,len+65);

  fill(0,0,0);
  ellipse(x-len-35,y-len-60,len+35,len+40);
  ellipse(x+len+35,y-len-60,len+35,len+40);
  stroke(0,0,0);


  sammich(x,y,len/2);
  
  
  fill(0,0,0);
  if (len/3 > 0){
    textSize(len/3);
  }
  else{
    textSize(1);
  }
  text("Sammich", x, y +(len/2)+35);
  }
}
