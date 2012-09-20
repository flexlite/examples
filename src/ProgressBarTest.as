package
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.ProgressBar;
	import org.flexlite.test.app.AppContainer;
	import org.flexlite.test.skin.ProgressBarSkin;
	
	
	/**
	 * 
	 * @author DOM
	 */
	public class ProgressBarTest extends AppContainer
	{
		public function ProgressBarTest()
		{
			super();
		}
		
		private var progress:ProgressBar = new ProgressBar;
		
		override protected function init():void
		{
			progress.skinName = ProgressBarSkin;
			progress.horizontalCenter = 0;
			progress.verticalCenter = 0;
			progress.slideDuration = 1000;
			addElement(progress);
			this.stage.addEventListener(MouseEvent.CLICK,onClick);
		}
		
		private function onClick(event:MouseEvent):void
		{
			progress.value = int(Math.random()*100);
		}
	}
}