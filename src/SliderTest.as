package
{
	import flash.events.Event;
	
	import org.flexlite.domUI.components.HSlider;
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.components.VSlider;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * Slider测试
	 * @author DOM
	 */
	public class SliderTest extends AppContainer
	{
		public function SliderTest()
		{
			super();
		}
		
		private var hSlider:HSlider = new HSlider;
		private var vSlider:VSlider = new VSlider;
		override protected function createChildren():void
		{
			super.createChildren();
			hSlider.maximum = 100;
			hSlider.minimum = 0;
			hSlider.stepSize = 1;
			hSlider.addEventListener(Event.CHANGE,onHSliderChange);
			addElement(hSlider);
			
			vSlider.addEventListener(Event.CHANGE,onVSliderChange);
			vSlider.x = 200;
			addElement(vSlider);
			
			
			hLabel.y = 10;
			hLabel.x = 35;
			addElement(hLabel);
			
			vLabel.y = 35;
			vLabel.x = 210;
			addElement(vLabel);
		}
		
		private var vLabel:Label = new Label;
		
		private function onVSliderChange(event:Event):void
		{
			vLabel.text = vSlider.value.toString();
		}
		
		private var hLabel:Label = new Label;
		
		private function onHSliderChange(event:Event):void
		{
			hLabel.text = hSlider.value.toString();
		}
	}
}