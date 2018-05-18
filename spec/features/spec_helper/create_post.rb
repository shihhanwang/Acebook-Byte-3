def create_post
  click_link 'Home Page'
  click_link 'New post'
  fill_in 'post_message', with: 'Hello, world!'
  click_button 'Submit'
end
