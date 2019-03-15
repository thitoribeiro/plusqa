describe 'Alertas de JS', :alerts do
    before(:each) do
      visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
    end
  
    it 'alerta' do
      click_button 'Alerta'
        sleep 3
      msg = page.driver.browser.switch_to.alert.text
      expect(msg).to eql 'Isto é uma mensagem de alerta'
  
      page.driver.browser.switch_to.alert.accept
    end
  
    it 'sim confirma' do
      click_button 'Confirma'
        sleep 3
      msg = page.driver.browser.switch_to.alert.text
      expect(msg).to eql 'E ai confirma?'
  
      page.driver.browser.switch_to.alert.accept
      expect(page).to have_content 'Mensagem confirmada'
    end
  
    it 'não confirma' do
      click_button 'Confirma'
        sleep 3
      msg = page.driver.browser.switch_to.alert.text
      expect(msg).to eql 'E ai confirma?'
  
      page.driver.browser.switch_to.alert.dismiss
      expect(page).to have_content 'Mensagem não confirmada'
    end
  
    it 'accept prompt', :accept_prompt do
      accept_prompt(with: 'Fernando') do
        click_button 'Prompt'
        sleep 3
      end
  
      expect(page).to have_content 'Olá, Fernando'
    end
  
      it 'dismiss prompt', :dismiss_prompt do
   
    end
  end