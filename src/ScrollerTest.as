package
{
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.Group;
	import org.flexlite.domUI.components.Scroller;
	import org.flexlite.domUI.layouts.HorizontalAlign;
	import org.flexlite.domUI.layouts.TileLayout;
	import org.flexlite.domUI.layouts.TileOrientation;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * 滚动条测试
	 * @author DOM
	 */
	public class ScrollerTest extends AppContainer
	{
		public function ScrollerTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var scroller:Scroller = new Scroller;
			scroller.width = 300;
			scroller.height = 330;
//			scroller.verticalScrollPolicy = ScrollPolicy.OFF;
			addElement(scroller);
			
			var g:Group = new Group;
			var layout:TileLayout = new TileLayout;
			layout.orientation = TileOrientation.COLUMNS;
			layout.horizontalAlign = HorizontalAlign.CENTER;
//			layout.paddingLeft = 300;
//			layout.paddingRight = 300;
//			layout.paddingBottom = 300;
//			layout.paddingTop = 300;
			g.layout = layout;
			scroller.viewport = g;
			var btn:Button = new Button;
			btn.width = 100;
			btn.height = 300;
			g.addElement(btn);
			var btn2:Button = new Button;
			btn2.width = 400;
			btn2.height = 300;
			g.addElement(btn2);
			var btn3:Button = new Button;
			btn3.width = 400;
			btn3.height = 300;
			g.addElement(btn3);
		}
	}
}