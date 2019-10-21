 Penguin alice;
 Penguin[] picchy;
 void setup()   
 {     
 	//initialize bacteria variables here 
 	//int t = 0;
 	size(600,600);
	alice = new Penguin(1,100,100); 
	picchy = new Penguin[10];
	for(int i = 0; i < picchy.length; i++){
		//t = (int)(Math.random()*0)(int)(Math.random()*0);
		picchy[i]= new Penguin((int)(Math.random()*1),300,300);
	} 
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 	background(192);
 	alice.show();
 	alice.move();
	for(int i = 0; i < picchy.length; i++){
		picchy[i].show();
		picchy[i].move();
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
 		myX = myX + (int)(Math.random()*3)-1;
 		myY = myY + (int)(Math.random()*3)-1;
 		
 	}
 	void show()
 	{
 		//type 0 = emperor
 		//type 1 = rockhopper
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
 			fill(255,165,0);
 			stroke(255,165,0);
 			beginShape();
 			vertex(myX,myY-25);
 			vertex(myX-20,myY-28);
 			endShape(CLOSE);
 			stroke(0,0,0);
 			fill(0,0,0);
 			beginShape();
 			vertex(myX,myY-30);
 			vertex(myX-20,myY-33);
 			endShape(CLOSE);
 			beginShape();
 			vertex(myX,myY-28);
 			vertex(myX-20,myY-33);
 			endShape(CLOSE);
 		}
 		
 	}
 	//lots of java!   
 }    