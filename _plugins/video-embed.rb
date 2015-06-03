class YouTube < Liquid::Tag 
  def initialize(tagName, markup, tokens)
    super

    args = markup.split(' ')
    @id = args[0]
    @aspectratio = '4by3'

    if args[1]
      @aspectratio = args[1]
    end
  end

  def render(context)
    "<div class=\"embed-responsive embed-responsive-#{@aspectratio}\"><iframe src=\"https://www.youtube.com/embed/#{@id}?rel=0\" class=\"embed-responsive-item\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>"
  end

  Liquid::Template.register_tag("youtube", self)
end

class Vimeo < Liquid::Tag
  def initialize(tagName, markup, tokens)
    super

    args = markup.split(' ')
    @id = args[0]
    @aspectratio = '4by3'

    if args[1]
      @aspectratio = args[1]
    end
  end

  def render(context)
    "<div class=\"embed-responsive embed-responsive-#{@aspectratio}\"><iframe src=\"https://player.vimeo.com/video/#{@id}?loop=1&color=ffffff&byline=0&portrait=0\" class=\"embed-responsive-item\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>"
  end

  Liquid::Template.register_tag("vimeo", self)
end