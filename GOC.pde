SpriteManager _SM;
/*
long _Tick;
int _lastTickTime;
*/

void setup() {
    //_lastTickTime = 0;
    size(1024, 768);
    _SM = new SpriteManager();
    _SM.spawn(new Invader(250,50));
    _SM.spawn(new Shooter(150,100));
    _SM.spawn(new MissileLauncher(350,150));
}

//Always runs at the speed of the framerate
void draw() {
    /*
    int tick_duration = 15;

    int current_time = millis();
    if(current_time >= (_lastTickTime + tick_duration)) {
        _Tick++;
        _lastTickTime = current_time;
    }
    String s = String.valueOf(_Tick);
    text(s, 10, 28);
    */
    background(0);
    _SM.manage();
}

void keyPressed() { // Event: a key was pressed
    _SM.player.keyDown();
}

void keyReleased() { // Event: a key was released
    _SM.player.keyUp();
}