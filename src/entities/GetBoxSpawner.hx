package entities;

import com.haxepunk.HXP;
import com.haxepunk.Entity;
import com.haxepunk.utils.Input;
import com.haxepunk.math.Vector;
import entities.GetBox;

class GetBoxSpawner extends Entity
{
        private var spawnPoint:Vector;
        private var deltaTime:Float;
        private var spawnTime:Float;

        public function new(spawn:Vector) 
        {
                super(0, 0);
                deltaTime = 0.0;
                spawnTime = 2;
                spawnPoint = spawn;
        }
        
        public override function update()
        {
                super.update();

                if(deltaTime >= spawnTime && Math.random() * 10 >= 5)
                {
                        HXP.scene.add(new GetBox(spawnPoint.x, spawnPoint.y));
                        deltaTime = 0;
                }

                deltaTime += HXP.elapsed;
        }
}
