module Jekyll
  class YoutubeEmbedVideo < Liquid::Tag

    def initialize(tag_name, videoId, tokens)
      super
      @videoId = videoId.strip
    end

    def render(context)
      "<iframe width=\"100%\" height=\"400\" src=\"https://www.youtube.com/embed/#{@videoId}\" frameborder=\"0\" allowfullscreen></iframe>"
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::YoutubeEmbedVideo)