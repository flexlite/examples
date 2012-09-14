package
{
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.core.DomGlobals;
	import org.flexlite.domUI.managers.PopUpManager;
	import org.flexlite.domUI.skins.themes.SparkTheme;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class PopUpManagerTEst extends AppContainer
	{
		public function PopUpManagerTEst()
		{
			super();
		}
		
		override protected function init():void
		{
			var button:Button = new Button;
			button.label = "按钮1";
			var button2:Button = new Button;
			button2.y = 10;
			button2.label = "按钮2";
			var button3:Button = new Button;
			button3.x = 15;
			button3.label = "按钮3";
			PopUpManager.addPopUp(button);
			PopUpManager.addPopUp(button2,false,true,1);
			PopUpManager.addPopUp(button3);
			PopUpManager.removePopUp(button2);
			PopUpManager.centerPopUps([button,button3]);
		}
	}
}