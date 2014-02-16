package
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.IMEEvent;
	import flash.events.TextEvent;
	import flash.system.IME;
	
	import org.flexlite.domUI.components.ChatDisplayText;
	import org.flexlite.domUI.components.ChatEditableText;
	import org.flexlite.domUI.components.EditableText;
	import org.flexlite.domUtils.DomLoader;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class ChatAreaTest extends AppContainer
	{
		public function ChatAreaTest()
		{
			super();
			DomLoader.loadExternalClasses("resource/swf/ChatFace.swf",onComp);
		}
		
		private function onComp(classList:Array, keyList:Array):void
		{
			this.classList = classList;
			var text:ChatEditableText = new ChatEditableText();
			text.emoticonFunction = emoticonFunction;
			text.text = "哈哈[haha]hah\nhaaaa";
			addElement(text);
		}
		
		private var classList:Array = [];
		
		private function emoticonFunction(key:String):DisplayObject
		{
			var clazz:Class = classList[0];
			return new clazz() as DisplayObject;
		}
		
	}
}