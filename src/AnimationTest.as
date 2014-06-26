package
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.effects.animation.Animation;
	import org.flexlite.domUI.effects.animation.MotionPath;
	import org.flexlite.domUI.effects.animation.RepeatBehavior;
	import org.flexlite.domUI.effects.easing.Elastic;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * Animation测试
	 * @author dom
	 */	
	public class AnimationTest extends AppContainer
	{
		public function AnimationTest()
		{
			super();
			this.stage.addEventListener(MouseEvent.CLICK,onStageClick);
		}
		
		protected function onStageClick(event:MouseEvent):void
		{
			animation.motionPaths = 
				new <MotionPath>[new MotionPath("x",button.x,event.stageX),new MotionPath("y",button.y,event.stageY)];
			animation.play();
		}
		
		private var button:Button = new Button;
		private var animation:Animation = new Animation(updateValue);
		
		override protected function createChildren():void
		{
			super.createChildren();
			button.label = "点击舞台移动按钮";
			addElement(button);
			animation.startFunction = startAnimation;
			animation.endFunction = endAnimation;
			animation.duration = 3000;
			animation.easer = new Elastic;
			animation.motionPaths = new <MotionPath>[new MotionPath("x",0,300),new MotionPath("y",0,300)];
			animation.repeatBehavior = RepeatBehavior.REVERSE;
			animation.repeatCount = 0;
			animation.play();
		}
		
		
		private function updateValue(animation:Animation):void
		{
			button.x = animation.currentValue["x"];
			button.y = animation.currentValue["y"];
		}
		private function startAnimation(animation:Animation):void
		{
		}
		private function endAnimation(animation:Animation):void
		{
		}
	}
}