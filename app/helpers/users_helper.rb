module UsersHelper
  def gravatar_url(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?d=https://camo.qiitausercontent.com/449a77137d5da6764027dab5fbf03e133c6b7734/68747470733a2f2f7777772e67726176617461722e636f6d2f6176617461722f30303030303030303030303030303030303030303030303030303030303030303f643d6964656e7469636f6e&?s=#{size}"
  end
end
