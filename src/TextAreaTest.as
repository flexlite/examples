package
{
	import flash.events.Event;
	
	import org.flexlite.domUI.components.TextInput;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * 文本输入控件测试
	 * @author DOM
	 */
	public class TextAreaTest extends AppContainer
	{
		public function TextAreaTest()
		{
			super();
		}
		private var textInput:TextInput;
		override protected function init():void
		{
			
			textInput = new TextInput;
			textInput.x = 220;
			textInput.width = 160;
			textInput.text = "哈哈：";
//			textInput.height = 19;
			addElement(textInput);
			textInput.addEventListener(Event.CHANGE,onChange);
		}
		
		protected function onChange(event:Event):void
		{
			trace(textInput.text);
		}
		
	}
}