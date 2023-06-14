ArrayList<TEXTBOX> textboxes = new ArrayList<TEXTBOX>();
ArrayList<BUTTON> buttons = new ArrayList<BUTTON>();

String playerName = "";

Boolean status = false;

Menu menu;

void setup() {
  size(700, 700); 
  
  this.menu = new Menu(this.textboxes, this.buttons, this.playerName, this.status);
}

void draw() {  
  if (this.status == false) {
    this.menu.DRAW();
  }
}

void mousePressed() {
   for (TEXTBOX t : textboxes) {
      t.PRESSED(mouseX, mouseY);
   }
   
   for (BUTTON b : buttons) {
      b.PRESSED(mouseX, mouseY);
   }
}

void mouseReleased() {
   for (BUTTON b : buttons) {
      b.RELEASED(mouseX, mouseY);
   }
}

void keyPressed() {
   for (TEXTBOX t : textboxes) {
      t.KEYPRESSED(key, (int)keyCode);
   }
}
