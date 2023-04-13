class Invader extends Sprite {

    Invader(float x, float y) {
        super(x, y, 40, 40);
        vel = new PVector(5, 0);
        spriteColor = color(235, 102, 56);
    }

    void update() {
        pos.add(vel);

        if(pos.x < 0 || pos.x > width) {
            vel.x *= -1;
        }
    }
}