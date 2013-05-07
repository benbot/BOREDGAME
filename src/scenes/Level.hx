package scenes;

import com.haxepunk.HXP;
import com.haxepunk.Scene;
import entities.BoxSpawner;
import com.haxepunk.graphics.Text;

class Level extends Scene
{
        var time:Float;
        var counter:Text;


        public function new() 
        {
                super();
                add(new BoxSpawner(0, HXP.halfHeight));
                add(new BoxSpawner(HXP.width, HXP.halfHeight));
                counter = new Text("");
                addGraphic(counter, 0, 0, 0);

                time = 0;
        }

        public override function update()
        {
                super.update();
                time += HXP.elapsed;
                Math.floor(time);
                counter.text = ("TIME: " + time);
        }
}
