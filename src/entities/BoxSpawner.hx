package entities;

import com.haxepunk.utils.Input;
import com.haxepunk.HXP;
import com.haxepunk.Entity;

class BoxSpawner extends Entity
{
        var mouseX:Int;
        var mouseY:Int;

        public function new(x:Float, y:Float) 
        {
                super(x, y);
        }

        public override function update()
        {
                super.update();
                mouseX = Input.mouseX;
                mouseY = Input.mouseY;
                var tempBox:Box = new Box(x, y, mouseX, mouseY);
                HXP.scene.add(tempBox);
        }
}
