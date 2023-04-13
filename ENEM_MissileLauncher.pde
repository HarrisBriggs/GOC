class MissileLauncher extends Shooter {

    MissileLauncher(float x, float y) {
        super(x, y);
        wait = 3000;
        spriteColor = color(143, 20, 20);
    }

    void update() {
        PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        aim = aim.normalize().mult(6);

        if(millis() - mark > wait) {
            mark = millis();
            _SM.spawn(new Missile(pos, aim, team));
        }
    }
}