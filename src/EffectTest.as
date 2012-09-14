package
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.effects.Move;
	import org.flexlite.domUI.effects.Scale;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * 
	 * @author DOM
	 */
	public class EffectTest extends AppContainer
	{
		public function EffectTest()
		{
			super();
			this.stage.addEventListener(MouseEvent.CLICK,onMouseClick);
		}
		
		private var double:Boolean = false;
		protected function onMouseClick(event:MouseEvent):void
		{
			double = double?false:true;
			if(double)
			{
				scale.play();
			}
			else
			{
				scale.reverse();
			}
		}
		
		private var move:Move = new Move;
		
		private var scale:Scale = new Scale;
		
		override protected function init():void
		{
			var btn:Button = new Button;
			btn.x = 200;
			btn.y = 200;
			addElement(btn);
			var btn2:Button = new Button;
			btn2.x = 300;
			btn2.y = 200;
			addElement(btn2);
			move.targets = [btn,btn2];
			
			move.xBy = 200;
			move.yBy = 150;
			
			
			scale.scaleXFrom = 1;
			scale.scaleYFrom = 1;
			scale.scaleXTo = 2;
			scale.scaleYTo = 2;
			scale.targets = [btn,btn2];
		}
	}
}