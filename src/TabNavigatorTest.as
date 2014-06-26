package
{
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.TabNavigator;
	import org.flexlite.domUI.skins.vector.TabNavigatorSkin;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * TabNavigator测试
	 * @author dom
	 */
	public class TabNavigatorTest extends AppContainer
	{
		public function TabNavigatorTest()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			var tabNavigator:TabNavigator = new TabNavigator;
			tabNavigator.horizontalCenter = 0;
			tabNavigator.verticalCenter = 0;
			addElement(tabNavigator);
			
			var button:Button = new Button();
			button.label = "按钮1";
			button.name = "面板1";
			button.horizontalCenter = 0;
			tabNavigator.addElement(button);
			var button2:Button = new Button();
			button2.label = "按钮2";
			button2.name = "面板2";
			tabNavigator.addElement(button2);
			tabNavigator.selectedIndex = 1;
		}
	}
}