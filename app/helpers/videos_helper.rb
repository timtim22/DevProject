module VideosHelper

	def youtube_id
    	YouTubeAddy.extract_video_id(@video.title)
  	end
end
