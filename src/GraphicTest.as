package
{
	import org.flexlite.domUI.primitives.Ellipse;
	import org.flexlite.domUI.primitives.Rect;
	import org.flexlite.domUI.primitives.graphic.SolidColor;
	import org.flexlite.domUI.primitives.graphic.SolidColorStroke;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * 绘图元素测试
	 * @author DOM
	 */
	public class GraphicTest extends AppContainer
	{
		public function GraphicTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var rect:Rect = new Rect;
			rect.fill = new SolidColor(0x009aff);
			rect.radiusX = 5;
			rect.width = rect.height = 150;
			addElement(rect);
			
			
			var e:Ellipse = new Ellipse;
			e.fill = new SolidColor(0x009aff);
			e.stroke = new SolidColorStroke(0xFF0000);
			e.width = e.height = 200;
			e.horizontalCenter = e.verticalCenter = 0;
			e.scaleX = 2;
			addElement(e);
		}
	}
}