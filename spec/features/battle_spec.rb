require 'app'

describe 'Battle', type: :feature do
  it 'has a home page' do
    visit ('/')
    expect(page).to have_field('player_1')
  end

  it 'fills, submits and returns names' do
    sign_in_and_play
    expect(page).to have_content "Dave and John will be playing Battle!"
  end
end