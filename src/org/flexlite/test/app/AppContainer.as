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
	 * @author DOM
	 */	
	public class AppContainer extends SystemManager
	{
		public function AppContainer()
		{
			super();
			Injector.mapClass(Theme,VectorTheme);
			Debugger.initialize(stage);
		}
	}
}