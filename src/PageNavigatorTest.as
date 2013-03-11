package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.DataGroup;
	import org.flexlite.domUI.components.PageNavigator;
	import org.flexlite.domUI.layouts.HorizontalLayout;
	import org.flexlite.domUI.skins.vector.PageNavigatorSkin;
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
		
		override protected function createChildren():void
		{
			super.createChildren();
			var page:PageNavigator = new PageNavigator;
			page.skinName = PageNavigatorSkin;
			page.horizontalCenter = 0;
			page.verticalCenter = 0;
			addElement(page);
			
			var dataGroup:DataGroup = new DataGroup;
			var dp:ArrayCollection = new ArrayCollection;
			dataGroup.dataProvider = dp;
			var layout:HorizontalLayout = new HorizontalLayout;
			layout.useVirtualLayout = true;
			layout.paddingLeft = 180;
			dataGroup.layout = layout;
			dataGroup.clipAndEnableScrolling = true;
			addElement(dataGroup);
			page.viewport = dataGroup;
			page.height = 118;
			page.width = 290;
			for(var i:int=0;i<70;i++)
			{
				dp.addItem("添加了元素：");
			}
		}
	}
}