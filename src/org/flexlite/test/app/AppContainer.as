package org.flexlite.test.app
{
	import flash.events.MouseEvent;
	
	import org.flexlite.domCore.Injector;
	import org.flexlite.domUI.core.Theme;
	import org.flexlite.domUI.managers.SystemManager;
	import org.flexlite.domUI.skins.themes.VectorTheme;
	import org.flexlite.domUtils.Debugger;
	
	/**
	 * 应用程序容器
	 * @author dom
	 */	
	public class AppContainer extends SystemManager
	{
		public function AppContainer()
		{
			super();
			Injector.mapClass(Theme,VectorTheme);//这里为了方便调试，一次性注入所有组件的默认皮肤。正式项目中不需要默认皮肤,应当自定义主题。
			Debugger.initialize(stage);//显示列表调试工具(可选)。
		}
	}
}