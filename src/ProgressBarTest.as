package
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.ProgressBar;
	import org.flexlite.test.app.AppContainer;
	
	
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
			progress.horizontalCenter = 0;
			progress.verticalCenter = 0;
//			progress.width = 200;
			progress.value = 100;
			progress.slideDuration = 1000;
			addElement(progress);
			this.stage.addEventListener(MouseEvent.CLICK,onClick);
		}
		
		private function onClick(event:MouseEvent):void
		{
			var value:Number = int(Math.random()*100);
			if(value==99)
				value = 100;
			progress.value = value;
		}
	}
}