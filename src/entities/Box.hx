package entities;

import com.haxepunk.HXP;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.math.Vector;
//import scenes.GameOver;

class Box extends Entity
{
        var targetX:Int;
        var targetY:Int;
        var direction:Vector; 
        var deltaTime:Float;

        public function new(x:Float, y:Float, targetX:Int, targetY:Int) 
        {
                super(x, y);

                graphic = Image.createRect(50, 50, 0xdead);
                setHitbox(51, 51, -1, -1);

                this.targetX = targetX;
                this.targetY = targetY;

                type = "box";

                deltaTime = 0;
        }

        public override function update()
        {
                super.update();

                var mouseX:Int = Input.mouseX;
                var mouseY:Int = Input.mouseY;
                direction = new Vector(targetX, targetY);

                direction.x = (direction.x - x) / distanceToPoint(targetX, targetY);
                direction.y = (direction.y - y) / distanceToPoint(targetX, targetY);

                x += 100 * HXP.elapsed * direction.x;
                y += 100 * HXP.elapsed * direction.y;

                deltaTime += HXP.elapsed;
                if(deltaTime >= 3.5)
                {
                        HXP.scene.remove(this);
                }
                if(collidePoint(x, y, mouseX, mouseY))
                {
                        trace("YOU LOSE SUCKAH");
                }

        }

}
