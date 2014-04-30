package
{
	import flash.display.InteractiveObject;
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Rect;
	import org.flexlite.domUI.components.TitleWindow;
	import org.flexlite.domUI.effects.Scale;
	import org.flexlite.domUI.events.CloseEvent;
	import org.flexlite.domUI.managers.PopUpManager;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * TitleWindow测试
	 * @author DOM
	 */
	public class TitleWindowTest extends AppContainer
	{
		public function TitleWindowTest()
		{
			super();
			this.stage.addEventListener(MouseEvent.CLICK,onStageClick);
			createOneWindow();
		}
		
		private var windowNum:int = 0;
		
		private function onStageClick(event:MouseEvent):void
		{
			var target:InteractiveObject = event.target as InteractiveObject;
			var found:Boolean = target is TitleWindow;
			while(target.parent)
			{
				target = target.parent;
				if(target is TitleWindow)
				{
					found = true;
					break;
				}
			}
			if(found)
				return;
			createOneWindow();
		}
		
		private function createOneWindow():void
		{
			windowNum++;
			var window:TitleWindow = new TitleWindow();
			window.height = 300;
			window.width = 400;
			window.title = "测试窗口"+windowNum;
			window.addEventListener(CloseEvent.CLOSE,onClose);
			PopUpManager.addPopUp(window);
		}
		
		private function onClose(event:CloseEvent):void
		{
			var window:TitleWindow = event.currentTarget as TitleWindow;
			PopUpManager.removePopUp(window);
		}
	}
}