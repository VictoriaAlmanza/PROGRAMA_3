PImage m1;
PImage m2;
PImage m3;
PImage m4;
PImage m5;
PImage m6;
PImage p1;
PImage f1;
int pantalla = 0;
PFont font1;

mafiosos a;
mafiosos b;
mafiosos c;
mafiosos d;
mafiosos e;
mafiosos f;
mafiosos j1;
mafiosos j2;

int jugador1;
int jugador2;
int turno = 0;
int vida = 1000;

class mafiosos { 
   String nombre;
  int vida;
  int golpe;
  int personaje;
   mafiosos (String nombre_, int vida_, int golpe_,  int personaje_){
    nombre = nombre_;
    vida = vida_;
    golpe = golpe_;
    personaje = personaje_;
  }
   
}

void a (){

  m1 = loadImage("BANDERILLA.png");
 
}

void b (){ 
 m2 = loadImage("HAMBURGUESA.png"); 
 
}


void c (){
m3 = loadImage("HOT DOG.png");

}

void d() { 
m4 = loadImage("PAPA.png");
}

void e() { 
m5 = loadImage("PIZZA.png");
}

void f() {
m6 = loadImage("EL DON.png");  
}

 void setup (){ 
  size (800, 600);
  p1 = loadImage("PORTADA.jpg");
f1 = loadImage("fondo1.jpg");
m1 = loadImage("BANDERILLA.png");
m2 = loadImage("HAMBURGUESA.png");
m3 = loadImage("HOT DOG.png");
m4 = loadImage("PAPA.png");
m5 = loadImage("PIZZA.png");
m6 = loadImage("EL DON.png");   

    a = new mafiosos("BANDERILLA",100,8,0);
    b = new mafiosos("HAMBURGUESA",100,6,1);
    c = new mafiosos("HOT DOG",100,7,2);
    d = new mafiosos("PAPA",100,6,3);
    e = new mafiosos("PAPA",100,7,4);
    f = new mafiosos("EL DON",100,8,4);
 }
 
 
void draw (){ 
 switch (pantalla){
     case 0:

 p1 = loadImage("PORTADA.jpg");
 image(p1, 0 , 0);
 
 textFont (font1, 40);
     fill(255,255,255);
     text("Presiona ENTER para comenzar la batalla", 50,500);
    
    
       if (keyPressed){
       if (key==ENTER);
       pantalla = 1;
      
}
break;

  case 1:
     f1 = loadImage("FONDO1.jpg");
     image(f1 , 0 , 0);
     
     textFont (font1, 80);
     text("Instrucciones", 170,120);
     fill (random (0));
     
     textFont (font1, 40);
     fill (random (255));
     text ("Jugador 1", 115, 230);
     
     textFont (font1, 40);
     fill (random (255));
     text ("Jugador 2", 565, 230);
     
     textFont (font1, 40);
     fill (255);
     text ("Ataca con tecla A", 45, 290);
     
     textFont (font1, 40);
     fill (255);
     text ("Ataca con tecla J", 485, 290);
     
     textFont (font1, 40);
     fill (random (112,153));
     text ("Da Click a la pantalla para continuar", 100, 530);
     
     
     if (mousePressed){
         pantalla = 2;
       }
       break;
       
       case 2: 
     f1 = loadImage("FONDO1.jpg");
     image(f1 , 0 , 0);
     textSize(100);
     fill(random (112,153));
     text("QUE", 310,120);
     textSize(100);
     fill(random (112,153));
     text("GANE", 310,250);
      textSize(100);
     fill(random (112,153));
     text("EL", 310,370);
     textSize(100);
     fill(random (112,153));
     text("MEJOR", 310,490);
     textSize (30);
     fill (255);
     text ("Presiona ENTER para seleccionar tu mafioso", 300, 550);
           
        if (keyPressed){
          if (key== ENTER);
         pantalla = 3;
       }
       break;
       
       case 3:
     background (#070621);
     fill(#01040A);
     noStroke();
     ellipse(190,130,200,200);
     fill(#070621);
     noStroke();
     ellipse(380,280,200,200);
     fill(#070621);
     noStroke();
     ellipse(190,430,200,200);
        fill(#070621);
     noStroke();
     ellipse(1050,130,200,200);
     fill(#070621);
     noStroke();
     ellipse(830,280,200,200);
     fill(#070621);
     noStroke();
     ellipse(1050,430,200,200);
     textSize (40);
     fill (255);
     text ("¡Elige a tu mafioso!", 270, 550);
     textSize (40);
     fill (255);
     text ("1", 175, 210);  
     textSize (40);
     fill (255);
     text ("2", 370, 360);
      textSize (40);
     fill (255);
     text ("3", 175, 520);
       textSize (40);
     fill (255);
     text ("4", 1040, 210);
       textSize (40);
     fill (255);
     text ("5", 820, 360);
       textSize (40);
     fill (255);
     text ("6", 1040, 520);
     
     pushMatrix();
     translate(-3,12);
     scale(.5);
     a();
     popMatrix();
     
     pushMatrix ();
     translate (175, 160);
     scale (.5);
     b();
     popMatrix();
        
     pushMatrix();
     translate (-5, 320);
     scale (.5);  
     c();
     popMatrix();
     
     pushMatrix();
     translate (885, 12);
     scale (.5);
     d();
     popMatrix();
        
     pushMatrix();
     translate (655, 190);
     scale (.5);
     e();
     popMatrix();
     
     pushMatrix();
     translate (850, 320);
     scale (.5);
     f();
     popMatrix();
        
        
  if(keyPressed){
      if(key == '1'){
      j1 = a;
      jugador1 = 0;
      pantalla = 4;
      }
      }
      
  if(keyPressed){
      if(key == '2'){
      j1 = b;
      jugador1 = 1;
      pantalla = 4;
      }
      }
      
  if(keyPressed){
      if(key == '3'){
      j1 = c;
      jugador1 = 2;
      pantalla = 4;
      }
      }
      
      if(keyPressed){
      if(key == '4'){
      j1 = d;
      jugador1 = 3;
      pantalla = 4;
      }
      }
      
      
      if(keyPressed){
      if(key == '5'){
      j1 = e;
      jugador1 = 4;
      pantalla = 4;
      }
      }
      
      if(keyPressed){
      if(key == '6'){
      j1 = f;
      jugador1 = 5;
      pantalla = 4;
      }
      }
     
   break;
  
    
    
    case 4:
    background (#2A1B46);
     fill(#4137A0);
     noStroke();
     ellipse(190,130,200,200);
     fill(#4137A0);
     noStroke();
     ellipse(380,280,200,200);
     fill(#4137A0);
     noStroke();
     ellipse(190,430,200,200);
     fill(#4137A0);
     noStroke();
     ellipse(1050,130,200,200);
     fill(#4137A0);
     noStroke();
     ellipse(830,280,200,200);
     fill(#4137A0);
     noStroke();
     ellipse(1050,430,200,200);
     textSize (40);
     fill (255);
     text ("¡Escoge tu mafioso para combatir!", 270, 550);
     textSize (40);
     fill (255);
     text ("z", 175, 210);  
     textSize (40);
     fill (255);
     text ("x", 370, 360);
      textSize (40);
     fill (255);
     text ("c", 175, 520);
       textSize (40);
     fill (255);
     text ("v", 1040, 210);
       textSize (40);
     fill (255);
     text ("b", 820, 360);
       textSize (40);
     fill (255);
     text ("n", 1040, 520);
     
     pushMatrix();
     translate(-3,12);
     scale(.5);
     a();
     popMatrix();
     
     pushMatrix ();
     translate (175, 160);
     scale (.5);
     b();
     popMatrix();
        
     pushMatrix();
     translate (-5, 320);
     scale (.5);  
     c();
     popMatrix();
     
     pushMatrix();
     translate (885, 12);
     scale (.5);
     d();
     popMatrix();
        
     pushMatrix();
     translate (655, 190);
     scale (.5);
     e();
     popMatrix();
     
     pushMatrix();
     translate (850, 320);
     scale (.5);
     f();
     popMatrix();
        
        
  if(keyPressed){
      if(key == 'z'){
      j2 = a;
      jugador2 = 0;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'x'){
      j2 = b;
      jugador2 = 1;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'c'){
      j2 = c;
      jugador2 = 2;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'v'){
      j2 = d;
      jugador2 = 3;
      pantalla = 5;
      }
      }
      
      
  if(keyPressed){
      if(key == 'b'){
      j2 = e;
      jugador2 = 4;
      pantalla = 5;
      }
      }
      
  if(keyPressed){
      if(key == 'n'){
      j2 = f;
      jugador2 = 5;
      pantalla = 5;
      }
      }
     
   break;


  case 5:
  
  
  background (#4137A0);
  fill (255);
  ellipse (250,350, 350, 350);
   fill (255);
  ellipse (950,350, 350, 350);
   textSize(25);
  fill(0);   
  text("Jugador 1",70,95);
   textSize(25);
  fill(0);   
  text("Jugador 2",720,95);
  
  
  
  
  if(jugador1 == 0){
    pushMatrix();
    translate(-130,150);
    scale(1);
    a();
    popMatrix();
    }
    
  if(jugador1 == 1){
    pushMatrix();
    translate(-160,140);
    scale(1);
    b();
    popMatrix();
    }
    
  if(jugador1 == 2){
    pushMatrix();
    translate(-150,150);
    scale(1);
    c();
    popMatrix();
    }
    
  if(jugador1 == 3){
    pushMatrix();
    translate(-80,150);
    scale(1);
    d();
    popMatrix();
    }
  
  if(jugador1 == 4){
    pushMatrix();
    translate(-100,180);
    scale(1);
    e();
    popMatrix();
    }
    
  if(jugador1 == 5){
    pushMatrix();
    translate(-160,150);
    scale(1);
    f();
    popMatrix();
    }
 
 
    if(jugador2 == 0){
    pushMatrix();
    translate(550,150);
    scale(1);
    a();
    popMatrix();
    }
    
  if(jugador2 == 1){
    pushMatrix();
    translate(540,140);
    scale(1);
    b();
    popMatrix();
    }
    
  if(jugador2 == 2){
    pushMatrix();
    translate(550,140);
    scale(1);
    c();
    popMatrix();
    }
    
  if(jugador2 == 3){
    pushMatrix();
    translate(620,150);
    scale(1);
    d();
    popMatrix();
    }
  
  if(jugador2 == 4){
    pushMatrix();
    translate(600,180);
    scale(1);
    e();
    popMatrix();
    }
    
  if(jugador2 == 5){
    pushMatrix();
    translate(540,150);
    scale(1);
    f();
    popMatrix();
    }
    
    
    if(turno == 0){
    if(keyPressed){
      if(key == 'a'){
      j2.vida= j2.vida - j1.golpe;
      turno = 1;
      }
      
      else if(key == 'j'){
      j1.vida = j1.vida - j2.golpe;
      turno = 1;
      }
      
      if(j2.vida <= 0){
      pantalla = 6;
      }
      }
      }
  
    if(turno == 1){
    if(keyPressed){
      if(key == 'a'){
      j1.vida = j1.vida - j2.golpe;
      turno= 0 ;

      }
      else if(key == 'j'){
      j1.vida = j1.vida - j2.golpe;
      turno = 0;

      }
      if(j1.vida <= 0){
      pantalla = 6;
      }
    }
    
    
    if (keyPressed){
          if (key == ENTER);
         pantalla = 6;
       }
    }
       break;
  

case 6:
background(#070621);
fill(#4137A0);
     noStroke();
     ellipse(600,300,800,800);
      textSize (100);
     fill (random (255));
     text ("¡ERES EL JEFE!", 330, 250);
      // textSize (65);
     //fill (255);
     //text ("Jugador 1", 450, 360);
     textSize (30);
     fill (#9D081E);
     
     
     text ("Presiona BACKSPACE para regresar al menú principal", 210, 480);
    
     }

 }