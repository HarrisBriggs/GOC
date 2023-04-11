class Invader extends Sprite {

    Invader(int x, int y) {
        super(x, y, 40, 40);
        vel = new PVector(5, 0);
    }

    void update() {
        pos.add(vel);

        if(pos.x < 0 || pos.x > width) {
            vel.x *= -1;
        }
    }
}