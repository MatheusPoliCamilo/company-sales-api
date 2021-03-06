require 'rails_helper'

RSpec.describe CompanySalesSerializer do
  let(:company_sale) { build_stubbed :company_sale }

  it 'returns a json' do
    expected = {
      id: company_sale.id,
      imported_at: company_sale.imported_at,
      total_gross_income: company_sale.total_gross_income,
      sales: []
    }.to_json

    subject = described_class.new(company_sale)
    expect(subject.to_json).to eql expected
  end
end
