feature 'view player 2s hitpoints', type: :feature do
  scenario 'view hitpoints' do
    sign_in_and_play
    expect(page).to have_content("John HP: 10")
  end
end