package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.DataGroup;
	import org.flexlite.domUI.components.Scroller;
	import org.flexlite.domUI.layouts.VerticalLayout;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * DataGroup测试
	 * @author DOM
	 */
	public class DataGroupTest extends AppContainer
	{
		public function DataGroupTest()
		{
			super();
		}
		
		private var dp:ArrayCollection = new ArrayCollection;
		
		private var dataGroup:DataGroup;
		/**
		 * 执行测试
		 */		
		override protected function init():void
		{
			dataGroup = new DataGroup;
			dataGroup.horizontalCenter = 0;
			dataGroup.verticalCenter = 0;
			dataGroup.dataProvider = dp;
			var layout:VerticalLayout = new VerticalLayout;
			layout.useVirtualLayout = true;
			layout.paddingTop = 350;
			dataGroup.layout = layout;
			dataGroup.height = 300;
			dataGroup.width = 350;
			dataGroup.clipAndEnableScrolling = true;
			var scroller:Scroller = new Scroller;
			scroller.viewport = dataGroup;
			addElement(scroller);
			
			for(var i:int=0;i<10;i++)
			{
				dp.addItem("添加了元素："+i);
			}
		}
		
		override protected function onDrag(offsetX:Number, offsetY:Number):void
		{
			var verticalScroll:Number = dataGroup.verticalScrollPosition - offsetY;
			
			if(verticalScroll>dataGroup.contentHeight - dataGroup.height)
				verticalScroll = dataGroup.contentHeight - dataGroup.height;
			if(verticalScroll<0)
				verticalScroll = 0;
			dataGroup.verticalScrollPosition = verticalScroll;
			
			var horizontalScroll:Number = dataGroup.horizontalScrollPosition - offsetX;
			if(horizontalScroll>dataGroup.contentWidth - dataGroup.width)
				horizontalScroll = dataGroup.contentWidth - dataGroup.width;
			if(horizontalScroll<0)
				horizontalScroll = 0;
			dataGroup.horizontalScrollPosition = horizontalScroll;
		}
	}
}