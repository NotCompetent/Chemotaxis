 Fishy alice;
 Penguin[] picchy;
 void setup()   
 {     
 	//initialize bacteria variables here 
 	//int t = 0;
 	size(600,600);
	alice = new Fishy(); 
	picchy = new Penguin[15];
	for(int i = 0; i < picchy.length; i++){
		//t = (int)(Math.random()*0)(int)(Math.random()*0);
		picchy[i]= new Penguin((int)(Math.random()*3),(int)(Math.random()*100)+250,(int)(Math.random()*100)+250);
	} 
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(173,216,230);
 	alice.show();
 	alice.move();
	for(int i = 0; i < picchy.length; i++){
		picchy[i].show();
		picchy[i].move();
	} 
 }  
 
 class Fishy
{
	int myX, myY;
	Fishy()
	{
		myX = mouseX;
		myY = mouseY;
	}
	void move()
	{
		myX = mouseX;
		myY = mouseY;
	}
	void show()
	{
		fill(255,69,0);
 		stroke(255,69,0);
		ellipse(myX,myY,10,5);
 		beginShape();
 		vertex(myX+5,myY);
 		vertex(myX+8,myY+3);
 		vertex(myX+8,myY-3);
 		endShape(CLOSE);
 		stroke(0,0,0);
 		fill(0,0,0);

	}
}

 class Penguin    
 {   
 	int myX, myY, type;
 	Penguin(int z, int x, int y)
 	{
 		myX = x;
 		myY = y;
 		type = z;
 	}
 	void move()
 	{
 		if(mouseX > myX)
 			myX = myX + (int)(Math.random()*5)-1;
 		else
 			myX = myX + (int)(Math.random()*5)-3;
 		if(mouseY > myY)
 			myY = myY + (int)(Math.random()*5)-1;
 		else
 			myY = myY + (int)(Math.random()*5)-3;
 		
 	}
 	void show()
 	{

 		if(type==0){
 			//EMPEROR
 			//body
 			fill(0,0,0);
 			ellipse(myX,myY,50,75);
 			//tummy
 			fill(255,255,255);
 			ellipse(myX,myY+10,40,60);
 			//head
 			fill(255,255,0);
 			stroke(255,255,0);
 			ellipse(myX,myY-20,20,30);
 			stroke(0,0,0);
 			fill(0,0,0);
 			ellipse(myX,myY-25,30,30);
 			//eyes
 		    fill(255,255,255);
 			ellipse(myX+5,myY-25,10,10);
 			ellipse(myX-5,myY-25,10,10);
 			fill(0,0,0);
 			ellipse(myX+5,myY-25,3,3);
 			ellipse(myX-5,myY-25,3,3);
 			//beak
 			fill(255,255,0);
 			stroke(255,255,0);
 			beginShape();
 			vertex(myX,myY-12);
 			vertex(myX+2,myY-17);
 			vertex(myX-2,myY-17);
 			endShape(CLOSE);
 			stroke(0,0,0);
 			fill(0,0,0);
 			//wings
 		}else if(type == 1){
 			//ROCKHOPPER
 			//body
 			fill(0,0,0);
 			ellipse(myX,myY,35,60);
 			//tummy
 			fill(255,255,255);
 			ellipse(myX,myY+10,25,40);
 			//head
 			stroke(0,0,0);
 			fill(0,0,0);
 			ellipse(myX,myY-20,30,25);
 			//eyes
 			fill(255,255,255);
 			ellipse(myX+5,myY-20,10,10);
 			ellipse(myX-5,myY-20,10,10);
 			fill(0,0,0);
 			ellipse(myX+5,myY-20,3,3);
 			ellipse(myX-5,myY-20,3,3);
 			//beak
 			fill(255,165,0);
 			stroke(255,165,0);
 			beginShape();
 			vertex(myX,myY-7);
 			vertex(myX+2,myY-12);
 			vertex(myX-2,myY-12);
 			endShape(CLOSE);
 			stroke(0,0,0);
 			fill(0,0,0);
 			//brows
 				//left
		 			fill(255,255,0);
		 			stroke(255,255,0);
		 			beginShape();
		 			vertex(myX,myY-25);
		 			vertex(myX-20,myY-28);
		 			endShape(CLOSE);
		 			beginShape();
		 			vertex(myX-15,myY-26);
		 			vertex(myX-18,myY-20);
		 			endShape(CLOSE);
		 			beginShape();
		 			vertex(myX-15,myY-26);
		 			vertex(myX-18,myY-25);
		 			endShape(CLOSE);
		 			stroke(0,0,0);
		 			fill(0,0,0);
		 			beginShape();
		 			vertex(myX,myY-30);
		 			vertex(myX-20,myY-33);
		 			endShape(CLOSE);
		 			beginShape();
		 			vertex(myX,myY-28);
		 			vertex(myX-20,myY-30);
		 			endShape(CLOSE);
		 		//right
		 			fill(255,255,0);
		 			stroke(255,255,0);
		 			beginShape();
		 			vertex(myX,myY-25);
		 			vertex(myX+20,myY-28);
		 			endShape(CLOSE);
		 			beginShape();
		 			vertex(myX+15,myY-26);
		 			vertex(myX+18,myY-20);
		 			endShape(CLOSE);
		 			beginShape();
		 			vertex(myX+15,myY-26);
		 			vertex(myX+18,myY-25);
		 			endShape(CLOSE);
		 			stroke(0,0,0);
		 			fill(0,0,0);
		 			beginShape();
		 			vertex(myX,myY-30);
		 			vertex(myX+20,myY-33);
		 			endShape(CLOSE);
		 			beginShape();
		 			vertex(myX,myY-28);
		 			vertex(myX+20,myY-30);
		 			endShape(CLOSE);
 		}else if(type == 2){
 			//ADELIE
 			//body
 			fill(0,0,0);
 			ellipse(myX,myY,25,50);
 			//tummy
 			fill(255,255,255);
 			ellipse(myX,myY+10,15,30);
 			//head
 			stroke(0,0,0);
 			fill(0,0,0);
 			ellipse(myX,myY-15,20,15);
 			//eyes
 			stroke(255,255,255);
 			fill(255,255,255);
 			ellipse(myX+5,myY-15,7,7);
 			ellipse(myX-5,myY-15,7,7);
 			fill(0,0,0);
 			stroke(0,0,0);
 			ellipse(myX+5,myY-15,3,3);
 			ellipse(myX-5,myY-15,3,3);
 			//beak
 			fill(0,0,0);
 			stroke(255,165,0);
 			beginShape();
 			vertex(myX,myY-5);
 			vertex(myX+2,myY-10);
 			vertex(myX-2,myY-10);
 			endShape(CLOSE);
 			stroke(0,0,0);
 			fill(0,0,0);
 		}
 		
 	}
 	//lots of java!   
 }    