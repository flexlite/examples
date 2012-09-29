package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.ComboBox;
	import org.flexlite.domUI.events.UIEvent;
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
			cbb.horizontalCenter = 0;
			cbb.width = 100;
			cbb.y = 10;
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