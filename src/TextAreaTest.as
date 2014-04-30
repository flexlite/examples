package
{
	import flash.events.Event;
	
	import org.flexlite.domUI.components.TextArea;
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
		override protected function createChildren():void
		{
			super.createChildren();
			textInput = new TextInput;
			textInput.x = 220;
			textInput.y = 5;
			textInput.width = 160;
			textInput.prompt = "请输入文本";
			addElement(textInput);
			textInput.addEventListener(Event.CHANGE,onChange);
			
			var textArea:TextArea = new TextArea();
			textArea.x = 5;
			textArea.y = 5;
			textArea.prompt = "请输入文本";
			addElement(textArea);
		}
		
		protected function onChange(event:Event):void
		{
			trace(textInput.text);
		}
		
	}
}