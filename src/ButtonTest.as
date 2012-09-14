package
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.CheckBox;
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.components.ToggleButton;
	import org.flexlite.domUI.components.supportClasses.ButtonBase;
	import org.flexlite.domUI.core.PopUpPosition;
	import org.flexlite.domUI.skins.spark.ToggleButtonSkin;
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
		
		private var btn:ButtonBase = new ButtonBase;
		
		override protected function init():void
		{
			btn.label = "测试按钮";
			btn.toolTip = "哈哈按钮";
			btn.toolTipPosition = PopUpPosition.BELOW;
			btn.skinName = ToggleButtonSkin;
			btn.horizontalCenter = 0;
			btn.height = 80;
			btn.verticalCenter = -40;
			btn.setStyle("color",Math.random()*0xFFFFFF);
			btn.setStyle("color2",Math.random()*0xFFFFFF);
			addElement(btn);
			
			var label:Label = new Label();
			label.text = "点击此处改变按钮颜色";
			label.horizontalCenter = 0;
			label.verticalCenter = 40;
			label.size = 30;
			label.underline = true;
			label.addEventListener(MouseEvent.CLICK,onClick);
			addElement(label);
			
			var toggle:ToggleButton = new ToggleButton;
			toggle.label = "切换按钮";
			addElement(toggle);
			
			var checkBox:CheckBox = new CheckBox;
			checkBox.x = 100;
			checkBox.y = 4;
			addElement(checkBox);
		}
		private var autoChange:Boolean = false;
		private function onClick(e:Event):void
		{
			autoChange = autoChange?false:true;
			if(autoChange)
			{
				stage.addEventListener(Event.ENTER_FRAME,onEnterFrame);
			}
			else
			{
				stage.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
			}
		}		
		private var count:int = 0;
		protected function onEnterFrame(event:Event):void
		{
			count++;
			if(count>24)
				count = 0
			if(count==1)
			{
				btn.setStyle("color",Math.random()*0xFFFFFF);
				btn.setStyle("color2",Math.random()*0xFFFFFF);
			}
		}
		
	}
}