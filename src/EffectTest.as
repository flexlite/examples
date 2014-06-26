package
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.effects.Move;
	import org.flexlite.domUI.effects.Scale;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * 
	 * @author dom
	 */
	public class EffectTest extends AppContainer
	{
		public function EffectTest()
		{
			super();
			this.stage.addEventListener(MouseEvent.CLICK,onMouseClick);
		}
		
		protected function onMouseClick(event:MouseEvent):void
		{
			scale.play();
		}
		
		private var scale:Scale = new Scale;
		
		override protected function createChildren():void
		{
			super.createChildren();
			var btn:Button = new Button;
			btn.height = 100;
			btn.width = 100;
			btn.horizontalCenter = -105;
			btn.verticalCenter = 0;
			addElement(btn);
			var btn2:Button = new Button;
			btn2.height = 100;
			btn2.width = 100;
			btn2.horizontalCenter = 105;
			btn2.verticalCenter = 0;
			addElement(btn2);
			
			scale.scaleXFrom = 1;
			scale.scaleYFrom = 1;
			scale.scaleXTo = 2;
			scale.scaleYTo = 2;
			scale.targets = [btn,btn2];
		}
	}
}