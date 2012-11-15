package
{
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.TabNavigator;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * TabNavigator测试
	 * @author DOM
	 */
	public class TabNavigatorTest extends AppContainer
	{
		public function TabNavigatorTest()
		{
			super();
		}
		
		override protected function init():void
		{
			var tabNavigator:TabNavigator = new TabNavigator;
			tabNavigator.horizontalCenter = 0;
			tabNavigator.verticalCenter = 0;
			tabNavigator.gap = 1;
			addElement(tabNavigator);
			var button:Button = new Button();
			button.label = "按钮1";
			button.navigatorLabel = "面板1";
			button.horizontalCenter = 0;
			tabNavigator.addElement(button);
			var button2:Button = new Button();
			button2.label = "按钮2";
			button2.navigatorLabel = "面板2";
			tabNavigator.addElement(button2);
		}
	}
}