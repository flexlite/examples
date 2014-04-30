package
{
	import flash.events.MouseEvent;
	
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
			
			for(var i:int=0;i<5;i++)
			{
				var button:Button = new Button;
				button.name = "Tab"+i;
				button.label = "按钮"+i;
				viewStack.addElement(button);
			}
			
			tabBar.dataProvider = viewStack;
			tabBar.horizontalCenter = 0;
			addElement(tabBar);
			viewStack.y = 60;
			viewStack.horizontalCenter = 0;
			addElement(viewStack);
			
			var btn:Button = new Button();
			btn.addEventListener(MouseEvent.CLICK,onCLick);
			addElement(btn);
		}
		
		protected function onCLick(event:MouseEvent):void
		{
			viewStack.selectedIndex = 3;
		}
	}
}