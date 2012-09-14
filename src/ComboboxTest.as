package
{
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.ComboBox;
	import org.flexlite.domUI.core.DomGlobals;
	import org.flexlite.domUI.events.UIEvent;
	import org.flexlite.domUI.skins.themes.SparkTheme;
	import org.flexlite.test.app.AppContainer;
	
	public class ComboboxTest extends AppContainer
	{
		public function ComboboxTest()
		{
			super();
		}
		
		private var dp:ArrayCollection = new ArrayCollection;
		
		override protected function init():void
		{
			var cbb:ComboBox = new ComboBox();
			cbb.dataProvider = dp;
			cbb.addEventListener(UIEvent.OPEN,onOpen);
			addElement(cbb);
			cbb.x = 100;
			cbb.y = 150;
			for(var i:int=0;i<10;i++)
			{
				dp.addItem("添加了元素："+i);
			}
		}
		
		private function onOpen(event:UIEvent):void
		{
			var target:ComboBox = event.currentTarget as ComboBox;
			trace();
		}
		
		
	}
}