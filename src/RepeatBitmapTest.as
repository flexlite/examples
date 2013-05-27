package
{
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	import org.flexlite.domDisplay.RepeatBitmap;
	import org.flexlite.domUI.components.UIAsset;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class RepeatBitmapTest extends AppContainer
	{
		public function RepeatBitmapTest()
		{
			super();
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onComp);
			loader.load(new URLRequest("Default.png"));
			stage.addEventListener(Event.RESIZE,onResize);
		}
		
		private function onComp(event:Event):void
		{
			var bitmapData:BitmapData = event.target.loader.content.bitmapData;
			var ui:UIAsset = new UIAsset();
			var bitmap:RepeatBitmap = new RepeatBitmap(null,graphics);
			bitmap.bitmapData = bitmapData;
			ui.skinName = bitmap;
			addElement(ui);
			ui.percentHeight = ui.percentWidth = 100;
		}
		
		private function onResize(event:Event):void
		{
			validateNow();
		}
	}
}