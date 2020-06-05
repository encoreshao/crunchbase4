# frozen_string_literal: true

RSpec.describe Crunchbase::Entities::Client do
  it 'be able to get organization data' do
    org = VCR.use_cassette('organization_ekohe') do
      described_class.new('ekohe', Crunchbase::Models::Organization).fetch
    end

    expect(org.uuid).to eq('9fe491b2-b6a1-5c87-0f4d-226dd0cc97a9')
    expect(org.website).to eq('http://ekohe.com')
    expect(org.twitter).to eq('http://twitter.com/ekohe')
    expect(org.categories).to eq([
                                   'Apps', 'Artificial Intelligence', 'Big Data', 'E-Commerce', 'Enterprise Software',
                                   'FinTech', 'iOS', 'Retail', 'UX Design'
                                 ])
    expect(org.category_groups).to eq([
                                        'Apps', 'Artificial Intelligence', 'Commerce and Shopping', 'Data and Analytics', 'Design',
                                        'Financial Services', 'Mobile', 'Platforms', 'Science and Engineering', 'Software'
                                      ])
    expect(org.company_type).to eq('for_profit')
    expect(org.status).to eq('operating')
    expect(org.contact_email).to eq('info@ekohe.com')
    expect(org.created_at).to eq('2013-05-14T14:28:38Z')
    expect(org.updated_at).to eq('2020-05-29T16:43:18Z')
    expect(org.rank).to eq(153_739)
    expect(org.rank_delta_d30).to eq(2.6)
    expect(org.rank_delta_d7).to eq(2.1)
    expect(org.rank_delta_d90).to eq(3.8)
    expect(org.rank_principal).to eq(153_739)
    expect(org.rank_delta_d90).to eq(3.8)
    expect(org.phone_number).to eq('+81-3-6427-6105')
    expect(org.short_description).to eq('Creating cutting-edge, useful technical solutions to move you forward -- we deliver on the promise of AI.')
    expect(org.description).to include('At Ekohe, we believe in the positive, transformational power of technology.')
    expect(org.entity_def_id).to eq('organization')
    expect(org.permalink_aliases).to eq([])
    expect(org.permalink).to eq('ekohe')
    expect(org.override_layout_id).to eq('default')
    expect(org.operating_status).to eq('active')
    expect(org.num_founders).to eq(1)
    expect(org.num_event_appearances).to eq(1)
    expect(org.num_employees_enum).to eq('c_00011_00050')
    expect(org.num_current_positions).to eq(1)
    expect(org.name).to eq('Ekohe')
    expect(org.identifier).to eq('Ekohe')
    expect(org.image_id).to eq('v1500646625/zhionn8nlgbkz4lj7ilz.png')
    expect(org.image_url).to eq('https://res.cloudinary.com/crunchbase-production/image/upload/v1500646625/zhionn8nlgbkz4lj7ilz.png')
    expect(org.location_identifiers).to eq(%w[Shanghai Shanghai China Asia])
    expect(org.location_group_identifiers).to eq(['Asia-Pacific (APAC)'])
    expect(org.linkedin).to eq('http://www.linkedin.com/company/ekohe')
    expect(org.ipo_status).to eq('private')
  end

  it 'be able to get person data' do
    person = VCR.use_cassette('person-mark-zuckerberg') do
      described_class.new('mark-zuckerberg', Crunchbase::Models::Person).fetch
    end

    expect(person.name).to eq('Mark Zuckerberg')
    expect(person.permalink).to eq('mark-zuckerberg')
    expect(person.uuid).to eq('a01b8d46-d311-3333-7c34-aa3ae9c03f22')
    expect(person.aliases).to eq(['Zuck'])
    expect(person.born_on).to eq('1984-05-14')
    expect(person.identifier).to eq('Mark Zuckerberg')
    expect(person.first_name).to eq('Mark')
    expect(person.last_name).to eq('Zuckerberg')
    expect(person.gender).to eq('male')
    expect(person.entity_def_id).to eq('person')
    expect(person.facebook).to eq('https://www.facebook.com/zuck')
    expect(person.image_url).to eq('https://res.cloudinary.com/crunchbase-production/image/upload/v1448830269/gzcifut4c2xah95x0ewd.jpg')
    expect(person.twitter).to eq('https://twitter.com/finkd')
    expect(person.facebook).to eq('https://www.facebook.com/zuck')
    expect(person.created_at).to eq('2007-05-26T04:51:46Z')
    expect(person.description).to include('Mark Zuckerberg is the founder and CEO of Facebook')
    expect(person.facet_ids).to eq(%w[investor rank])
    expect(person.image_id).to eq('v1448830269/gzcifut4c2xah95x0ewd.jpg')
    expect(person.investor_stage).to eq(['seed'])
    expect(person.investor_type).to eq(%w[investment_partner angel])
    expect(person.layout_id).to eq('investor')
    expect(person.location_group_identifiers).to eq(['San Francisco Bay Area', 'Silicon Valley', 'West Coast', 'Western US'])
    expect(person.location_identifiers).to eq(['Palo Alto', 'California', 'United States', 'North America'])
    expect(person.num_articles).to eq(31_052)
    expect(person.num_current_advisor_jobs).to eq(4)
    expect(person.num_current_jobs).to eq(7)
    expect(person.num_event_appearances).to eq(6)
    expect(person.num_founded_organizations).to eq(8)
    expect(person.num_investments).to eq(8)
    expect(person.num_investments_funding_rounds).to eq(8)
    expect(person.num_jobs).to eq(14)
    expect(person.num_lead_investments).to eq(1)
    expect(person.num_partner_investments).to eq(2)
    expect(person.num_past_advisor_jobs).to eq(2)
    expect(person.num_past_jobs).to eq(1)
    expect(person.num_portfolio_organizations).to eq(7)
    expect(person.permalink_aliases).to eq([])
    expect(person.primary_job_title).to eq('Founder & CEO')
    expect(person.primary_organization).to eq('Facebook')
    expect(person.rank).to eq(21_000)
    expect(person.rank_delta_d30).to eq(1.1)
    expect(person.rank_delta_d7).to eq(1.1)
    expect(person.rank_delta_d90).to eq(1.2)
    expect(person.rank_person).to eq(61)
    expect(person.rank_principal).to eq(21_000)
    expect(person.short_description).to eq('Mark Zuckerberg is the founder and CEO of Facebook, which he started in his college dorm room in 2004 with roomates Dustin Moskovitz and Chr...')
    expect(person.updated_at).to eq('2018-12-13T14:05:34Z')
  end

  it 'be able to get funding round data' do
    funding_round = VCR.use_cassette('funding_round-371c20af-8aa9-4bcb-a8da-0694d138f247') do
      described_class.new('371c20af-8aa9-4bcb-a8da-0694d138f247', Crunchbase::Models::FundingRound).fetch
    end

    expect(funding_round.announced_on).to eq('2013-06-30')
    expect(funding_round.closed_on).to eq(nil)
    expect(funding_round.created_at).to eq('2020-04-02T12:17:59Z')
    expect(funding_round.entity_def_id).to eq('funding_round')
    expect(funding_round.funded_organization_categories).to eq(nil)
    expect(funding_round.funded_organization_description).to eq('Facebook is an online social networking service that enables its users to connect with friends and family.')
    expect(funding_round.funded_organization_funding_stage).to eq('ipo')
    expect(funding_round.funded_organization_funding_total).to eq(2_335_700_000)
    expect(funding_round.funded_organization_identifier).to eq('Facebook')
    expect(funding_round.funded_organization_location).to eq(['Menlo Park', 'California', 'United States', 'North America'])
    expect(funding_round.funded_organization_revenue_range).to eq('r_10000000')
    expect(funding_round.identifier).to eq('Secondary Market - Facebook')
    expect(funding_round.image_id).to eq('rde5yhdgakaqryj6zpu6')
    expect(funding_round.investment_stage).to eq(nil)
    expect(funding_round.investment_type).to eq('secondary_market')
    expect(funding_round.investor_identifiers).to eq(['Jean-Brice Abrial'])
    expect(funding_round.is_equity).to eq(false)
    expect(funding_round.lead_investor_identifiers).to eq(nil)
    expect(funding_round.money_raised).to eq(nil)
    expect(funding_round.name).to eq('Secondary Market - Facebook')
    expect(funding_round.num_investors).to eq(1)
    expect(funding_round.num_partners).to eq(nil)
    expect(funding_round.num_relationships).to eq(nil)
    expect(funding_round.permalink).to eq('facebook-secondary-market--371c20af')
    expect(funding_round.pre_money_valuation).to eq(nil)
    expect(funding_round.rank).to eq(1_881_995)
    expect(funding_round.rank_funding_round).to eq(21_406)
    expect(funding_round.short_description).to eq('Facebook raised an undisclosed amount on 2013-06-30 in Secondary Market')
    expect(funding_round.target_money_raised).to eq(nil)
    expect(funding_round.updated_at).to eq('2020-04-02T12:17:59Z')
    expect(funding_round.uuid).to eq('371c20af-8aa9-4bcb-a8da-0694d138f247')
  end
end