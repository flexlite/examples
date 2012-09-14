package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.TabBar;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * TabBar测试
	 * @author DOM
	 */
	public class TabBarTest extends AppContainer
	{
		public function TabBarTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var dp:ArrayCollection = new ArrayCollection;
			for(var i:int=0;i<10;i++)
				dp.addItem("tab"+i);
			var tabBar:TabBar = new TabBar;
			tabBar.dataProvider = dp;
			addElement(tabBar);
			
		}
	}
}