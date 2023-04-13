class Player extends Sprite {

    boolean left, right, up, down;

    Player(float x, float y) {
        super(x, y, 40, 40);
        team = 1;
    }

    void update() {
        float speed = 2.0;
        if (left)  vel.add(new PVector( -speed, 0));
        if (right) vel.add(new PVector(speed, 0));
        if (up)    vel.add(new PVector(0, -speed));
        if (down)  vel.add(new PVector(0, speed));
        // update the position by velocity
        pos.add(vel);

        //fix bounds
        if(pos.x < 0 + size.x/2) pos.x = size.x/2;
        if(pos.x > width - size.x/2) pos.x = width - size.x/2;
        if(pos.y < 0 + size.y/2) pos.y = size.y/2;
        if(pos.y > height - size.y/2) pos.y = height-size.y/2;

        // always try to decelerate
        vel.mult(0.8);
    }

    void keyUp() {
        switch(key) {
            case 'w':
            case 'W': up = false; break;
            case 'a':
            case 'A': left = false; break;
            case 's':
            case 'S': down = false; break;
            case 'd':
            case 'D': right = false; break;
        }
    }

    void keyDown() {
        switch(key) {
            case 'w':
            case 'W': up = true; break;
            case 'a':
            case 'A': left = true; break;
            case 's':
            case 'S': down = true; break;
            case 'd':
            case 'D': right = true; break;
        }
    }

    void handleCollision() {

    }
}