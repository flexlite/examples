package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.DataGroup;
	import org.flexlite.domUI.components.EditableText;
	import org.flexlite.domUI.components.PageNavigator;
	import org.flexlite.domUI.layouts.TileLayout;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * PageNavigator测试
	 * @author DOM
	 */
	public class PageNavigatorTest extends AppContainer
	{
		public function PageNavigatorTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var page:PageNavigator = new PageNavigator;
			addElement(page);
			
			var dataGroup:DataGroup = new DataGroup;
			dataGroup.horizontalCenter = 0;
			dataGroup.verticalCenter = 0;
			var dp:ArrayCollection = new ArrayCollection;
			dataGroup.dataProvider = dp;
			var layout:TileLayout = new TileLayout;
			layout.useVirtualLayout = true;
			dataGroup.layout = layout;
			dataGroup.clipAndEnableScrolling = true;
			addElement(dataGroup);
			page.viewport = dataGroup;
			page.width = 348;
			page.height = 120;
			for(var i:int=0;i<50;i++)
			{
				dp.addItem("添加了元素："+i);
			}
		}
	}
}