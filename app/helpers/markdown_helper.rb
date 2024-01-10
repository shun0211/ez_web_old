module MarkdownHelper
  def markdown(text)
    options = {
      hard_wrap: true,
      link_attributes: { rel: 'nofollow', taget: '_blank' },
      fenced_code_blocks: true,
      no_intra_emphasis: true,
      autolink: true,
      tables: true,
      lax_spacing: true,
      underline: true,
      highlight: true,
      quote: true,
      footnotes: true
    }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    sanitize(markdown.render(text))
  end

  def toc(text)
    renderer = Redcarpet::Render::HTML_TOC.new(nesting_level: 3)
    markdown = Redcarpet::Markdown.new(renderer)
    markdown.render(text).html_safe
  end
end
