package
{
	import org.flexlite.domUI.components.ProgressBar;
	import org.flexlite.domUI.managers.SystemManager;
	import org.flexlite.domUI.skins.vector.ProgressBarSkin;
	
	
	/**
	 * Loading进度条界面
	 * @author DOM
	 */
	public class LoadingSprite extends SystemManager
	{
		public function LoadingSprite()
		{
			super();
			progressBar.horizontalCenter = 0;
			progressBar.verticalCenter = 0;
			progressBar.width = 450;
			progressBar.skinName = ProgressBarSkin;
			progressBar.labelFunction = labelFunction;
			progressBar.slideDuration = 0;
			addElement(progressBar);
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