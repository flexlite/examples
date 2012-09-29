package
{
	import flash.events.MouseEvent;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	
	import org.flexlite.domUI.components.Label;
	import org.flexlite.domUI.layouts.VerticalAlign;
	import org.flexlite.test.app.AppContainer;
	
	/**
	 * Label测试
	 * @author DOM
	 */	
	public class LabelTest extends AppContainer
	{
		public function LabelTest()
		{
			super();
		}
		
		private var label:Label;
		
		override protected function init():void
		{
			var mes:String = "导读：和许多新兴的网站一样，著名的轻博客服务Tumblr在急速发展中面临了系统架构的瓶颈。每天5亿次浏览量，峰值每秒4万次请求，每天3TB新的数据存储，超过1000台服务器，这样的情况下如何保证老系统平稳运行，平稳过渡到新的系统，Tumblr正面临巨大的挑战。近日，HighScalability网站的Todd Hoff采访了该公司的分布式系统工程师Blake Matheny，撰文系统介绍了网站的架构，内容很有价值。我们也非常希望国内的公司和团队多做类似分享，贡献于社区的同时，更能提升自身的江湖地位，对招聘、业务发展都好处多多。欢迎通过@CSDN云计算的微博向我们投稿。";
			label = new Label();
			label.htmlText = mes;
			label.maxDisplayedLines = 0;
			label.maxWidth = 87;
			label.textAlign = TextFormatAlign.CENTER;
			label.size = 30;
			label.textColor = 0x009aff;
			label.leading = 20;
			label.bold = true;
			label.selectable = true;
			var tf:TextFormat = label.getDefaultTextFormat();
			tf.color = 0x9a00ff;
			label.setFormatOfRange(tf,22,28);
			tf.color = 0xff0000;
			label.setFormatOfRange(tf,48,55);
			label.percentHeight = 100;
			label.percentWidth = 100;
			label.verticalAlign = VerticalAlign.JUSTIFY;
			label.addEventListener(MouseEvent.CLICK,onMouseClick);
			addElement(label);
		}
		
		protected function onMouseClick(event:MouseEvent):void
		{
			if(label.verticalAlign == VerticalAlign.JUSTIFY)
			{
				label.verticalAlign = VerticalAlign.MIDDLE;
			}
			else
			{
				label.verticalAlign = VerticalAlign.JUSTIFY;
			}
		}
	}
}