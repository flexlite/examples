package org.flexlite.test.app
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domCore.Injector;
	import org.flexlite.domUI.core.Theme;
	import org.flexlite.domUI.managers.SystemManager;
	import org.flexlite.domUI.skins.themes.VectorTheme;
	
	/**
	 * 应用程序容器
	 * @author DOM
	 */	
	public class AppContainer extends SystemManager
	{
		public function AppContainer()
		{
			super();
			Injector.mapClass(Theme,VectorTheme);
			id = "appContainer";
			stage.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
			init();
		}
		/**
		 * 初始化
		 */		
		protected function init():void
		{
			
		}
		private function onMouseDown(event:MouseEvent):void
		{
			stageY = event.stageY;
			stageX = event.stageX;
			stage.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			stage.addEventListener(MouseEvent.MOUSE_UP,onMoueUp);
		}
		
		private function onMoueUp(event:MouseEvent):void
		{
			stage.removeEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			stage.removeEventListener(MouseEvent.MOUSE_UP,onMoueUp);
		}
		
		private var stageY:Number;
		
		private var stageX:Number;
		
		private function onMouseMove(event:MouseEvent):void
		{
			var offsetY:Number = event.stageY- stageY;
			var offsetX:Number = event.stageX - stageX;
			
			onDrag(offsetX,offsetY);
			
			stageY = event.stageY;
			stageX = event.stageX;
		}
		
		protected function onDrag(offsetX:Number,offsetY:Number):void
		{
			
		}
	}
}