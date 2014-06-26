package
{
	import flash.display.StageQuality;
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Rect;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * 
	 * @author dom
	 */
	public class RectTest extends AppContainer
	{
		public function RectTest()
		{
			super();
			stage.quality = StageQuality.BEST;
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			var rect:Rect = new Rect();
			rect.horizontalCenter = 0;
			rect.verticalCenter = 0;
			rect.percentHeight = rect.percentWidth = 90;
			rect.fillColor = 0x009aff;
			rect.topLeftRadius = 10;
			rect.topRightRadius = 10;
			rect.strokeAlpha = 1;
			rect.strokeWeight = 2;
			rect.addEventListener(MouseEvent.CLICK,onClick);
			addElement(rect);
		}
		
		protected function onClick(event:MouseEvent):void
		{
			trace("click");
		}
	}
}