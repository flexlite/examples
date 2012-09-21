package
{
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.core.DomGlobals;
	import org.flexlite.domUI.core.IEffect;
	import org.flexlite.domUI.core.IVisualElement;
	import org.flexlite.domUI.effects.Scale;
	import org.flexlite.domUI.events.EffectEvent;
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
			this.stage.addEventListener(MouseEvent.CLICK,onClick);
		}
		
		private function onClick(event:MouseEvent):void
		{
			var button:Button = new Button;
			button.label = "按钮";
			button.width = 400;
			button.height = 400;
			var scale:Scale = new Scale();
			scale.scaleXFrom = 0;
			scale.scaleYFrom = 0;
			scale.scaleYTo = 1;
			scale.scaleXTo = 1;
			scale.addEventListener(EffectEvent.EFFECT_END,onEffectEnd);
			button.verticalCenter = 0;
			button.horizontalCenter = 0;
			PopUpManager.addPopUp(button,false,false,false,0,scale);
		}
		
		private function onEffectEnd(event:EffectEvent):void
		{
			var effect:IEffect = event.target as IEffect;
			PopUpManager.removePopUp(effect.target as IVisualElement);
		}
		
		override protected function init():void
		{
			var button:Button = new Button;
			button.label = "按钮1";
			var button2:Button = new Button;
			button2.y = 10;
			button2.label = "按钮2";
			button2.bottom = 0;
			button2.right = 0;
			addElement(button2);
			var button3:Button = new Button;
			
			button3.x = 15;
			button3.label = "按钮3";
			button3.verticalCenter = 0;
			button3.horizontalCenter = 0;
			PopUpManager.addPopUp(button);
			PopUpManager.addPopUp(button3,true);
		}
	}
}