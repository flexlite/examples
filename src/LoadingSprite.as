package
{
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.FullScreenEvent;
	
	import org.flexlite.domUI.components.Group;
	import org.flexlite.domUI.components.ProgressBar;
	import org.flexlite.domUI.skins.vector.ProgressBarSkin;
	
	
	/**
	 * Loading进度条界面
	 * @author DOM
	 */
	public class LoadingSprite extends Group
	{
		public function LoadingSprite()
		{
			super();
			if(stage)
			{
				onAddToStage();
			}
			else
			{
				this.addEventListener(Event.ADDED_TO_STAGE,onAddToStage);
			}
		}
		
		/**
		 * 添加到舞台
		 */		
		private function onAddToStage(event:Event=null):void
		{
			if(event)
				this.removeEventListener(Event.ADDED_TO_STAGE,onAddToStage);
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			stage.stageFocusRect=false;
			stage.addEventListener(Event.RESIZE,onResize);
			stage.addEventListener(FullScreenEvent.FULL_SCREEN,onResize);
			onResize();
			progressBar.horizontalCenter = 0;
			progressBar.verticalCenter = 0;
			progressBar.width = 450;
			progressBar.skinName = ProgressBarSkin;
			progressBar.labelFunction = labelFunction;
			progressBar.slideDuration = 0;
			addElement(progressBar);
		}
		
		/**
		 * 舞台尺寸改变
		 */		
		private function onResize(event:Event=null):void
		{
			width = stage.stageWidth;
			height = stage.stageHeight;
		}
		
		
		private function labelFunction(value:Number,maximum:Number):String
		{
			return "正在加载: "+value+" %";
		}
		/**
		 * 进度条组件
		 */		
		private var progressBar:ProgressBar = new ProgressBar();
		/**
		 * 进度条当前值,0~100。
		 */
		public function get progress():Number
		{
			return progressBar.value;
		}

		public function set progress(v:Number):void
		{
			if(v==progressBar.value)
				return;
			progressBar.value = v;
		}
		
	}
}