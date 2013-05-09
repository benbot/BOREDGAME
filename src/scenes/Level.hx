package scenes;

import com.haxepunk.HXP;
import com.haxepunk.Scene;
import com.haxepunk.graphics.Text;
import com.haxepunk.math.Vector;
import entities.BoxSpawner;
import entities.GetBoxSpawner;


class Level extends Scene
{
        public var score:Int;
        var counter:Text;

        public function new() 
        {
                super();
                add(new BoxSpawner(0, HXP.halfHeight));

                add(new GetBoxSpawner(new Vector(HXP.halfWidth / 2, HXP.halfHeight / 2)));
                add(new GetBoxSpawner(new Vector(HXP.halfWidth + HXP.halfWidth / 2, HXP.halfHeight + HXP.halfHeight / 2)));
                add(new GetBoxSpawner(new Vector(HXP.halfWidth + HXP.halfWidth / 2, HXP.halfHeight / 4)));
                add(new GetBoxSpawner(new Vector(HXP.halfWidth / 4, HXP.halfHeight + HXP.halfHeight / 2)));

                add(new BoxSpawner(HXP.width, HXP.halfHeight));
                counter = new Text("");
                addGraphic(counter, 0, 0, 0);

                score = 0;
        }

        public override function update()
        {
                super.update();
                counter.text = ("SCORE: " + score);
        }
}
