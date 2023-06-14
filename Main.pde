ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
ArrayList<BUTTON> startGameButtons = new ArrayList<BUTTON>();
ArrayList<BUTTON> endGameButtons = new ArrayList<BUTTON>();

PImage menuImage, mainBgImage;
String playerName = "Player 1";

GameStatus status = GameStatus.START;

void setup() {
   size(700, 700); 
 
   createFields();
 
   menuImage = loadImage("assets/menu.png");
   mainBgImage = loadImage("assets/Timberman_BG.png");
}

void draw() {  
  if (this.status.equals(GameStatus.START)) {
    startGame();
  } else if (this.status.equals(GameStatus.GAME)) {
    game();
  } else if (this.status.equals(GameStatus.ENDGAME)) {
    endGame();
  }
  
  if (this.startGameButtons.get(0).clicked) {
     String name = this.textboxes.get(0).Text;
       
     if (name == "") {
       this.playerName = "Player 1";
     } else {
       this.playerName = name;
     }
     
     this.status = GameStatus.GAME;
  }
  
  if (this.endGameButtons.get(0).clicked) {
     this.status = GameStatus.START;
  }
}

void startGame() {
   image(menuImage, 0, 0);

   fill(93, 93, 93);
   noStroke();
   rect(200, 50, 300, 300);
   
   fill(0, 255, 0);
   textSize(50);
   text("TIMBERMAN", 220, 95);
   textSize(32);
   text("PLAYER NAME:", 250, 215);
   
   for (TEXTBOX t : textboxes) {
     t.DRAW();
   }
   
   for (BUTTON b : startGameButtons) {
     b.DRAW();
   }
}

void game() {
   image(mainBgImage, 0, 0);

   text("GAME", 350, 350);
}

void endGame() {
   background(93);
   fill(255, 0, 0);
   textAlign(CENTER);
   textSize(32);
   text("THE GAME OVER FOR YOU", 350, 250);
   textSize(60);
   text(this.playerName, 350, 310);
   textSize(32);
   text("15 points", 350, 415);
   
   textAlign(LEFT);
   
   for (BUTTON b : endGameButtons) {
     b.DRAW();
   }
}

void createFields() {
   TEXTBOX name = new TEXTBOX(220, 230, 260, 50);
   name.BorderEnable = true;
      
   this.textboxes.add(name);
  
   BUTTON startButton = new BUTTON(220, 290, 260, 50);
   startButton.ButtonText = "START GAME";
   startButton.BorderEnable = true;
   
   this.startGameButtons.add(startButton);
  
   BUTTON restartButton = new BUTTON(225, 450, 260, 50);
   restartButton.BorderEnable = true;
   restartButton.Border = color(255, 0, 0);
   restartButton.Background = color(255, 0, 0);
   restartButton.ButtonText = "PLAY AGAIN";
   
   this.endGameButtons.add(restartButton);
}

void mousePressed() {
   for (TEXTBOX t : textboxes) {
      t.PRESSED(mouseX, mouseY);
   }
   
   for (BUTTON b : startGameButtons) {
      b.PRESSED(mouseX, mouseY);
   }
   
   for (BUTTON b : endGameButtons) {
     b.PRESSED(mouseX, mouseY);
   }
}

void mouseReleased() {
   for (BUTTON b : startGameButtons) {
      b.RELEASED(mouseX, mouseY);
   }
   
   for (BUTTON b : endGameButtons) {
     b.RELEASED(mouseX, mouseY);
   }
}

void keyPressed() {
   for (TEXTBOX t : textboxes) {
      t.KEYPRESSED(key, (int)keyCode);
   }
}
