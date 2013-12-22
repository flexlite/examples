package
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import org.flexlite.domCore.Injector;
	import org.flexlite.domDll.Dll;
	import org.flexlite.domDll.core.ConfigItem;
	import org.flexlite.domDll.events.DllEvent;
	import org.flexlite.domUI.components.Button;
	import org.flexlite.domUI.core.ISkinAdapter;
	import org.flexlite.domUI.core.UIComponent;
	import org.flexlite.domUI.managers.PopUpManager;
	import org.flexlite.domUI.managers.SystemManager;
	import org.flexlite.test.app.SkinAdapter;
	import org.flexlite.test.skin.ButtonSkin;
	import org.flexlite.test.view.MessageWindow;
	
	
	/**
	 * DXML皮肤测试
	 * @author DOM
	 */
	public class DxmlTest extends SystemManager
	{
		/**
		 * 构造函数
		 */		
		public function DxmlTest()
		{
			super();
			init();
		}
		
		/**
		 * 游戏场景层
		 */		
		private var gameLayer:UIComponent;
		/**
		 * 初始化
		 */		
		private function init():void
		{
			//注入项目自定义的皮肤适配器，为UIAsset和Dll做桥接，也可以桥接到其他资源管理库。
			Injector.mapClass(ISkinAdapter,SkinAdapter);

			//加载Dll资源配置文件。这里为了方便测试，省略了Dll预加载界面的显示。Dll的完整用法请参考DllTest。
			Dll.eventDispather.addEventListener(DllEvent.CONFIG_COMPLETE,onAllComplete);
			var config:ConfigItem = new ConfigItem("config/ini.xml","xml","resource/");
			var configList:Vector.<ConfigItem> = new <ConfigItem>[config];
			Dll.loadConfig(configList,"001","cn");//加载配置文件
			
			//初始化游戏场景层
			gameLayer = new UIComponent();
			gameLayer.width = 800;
			gameLayer.height = 600;
			gameLayer.horizontalCenter = 0;
			gameLayer.verticalCenter = 0;
			addElement(gameLayer);
			
			//假装在初始化一个游戏场景
			var scene:Sprite = new Sprite();
			scene.graphics.beginFill(0x293134);
			scene.graphics.drawRect(0,0,800,600);
			scene.graphics.endFill();
			
			//gameLayer内可以使用传统显示列表操作方法。
			gameLayer.addChild(scene);
		}
		
		/**
		 * 全部加载完成,实例化一个按钮。
		 */		
		private function onAllComplete(event:DllEvent):void
		{
			var button:Button = new Button();
			button.skinName = ButtonSkin;
			button.label = "点击弹窗";
			button.toolTip = "快点击我";
			button.horizontalCenter = 0;
			button.verticalCenter = 0;
			button.addEventListener(MouseEvent.CLICK,onClick);
			addElement(button);
		}
		/**
		 * 按钮被点击
		 */		
		private function onClick(event:MouseEvent):void
		{
			var messageWindow:MessageWindow = new MessageWindow();
			messageWindow.title = "消息标题";
			messageWindow.message = "这是一个消息窗口！";
			PopUpManager.addPopUp(messageWindow);
		}
		
	}
}