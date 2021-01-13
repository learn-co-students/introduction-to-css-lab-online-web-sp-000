end
    it 'sets div font-family to Helvetica Neue' do
      selector = parsed_css.find_by_selector('div')[0]
      expect(selector).to include('font-family: "Helvetica Neue";'), "Missing properly formatted font-family declaration"
      expect(selector).to (include('font-family: "Helvetica Neue";').or include('font-family: Helvetica Neue;')), "Missing properly formatted font-family declaration"
    end
    it 'sets div background to white' do
      selector = parsed_css.find_by_selector('div')[0]
