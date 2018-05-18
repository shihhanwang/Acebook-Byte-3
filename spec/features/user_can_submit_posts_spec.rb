require 'rails_helper'
require_relative './spec_helper/user_signup'
require_relative './spec_helper/create_post'

RSpec.feature 'Timeline', type: :feature do
  scenario 'User can sign up' do
    visit '/'
    click_link 'Sign up'
    fill_in 'user_username', with: 'test1'
    fill_in 'user_email', with: 'test1@gmail.com'
    fill_in 'user_password', with: 'test-1'
    fill_in 'user_password_confirmation', with: 'test-1'
    click_button 'Sign up'
    expect(page).to have_content("TEST1's Wall")
  end

  scenario 'User can log in' do
    signup
    click_link 'Log out'
    click_link 'Log in'
    fill_in 'user_email', with: 'test1@gmail.com'
    fill_in 'user_password', with: 'test-1'
    click_button 'Log in'
    expect(page).to have_content("TEST1's Wall")
  end

  scenario 'User can submit posts and view them' do
    signup
    create_post
    expect(page).to have_content('Hello, world!')
  end

  scenario 'User can edit posts' do
    signup
    create_post
    click_link 'Edit'
    fill_in 'post_message', with: 'Howdy'
    click_button 'Update Post'
    expect(page).to have_content('Howdy')
  end

  scenario 'User can delete posts' do
    signup
    create_post
    click_link 'Delete'
    # click_button 'OK'
    expect(page).to_not have_content('Hello, world!')
  end

  scenario 'User can post on other users walls' do
    visit '/'
    click_link 'Sign up'
    fill_in 'user_username', with: 'test2'
    fill_in 'user_email', with: 'test2@gmail.com'
    fill_in 'user_password', with: 'test-2'
    fill_in 'user_password_confirmation', with: 'test-2'
    click_button 'Sign up'
    create_post
    click_link 'Log out'
    signup
    click_link 'Home Page'
    click_link 'TEST2'
    click_link 'New post'
    fill_in 'post_message', with: 'Hello TEST2'
    click_button 'Submit'
    expect(page).to have_content('Hello TEST2')
  end

  scenario 'Posts have a like feature' do
    signup
    create_post
    expect(page).to have_content('Likes: 0')
  end

  scenario 'User can like a post' do
    signup
    create_post
    click_link 'Like'
    expect(page).to have_content('Likes: 1')
  end

  scenario 'User can comment on posts' do
    signup
    create_post
    fill_in 'comment_content', with: 'Awesome'
    click_button 'Moo'
    expect(page).to have_content('TEST1 Awesome')
  end

  scenario 'User can delete comments' do
    signup
    create_post
    fill_in 'comment_content', with: 'Awesome'
    click_button 'Moo'
    find("#comment").click_link('Delete')
    expect(page).not_to have_content('TEST1 Awesome')
  end
end
