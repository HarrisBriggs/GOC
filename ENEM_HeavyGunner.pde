class HeavyGunner extends Invader {

    long mark, ammoMark, wait = 70, ammoWait = 2000;
    // Shoots for a while and then has to reload
    int shots, ammo = 20;

    HeavyGunner(float x, float y) {
        super(x, y);
        spriteColor = color(21, 107, 44);
        mark = millis();
        ammoMark = mark;
    }

    void update() {
        super.update();

        if(shots == ammo) {
            if(millis() >= (ammoMark + 1500)) {
                shots = 0;
            }
        }
        else {
            PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
            aim = aim.normalize().mult(8);
            // random degree spread
            aim.rotate(radians(int(random(-10,10))));

            if(millis() - mark > wait) {
                mark = millis();
                _SM.spawn(new Bullet(pos, aim, team));
                shots++;
                if(shots == ammo)
                    ammoMark = millis();
            }
        }
    }
}