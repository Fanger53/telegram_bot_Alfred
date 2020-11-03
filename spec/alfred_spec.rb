require_relative '../lib/select.rb'

describe Selector do
let (:select) { Selector.new }

  describe '#initialize' do
    it 'It checks if the array is equal to breakfast array' do
      expect(select.breakfast).to match_array([
        'https://www.youtube.com/watch?v=MuajFTgkoHw', 
        'https://www.youtube.com/watch?v=28GCv_C-SVI',
        'https://www.youtube.com/watch?v=EtT6WhbiLJY',
        'https://www.youtube.com/watch?v=Iy3mUtlvw84',
        'https://www.youtube.com/watch?v=l7NUssiZTPk',
        'https://www.youtube.com/watch?v=V7vofXwkY0E',
        'https://www.youtube.com/watch?v=UIl_5rpi2lI'
      ])
    end
  end
    it 'It checks if the array is equal to breakfast array' do
      expect(select.breakfast).to_no match_array([
        'https://www.youtube.com/watch?v=QZK0bqfITnI',
        'https://www.youtube.com/watch?v=mhDJNfV7hjk',
        'https://www.youtube.com/watch?v=MBkcmuTTrbU',
        'https://www.youtube.com/watch?v=Cm2XN5mbepg',
        'https://www.youtube.com/watch?v=J0LAvL4G_cA',
        'https://www.youtube.com/watch?v=LPPcNPdq_j4',
        'https://www.youtube.com/watch?v=_0yTwf3eJAA'
      ])
    end
  end
end #general
