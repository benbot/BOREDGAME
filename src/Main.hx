import com.haxepunk.Engine;
import com.haxepunk.HXP;
import scenes.Level;

class Main extends Engine
{

	override public function init()
	{
#if debug
		HXP.console.enable();
#end
                HXP.scene = new Level();
	}

	public static function main() { new Main(); }

}
