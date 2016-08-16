OmniAuth.config.logger = Rails.logger

# public_profile
# user_friends
# email
# user_about_me
# user_actions.books
# user_actions.fitness
# user_actions.music
# user_actions.news
# user_actions.video
# user_actions:{app_namespace}
# user_birthday
# user_education_history
# user_events
# user_games_activity
# user_hometown
# user_likes
# user_location
# user_managed_groups
# user_photos
# user_posts
# user_relationships
# user_relationship_details
# user_religion_politics
# user_tagged_places
# user_videos
# user_website
# user_work_history
# read_custom_friendlists
# read_insights
# read_audience_network_insights
# read_page_mailboxes
# manage_pages
# publish_pages
# publish_actions
# rsvp_event
# pages_show_list
# pages_manage_cta
# pages_manage_instant_articles
# ads_read
# ads_management
# business_management
# pages_messaging
# pages_messaging_phone_number
ENV['FACEBOOK_APP_ID'] = '1153395544733520'
ENV['FACEBOOK_SECRET'] = 'a4196314f805deb4d9ab7d7ac8642051'

ACTIVE_USERS = ['10155159413859972']

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,
    ENV['FACEBOOK_APP_ID'],
    ENV['FACEBOOK_SECRET'],
    scope: "user_friends"
end
