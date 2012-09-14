package
{
	import org.flexlite.domUI.components.Image;
	import org.flexlite.domUI.primitives.graphic.BitmapFillMode;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * Image测试
	 * @author DOM
	 */	
	public class ImageTest extends AppContainer
	{
		public function ImageTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var image:Image = new Image;
			image.source = "Default.png";
			image.fillMode = BitmapFillMode.REPEAT;
			image.percentHeight = 100;
			image.percentWidth = 100;
			
			addElement(image);
		}
	}
}