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
		
		override protected function init():void
		{
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
//			trace(event.type+":"+event.itemIndex);
		}
		
		override protected function onDrag(offsetX:Number, offsetY:Number):void
		{
			if(list.dataGroup==null)
				return;
			var hsp:Number = list.dataGroup.horizontalScrollPosition - offsetX;
			var vsp:Number = list.dataGroup.verticalScrollPosition - offsetY;
			if(hsp>list.dataGroup.contentWidth - list.dataGroup.width)
				hsp = list.dataGroup.contentWidth - list.dataGroup.width;
			if(hsp<0)
				hsp = 0;
			if(vsp>list.dataGroup.contentHeight - list.dataGroup.height)
				vsp = list.dataGroup.contentHeight - list.dataGroup.height;
			if(vsp<0)
				vsp=0;
			list.dataGroup.horizontalScrollPosition = hsp;
			list.dataGroup.verticalScrollPosition = vsp;
		}
	}
}