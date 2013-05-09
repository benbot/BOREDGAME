package entities;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.utils.Imput;
import com.haxepunk.graphics.Image;
import scenes.Level;

class GetBox extends Entity 
{

        public function new(x:Float, y:Float)
        {
                super(x, y, Image.createRect(10, 10, 0x00FFFF));
        }
        
        public override function update()
        {
                super.update();

                if(collidePoint(x, y, Input.mouseX, Input.mouseY))
                {
                        cast(HXP.scene, Level).score++;
                        HXP.scene.remove(this);
                }
        }
}
