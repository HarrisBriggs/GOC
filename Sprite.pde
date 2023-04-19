class Sprite {

    PVector pos, vel, size;
    int team = 2;
    color spriteColor = color(255,255,255);
    
    Sprite(float x, float y, float w, float h) {
        pos = new PVector(x, y);
        vel = new PVector(0, 0);
        size = new PVector(w, h);
    }
    
    void update() {
    }
    
    void display() {
        fill(spriteColor);
        ellipse(pos.x, pos.y, size.x, size.y);
    }

    int getRelations(Sprite b) {
        if(team == -1 || b.team == -1) {
            return 1;
        }
        else if(team != b.team) {
            return 0;
        }
        else {
            return 1;
        }
    }
    
    void handleCollision() {
        _SM.destroy(this);
    }
}