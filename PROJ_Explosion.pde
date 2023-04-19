class Explosion extends Sprite {

    long initTick, fadeTime, fadeMark;

    Explosion(float x, float y, int team, int size, int fadeOut) {
        super(x, y, size, size);
        spriteColor = color(201, 127, 22, 255);
        this.team = team;
        fadeTime = fadeOut;
        initTick = millis();
        fadeMark = initTick;
    }

    void update() {

        if(millis() >= (fadeMark + (fadeTime / 255))) {
            fadeMark = millis();
            spriteColor = color(red(spriteColor), green(spriteColor), blue(spriteColor), alpha(spriteColor) - 1);
        }

        if(millis() >= (initTick + 50)) {
            // Stops colliding after initial explosion
            team = -1;
        }

        if(millis() >= (initTick + fadeTime)) {
            _SM.destroy(this);
        }
    }

    void handleCollision() {

    }
}