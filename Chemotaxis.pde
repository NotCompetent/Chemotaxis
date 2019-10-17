 Penguin alice;
 void setup()   
 {     
 	//initialize bacteria variables here 
 	size(600,600);
	alice = new Penguin(0);  
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(192);
 	alice.show();
 	alice.move();
 }  
 
 class Penguin    
 {   
 	int myX, myY, type;
 	Penguin(int z)
 	{
 		myX = 100;
 		myY = 100;
 		type = z;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 	}
 	void show()
 	{
 		//type 0 = emperor
 		if(type==0){
 			//body
 			fill(0,0,0);
 			ellipse(myX,myY,50,75);
 			//tummy
 			fill(255,255,255);
 			ellipse(myX,myY+10,40,60);
 			//head
 			fill(255,255,153);
 			stroke(255,255,153);
 			ellipse(myX,myY-15,20,30);
 			stroke(0,0,0);
 			fill(0,0,0);
 			ellipse(myX,myY-20,30,30);
 			//eyes
 			fill(255,255,255);
 			ellipse(myX+5,myY-20,10,10);
 			//beak
 			//wings
 		}//else
 		/*
 		//body
 		fill(0,0,0);
 		ellipse(myX,myY,50,75);
 		//tummy
 		fill(255,255,255);
 		ellipse(myX,myY+10,40,55);
 		//eyes
 		//beak
 		//wings
 		*/
 	}
 	//lots of java!   
 }    