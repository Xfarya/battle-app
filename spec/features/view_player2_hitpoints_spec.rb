feature 'view player 2s hitpoints', type: :feature do
  scenario 'view hitpoints' do
    visit('/')
    fill_in("player_1", with: 'Dave')
    fill_in("player_2", with: "John")
    click_button('Submit')
    expect(page).to have_content("John HP: 10")
  end
end