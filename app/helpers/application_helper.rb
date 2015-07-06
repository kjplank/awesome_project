module ApplicationHelper

  def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, :allowscriptaccess => "always", :allowFullScreen => "true", :src => "//www.youtube.com/embed/#{youtube_id}")
  end

end
