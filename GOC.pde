//Don't initialize here
SpriteManager _SM;

//This function runs one time at the beginning
void setup() {
    //Window size (800 x 600)
    size(800, 600);
    _SM = new SpriteManager();
    _SM.spawn(new Invader(250,50));
}

//Always runs at the speed of the framerate
void draw() {
    background(0);
    _SM.manage();
}

void keyPressed() { // Event: a key was pressed
    _SM.player.keyDown();
}

void keyReleased() { // Event: a key was released
    _SM.player.keyUp();
}