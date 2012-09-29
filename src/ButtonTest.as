package
{
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.CheckBox;
	import org.flexlite.domUI.components.ToggleButton;
	import org.flexlite.domUI.core.PopUpPosition;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * 按钮测试
	 * @author DOM
	 */
	public class ButtonTest extends AppContainer
	{
		public function ButtonTest()
		{
			super();
		}
		
		private var btn:Button = new Button;
		
		override protected function init():void
		{
			btn.label = "测试按钮";
			btn.toolTip = "测试提示";
			btn.toolTipPosition = PopUpPosition.BELOW;
			btn.horizontalCenter = 0;
			btn.verticalCenter = -40;
			addElement(btn);
			
			var toggle:ToggleButton = new ToggleButton;
			toggle.label = "切换按钮";
			toggle.x = 10;
			toggle.y = 10;
			addElement(toggle);
			
			var checkBox:CheckBox = new CheckBox;
			checkBox.x = 100;
			checkBox.y = 10;
			checkBox.label = "复选框";
			checkBox.selected = true;
			addElement(checkBox);
		}
		
	}
}