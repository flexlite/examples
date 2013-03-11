package
{
	import org.flexlite.domUI.collections.ArrayCollection;
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.TabBar;
	import org.flexlite.domUI.components.ViewStack;
	import org.flexlite.domUI.events.IndexChangeEvent;
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
		
		private var tabBar:TabBar = new TabBar;
		private var viewStack:ViewStack = new ViewStack;
		
		override protected function createChildren():void
		{
			super.createChildren();
			var dp:ArrayCollection = new ArrayCollection;
			for(var i:int=0;i<5;i++)
			{
				dp.addItem("Tab"+i);
				var button:Button = new Button;
				button.width = 200;
				button.height = 100;
				button.label = "按钮"+i;
				viewStack.addElement(button);
			}
			
			tabBar.dataProvider = dp;
			tabBar.height = 50;
			tabBar.width = 450;
			tabBar.horizontalCenter = 0;
			tabBar.addEventListener(IndexChangeEvent.CHANGE,onIndexChanged);
			addElement(tabBar);
			viewStack.y = 60;
			viewStack.horizontalCenter = 0;
			addElement(viewStack);
		}
		
		protected function onIndexChanged(event:IndexChangeEvent):void
		{
			viewStack.selectedIndex = event.newIndex;
		}
	}
}