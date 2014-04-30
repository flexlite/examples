package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.DropDownList;
	import org.flexlite.domUI.events.UIEvent;
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
		
		override protected function createChildren():void
		{
			super.createChildren();
			var cbb:DropDownList = new DropDownList();
			cbb.dataProvider = dp;
			cbb.addEventListener(UIEvent.OPEN,onOpen);
			addElement(cbb);
			cbb.width = 120;
			cbb.prompt = "请选择一项...";
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