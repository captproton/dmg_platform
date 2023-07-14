class Platform < ApplicationRecord
    enum kind: { 'Facebook': 'facebook', 
    'Twitter': 'twitter', 
    'Instagram': 'instagram',
    'LinkedIn': 'linkedin',
    'YouTube': 'youtube',
    'TikTok': 'tiktok',
    'Pinterest': 'pinterest',
    'Snapchat': 'snapchat',
    'Twitch': 'twitch',
    'Reddit': 'reddit',
    'Tumblr': 'tumblr',
    'WhatsApp': 'whatsapp',
    }
end
# 
