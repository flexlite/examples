package
{
	import org.flexlite.domUI.components.Rect;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class RectTest extends AppContainer
	{
		public function RectTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var rect:Rect = new Rect();
			rect.horizontalCenter = 0;
			rect.verticalCenter = 0;
			rect.percentHeight = rect.percentWidth = 90;
			rect.color = 0x009aff;
			rect.topLeftRadius = 10;
			rect.topRightRadius = 10;
			addElement(rect);
		}
	}
}