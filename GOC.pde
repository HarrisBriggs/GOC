//Don't initialize here
Sprite s;

//This function runs one time at the beginning
void setup() {
    //Window size (800 x 600)
    size(800, 600);
    s = new Sprite(width/2, height/2, 50, 50);
}

//Always runs at the speed of the framerate
void draw() {
    //A circle that follows the mouse, 50x50 width x height
    s.update();
    s.display();
}