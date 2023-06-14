public class Menu {
  ArrayList<TEXTBOX> textboxes;
  ArrayList<BUTTON> buttons;
  String playerName;  
  PImage menuImage;
  Boolean status;
  
  Menu(ArrayList<TEXTBOX> textboxes, ArrayList<BUTTON> buttons, String playerName, Boolean status) {
     this.textboxes = textboxes;
     this.buttons = buttons;
     this.playerName = playerName;
     this.status = status;
     
     TEXTBOX name = new TEXTBOX(220, 230, 260, 50);
     name.BorderEnable = true;
          
     this.textboxes.add(name);

     BUTTON startButton = new BUTTON(220, 290, 260, 50);
     startButton.ButtonText = "START GAME";
     startButton.BorderEnable = true;
     
     this.buttons.add(startButton);
    
     menuImage = loadImage("assets/menu.png");
  }

   void DRAW() {
     image(menuImage, 0, 0);

     fill(93, 93, 93);
     noStroke();
     rect(200, 50, 300, 300);
     
     fill(0, 255, 0);
     textSize(50);
     text("TIMBERMAN", 220, 95);
     textSize(32);
     text("PLAYER NAME:", 250, 215);
      
     if (this.buttons.get(0).clicked) {
       String name = this.textboxes.get(0).Text;
       
       if (name == "") {
         this.playerName = "Player 1";
       } else {
         this.playerName = name;
       }
        
       background(93);
       text(this.playerName, 350, 350);
       this.status = true;
       System.out.println("sadsa" + this.status); 
     }
      
     for (TEXTBOX t : textboxes) {
       t.DRAW();
     }
  
     for (BUTTON b : buttons) {
       b.DRAW();
     }
   } 
}

