Pod::Spec.new do |s|
    s.name             = "fbCharm"
    s.version          = "1.0.4"
    s.summary          = "iOS 上利用 fallback 机制为不同语言的文字 (script) 设定字体，从而使得文本混排更为优雅。"
    s.description      = <<-DESC
    iOS 上利用 fallback 机制为不同语言的文字 (script) 设定字体，从而使得文本混排更为优雅。

    如果您是一位 WEB 开发者，相信您对 CSS 的 font-family 属性一定不会陌生。通常我们会为 font-family 属性设置一长串的字体(家族)列表，就像这样的：

    .text { font-family: Menlo, Monaco, Consolas, "Courier New", monospace, Arial, "Microsoft YaHei", "黑体", "宋体", sans-serif; }

    有人肯定会问，为什么要这么设置啊？如果你足够细心，你一定会发现当你浏览该网页时英文字体和中文字体并不是同一种字体，如果你在不同的操作系统甚至不同的电脑上看到网页所呈现的字体也不一样。这又是为什么呢？

    此外，在您使用 Microsoft Word 进行段落排版的时候，你会发现 Word 可以自动对中文样式应用中文字体，对英文样式应用英文字体。这又是如何做到的呢？

    在实际的排版需求中，为了好看，我们通常会需要针对不同语言的文字 (script) 进行不同的字体设定，以达到最佳的视觉效果。当然，对于我们来说，最常见的还是中英文混排。通常设计人员给出的设计稿非常漂亮，可是中英文使用了不同的字体，我们开发人员该如何高保真地还原设计稿的原始设计呢？

    很显然，对于 WEB 开发者来说，已经有了很好的解决方案，而对于其他客户端的同学来说，这估计应该就有点犯难了，我们通常会告诉设计人员：“系统不支持” 抑或 “做不了” 之类的话。那事实上，到底能不能做到呢？答案是肯定的。
    DESC
    s.homepage         = "https://github.com/pcjbird/fbCharm"
    s.license          = 'MIT'
    s.author           = {"pcjbird" => "pcjbird@hotmail.com"}
    s.source           = {:git => "https://github.com/pcjbird/fbCharm.git", :tag => s.version.to_s}
    s.social_media_url = 'http://www.lessney.com'
    s.requires_arc     = true
    s.documentation_url = 'https://github.com/pcjbird/fbCharm/blob/master/README.md'
    s.screenshot       = 'https://github.com/pcjbird/fbCharm/raw/master/logo.png'

    s.platform         = :ios, '8.0'
    s.frameworks       = 'Foundation', 'UIKit'

    s.source_files     = 'fbCharm/*.swift'

    s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }

end
