class Missile extends Sprite {

    long mark, wait = 500;
    PVector target;

    Missile(float x, float y, PVector velocity, int team) {
        super(x, y, 15, 15);
        spriteColor = color(201, 127, 22);
        vel = velocity;
        this.team = team;
        mark = millis();
        target = pos;
    }

    Missile(PVector pos, PVector vel, int team) {
        this(pos.x, pos.y, vel, team);
    }

    void update() {

        if(millis() - mark > wait) {
            mark = millis();
            PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
            aim = aim.normalize().mult(6);

            target = aim;
        }
        if(vel != target) {
            pos.lerp(target, 0.2);
        }
        pos.add(vel);
    }
}