class Player extends Sprite {

    boolean left, right, up, down;
    float speed = 1.2;

    Player(float x, float y) {
        super(x, y, 40, 40);
        team = 1;
    }

    void update() {
        if(up) vel.add(new PVector(0, -speed));
        if(left) vel.add(new PVector(-speed, 0));
        if(right) vel.add(new PVector(speed, 0));
        if(down) vel.add(new PVector(0, speed));

        pos.add(vel);

        // Decelerate
        vel.mult(0.9);
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
}