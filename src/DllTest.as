package
{
	import org.flexlite.domDll.Dll;
	import org.flexlite.test.app.AppContainer;
	
	
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
			Dll.loadConfig(["config/ini.dllc"],"amf");
		}
	}
}