package
{
	import org.flexlite.domUI.components.TitleWindow;
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
		}
		
		private var window:TitleWindow = new TitleWindow;
		override protected function init():void
		{
			
			window.height = 300;
			window.width = 400;
			window.addEventListener(CloseEvent.CLOSE,onClose);
			PopUpManager.addPopUp(window);
			PopUpManager.centerPopUps([window]);
		}
		
		private function onClose(event:CloseEvent):void
		{
			PopUpManager.removePopUp(window);
		}
	}
}