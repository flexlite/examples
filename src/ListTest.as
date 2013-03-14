package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.List;
	import org.flexlite.domUI.events.IndexChangeEvent;
	import org.flexlite.domUI.events.ListEvent;
	import org.flexlite.domUI.layouts.HorizontalAlign;
	import org.flexlite.domUI.layouts.VerticalLayout;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * List组件测试
	 * @author DOM
	 */	
	public class ListTest extends AppContainer
	{
		public function ListTest()
		{
			super();
		}
		
		private var dp:ArrayCollection = new ArrayCollection;
		
		private var list:List;
		
		private var times:int = 0;
		
		override protected function createChildren():void
		{
			super.createChildren();
			list = new List;
			list.horizontalCenter = 0;
			list.verticalCenter = 0;
			list.requireSelection = true;
			list.dataProvider = dp;
			var layout:VerticalLayout = new VerticalLayout;
			layout.gap = 0;
			layout.horizontalAlign = HorizontalAlign.CONTENT_JUSTIFY;
			list.layout = layout;
			list.addEventListener(ListEvent.ITEM_ROLL_OUT,onListEvent);
			list.addEventListener(ListEvent.ITEM_ROLL_OVER,onListEvent);
			list.addEventListener(IndexChangeEvent.CHANGING,onIndexChange);
			list.addEventListener(IndexChangeEvent.CHANGE,onIndexChange);
			
			addElement(list);
			
			for(var i:int=0;i<10;i++)
			{
				dp.addItem("添加了元素："+i);
			}
		}
		
		protected function onIndexChange(event:IndexChangeEvent):void
		{
			trace("[type:"+event.type+" newIndex:"+event.newIndex+" oldIndex:"+event.oldIndex+"]");
			trace(list.selectedItem);
		}
		
		protected function onListEvent(event:ListEvent):void
		{
		}
	}
}