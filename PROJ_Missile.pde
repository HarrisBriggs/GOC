class Missile extends Sprite {

    long mark, wait = 50;
    // Missile explodes after some number time
    long initTick, timer = 2500;

    Missile(float x, float y, PVector velocity, int team) {
        super(x, y, 15, 15);
        spriteColor = color(201, 127, 22);
        vel = velocity;
        this.team = team;
        mark = millis();
        initTick = millis();
    }

    Missile(PVector pos, PVector vel, int team) {
        this(pos.x, pos.y, vel, team);
    }

    void explode() {
        _SM.destroy(this);
        _SM.spawn(new Explosion(pos.x, pos.y, team, 75, 1000));
    }

    void update() {

        if(millis() >= (initTick + timer)) {
            explode();
        }

        if(millis() - mark > wait) {
            mark = millis();
            PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
            // The missile can only turn a maximum of 35 degrees ahead of it in a single update- the player can escape the missile if they dodge it closely
            if(degrees(PVector.angleBetween(vel, aim)) < 35.0) {
                vel = aim.normalize().mult(7);
            }
        }

        pos.add(vel);
    }
}