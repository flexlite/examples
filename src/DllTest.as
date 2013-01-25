package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.media.Sound;
	import flash.utils.ByteArray;
	
	import org.flexlite.domDll.Dll;
	import org.flexlite.domDll.core.ConfigItem;
	import org.flexlite.domDll.events.DllEvent;
	import org.flexlite.domUI.components.ProgressBar;
	import org.flexlite.test.app.AppContainer;
	
	[SWF(width='700', height='480', backgroundColor='#aaaaaa', frameRate='24')]
	/**
	 * 资源管理器测试
	 * @author DOM
	 */
	public class DllTest extends AppContainer
	{
		public function DllTest()
		{
			super();
		}
		
		override protected function init():void
		{
			Dll.eventDispather.addEventListener(DllEvent.GROUP_COMPLETE,onGroupComp);
			Dll.eventDispather.addEventListener(DllEvent.GROUP_PROGRESS,onProgress);
			Dll.eventDispather.addEventListener(DllEvent.ITEM_LOAD_FINISHED,onItemFinished);
			var config:ConfigItem = new ConfigItem("config/ini.amf","amf","resource/");
			var configList:Vector.<ConfigItem> = new <ConfigItem>[config];
			Dll.loadConfig(configList,"001","cn");//加载配置文件
			Dll.loadGroup("loading",1);//加载进度条素材
			Dll.loadGroup("preload");//加载预加载资源
		}
		
		/**
		 * 一个资源加载项加载结束
		 */		
		private function onItemFinished(event:DllEvent):void
		{
			if(!event.dllItem.loaded)
				trace("资源加载失败::::",event.dllItem);
		}
		
		private var loadingSprite:DisplayObject;
		/**
		 * Loading组加载完成
		 */		
		private function onGroupComp(event:DllEvent):void
		{
			if(event.groupName=="loading")
			{
				loadingSprite = (Dll.getRes("LoadingSprite") as Loader).content;
				stage.addChild(loadingSprite);
			}
			else if(event.groupName=="preload")
			{
				allComplete();
			}
		}
		/**
		 * 预加载组加载进度
		 */		
		private function onProgress(event:DllEvent):void
		{
			if(event.groupName=="preload")
			{
				loadingSprite["progress"] = int(event.bytesLoaded*100/event.bytesTotal);
				trace(loadingSprite["progress"]);
			}
		}
		
		/**
		 * 预加载组全部加载完成
		 */		
		private function allComplete():void
		{
			Dll.eventDispather.removeEventListener(DllEvent.GROUP_COMPLETE,onGroupComp);
			Dll.eventDispather.removeEventListener(DllEvent.GROUP_PROGRESS,onProgress);
			stage.removeChild(loadingSprite);
			
			var swf:DisplayObject = Dll.getRes("MainUI") as DisplayObject;
			swf.x = 100;
			stage.addChild(swf);
			
			var clazz:Class = Dll.getRes("Ui_Main_XPText") as Class;
			var xpText:DisplayObject = new clazz() as DisplayObject;
			xpText.x = 330;
			stage.addChild(xpText);
			
			var boxCritical:Sound = Dll.getRes("boxCritical");
			boxCritical.play();
			
			Dll.getResAsync("throwAPunch",function(throwAPunch:Sound):void{
				throwAPunch.play();
			});
			
			Dll.getResAsync("TestImg",function(data:BitmapData):void{
				var bitmap:Bitmap = new Bitmap(data);
				stage.addChild(bitmap);
			});
			
		}
	}
}