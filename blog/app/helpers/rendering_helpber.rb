module RenderingHelper
	def render_markdown(md)
		renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
		renderer.render(md).html_safe
	end

	private

	def renderer
		@@renderer ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
	end
end