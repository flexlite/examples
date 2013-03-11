package
{
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.TextFormatAlign;
	
	import org.flexlite.domUI.components.EditableText;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * EditableText测试
	 * @author DOM
	 */
	public class EditableTextTest extends AppContainer
	{
		public function EditableTextTest()
		{
			super();
		}
		
		private var editableText:EditableText = new EditableText;
		
		override protected function createChildren():void
		{
			super.createChildren();
			editableText.minWidth = 100;
			editableText.minHeight = 30;
			editableText.text = "哈哈";
			editableText.maxChars = 5;
			editableText.displayAsPassword = true;
			editableText.textAlign = TextFormatAlign.CENTER;
			editableText.graphics.beginFill(0x009aff);
			editableText.graphics.drawRect(0,0,100,30);
			editableText.graphics.endFill();
			editableText.addEventListener(Event.CHANGE,onChange);
			editableText.addEventListener(TextEvent.TEXT_INPUT,onTextInput);
			addElement(editableText);
		}
		
		private function onTextInput(event:TextEvent):void
		{
			trace(event.type+":"+event.text);
		}
		
		private function onChange(event:Event):void
		{
			trace(event.type);
		}
	}
}