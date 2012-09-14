package
{
	import org.flexlite.domUI.components.NumericStepper;
	import org.flexlite.domUI.components.Spinner;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * NumericStepper测试
	 * @author DOM
	 */
	public class NumericStepperTest extends AppContainer
	{
		public function NumericStepperTest()
		{
			super();
		}
		
		override protected function init():void
		{
			super.init();
			var spinner:Spinner = new Spinner;
			addElement(spinner);
			
			var numericStepper:NumericStepper = new NumericStepper;
			numericStepper.x = 200;
			addElement(numericStepper);
		}
	}
}