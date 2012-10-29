package
{
	import flash.display.DisplayObject;
	import flash.events.MouseEvent;
	
	import org.flexlite.domUI.components.Alert;
	import org.flexlite.domUI.events.CloseEvent;
	import org.flexlite.test.app.AppContainer;
	
	
	/**
	 * Alert测试
	 * @author DOM
	 */
	public class AlertTest extends AppContainer
	{
		public function AlertTest()
		{
			super();
			stage.addEventListener(MouseEvent.CLICK,onClick);
		}
		
		private function onClick(event:MouseEvent):void
		{
			var target:DisplayObject = event.target as DisplayObject;
			while(target)
			{
				if(target is Alert)
					return;
				target = target.parent;
			}
			Alert.show("导读：和许多新兴的网站一样，著名的轻博客服务Tumblr在急速发展中面临了系统架构的瓶颈。每天5亿次浏览量，峰值每秒4万次请求，每天3TB新的数据存储，超过1000台服务器，这样的情况下如何保证老系统平稳运行，平稳过渡到新的系统，Tumblr正面临巨大的挑战。近日，HighScalability网站的Todd Hoff采访了该公司的分布式系统工程师Blake Matheny，撰文系统介绍了网站的架构，内容很有价值。我们也非常希望国内的公司和团队多做类似分享，贡献于社区的同时，更能提升自身的江湖地位，对招聘、业务发展都好处多多。欢迎通过@CSDN云计算的微博向我们投稿。","提示",Alert.OK|Alert.CLOSE,onClose);
		}
		
		private function onClose(event:CloseEvent):void
		{
			trace("event.detail:",event.detail);			
		}
		
	}
}