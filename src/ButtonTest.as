package
{
	import flash.events.Event;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.components.CheckBox;
	import org.flexlite.domUI.components.RadioButton;
	import org.flexlite.domUI.components.RadioButtonGroup;
	import org.flexlite.domUI.components.ToggleButton;
	import org.flexlite.domUI.core.PopUpPosition;
	import org.flexlite.domUI.skins.vector.RadioButtonSkin;
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
		
		override protected function createChildren():void
		{
			super.createChildren();
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
			
			var radio1:RadioButton = new RadioButton();
			radio1.label = "单选按钮1";
			radio1.value = "数据源1";
			radio1.y = 100;
			radio1.x = 10;
			addElement(radio1);
			
			var radio2:RadioButton = new RadioButton();
			radio2.label = "单选按钮2";
			radio2.value = "数据源2";
			radio2.y = 100;
			radio2.x = 100;
			addElement(radio2);
			
			radio1.group.addEventListener(Event.CHANGE,onRaidoSelectChange);
		}
		
		protected function onRaidoSelectChange(event:Event):void
		{
			var g:RadioButtonGroup = event.target as RadioButtonGroup;
			trace("选中了："+g.selectedValue);
		}
		
	}
}