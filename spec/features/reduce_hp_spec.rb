feature 'reduce player 2 hitpoints by 2', type: :feature do
  scenario 'players 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content("John HP: 0")
  end
end
