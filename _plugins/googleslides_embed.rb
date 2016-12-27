module Jekyll
  class GoogleSlidesEmbed < Liquid::Tag

    def initialize(tag_name, slidesId, tokens)
      super
      @slidesId = slidesId.strip
    end

    def render(context)
      "<iframe src=\"https://docs.google.com/presentation/#{@slidesId}/embed?start=false&loop=false&delayms=3000\" frameborder=\"0\" width=\"100%\" height=\"400\" allowfullscreen=\"true\" mozallowfullscreen=\"true\" webkitallowfullscreen=\"true\"></iframe>"
    end
  end
end

Liquid::Template.register_tag('google_slides', Jekyll::GoogleSlidesEmbed)