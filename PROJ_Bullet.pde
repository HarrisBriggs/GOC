class Bullet extends Sprite {

    Bullet(float x, float y, PVector velocity, int team) {
        super(x, y, 10, 10);
        spriteColor = color(247, 215, 96);
        vel = velocity;
        this.team = team;
    }

    Bullet(PVector pos, PVector vel, int team) {
        this(pos.x, pos.y, vel, team);
    }

    void update() {
        pos.add(vel);
    }
}