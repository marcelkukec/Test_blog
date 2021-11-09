module PostsHelper
  def display_index_post_links(post)
    capture do
      concat link_to( 'Preberi več', post, class: 'stretched-link')
    end
  end

  def display_show_post_links(post)
    capture do
      if current_user == post.user
        concat link_to( 'Uredi', edit_post_path(post))
        concat ' | '
        concat link_to( 'Izbriši', post, method: :delete, data: { confirm: 'Are you sure?' })
        concat ' | '
      end
      concat link_to 'Back', posts_path
      end
  end
end
