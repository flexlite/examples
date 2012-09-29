package
{
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.DropDownList;
	import org.flexlite.domUI.core.DomGlobals;
	import org.flexlite.domUI.events.UIEvent;
	import org.flexlite.domUI.skins.themes.SparkTheme;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * DropDownList测试
	 * @author DOM
	 */
	public class DropDownListTest extends AppContainer
	{
		public function DropDownListTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var cbb:DropDownList = new DropDownList();
			cbb.dataProvider = dp;
			cbb.addEventListener(UIEvent.OPEN,onOpen);
			addElement(cbb);
			cbb.width = 110;
			cbb.horizontalCenter = 0;
			cbb.y = 10;
			for(var i:int=0;i<10;i++)
			{
				dp.addItem("添加了元素："+i);
			}
		}
		
		private function onOpen(event:UIEvent):void
		{
			var target:DropDownList = event.currentTarget as DropDownList;
			trace();
		}
		
		private var dp:ArrayCollection = new ArrayCollection;
	}
}