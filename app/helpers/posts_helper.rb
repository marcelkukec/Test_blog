module PostsHelper
  def display_index_post_links(post)
    capture do
      concat content_tag(:td, link_to( 'Show', post))
        if current_user == post.user
          concat content_tag(:td, link_to( 'Edit', edit_post_path(post)))
          concat content_tag(:td, link_to( 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' }))
        end
    end
  end

  def display_show_post_links(post)
    capture do
      if current_user == post.user
        concat link_to 'Edit', edit_post_path(post)
        concat ' | '
      end
      concat link_to 'Back', posts_path
      end
  end
end
