// Has a shotgun and throws grenades
class Enforcer extends Invader {

    long mark, wait = 2500;

    Enforcer(float x, float y) {
        super(x, y);
        spriteColor = color(126, 137, 143);
        mark = millis();
    }

    void update() {
        super.update();

        if(millis() - mark > wait) {
            for(int i = 0; i < 6; i++) {
                PVector aim = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
                aim = aim.normalize().mult(8);
                aim.rotate(radians(int(random(-35,35))));

                mark = millis();
                _SM.spawn(new Bullet(pos, aim, team));
            }
        }
    }
}