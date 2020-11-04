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
    it 'It checks if the array is not equal to breakfast array' do
      expect(select.breakfast).to_not eq([
        'https://www.youtube.com/watch?v=QZK0bqfITnI',
        'https://www.youtube.com/watch?v=mhDJNfV7hjk',
        'https://www.youtube.com/watch?v=MBkcmuTTrbU',
        'https://www.youtube.com/watch?v=Cm2XN5mbepg',
        'https://www.youtube.com/watch?v=J0LAvL4G_cA',
        'https://www.youtube.com/watch?v=LPPcNPdq_j4',
        'https://www.youtube.com/watch?v=_0yTwf3eJAA'
      ])
    end
    it 'It checks if the array is equal to lunch array' do
      expect(select.lunch).to match_array([
        'https://www.youtube.com/watch?v=QZK0bqfITnI',
        'https://www.youtube.com/watch?v=mhDJNfV7hjk',
        'https://www.youtube.com/watch?v=MBkcmuTTrbU',
        'https://www.youtube.com/watch?v=Cm2XN5mbepg',
        'https://www.youtube.com/watch?v=J0LAvL4G_cA',
        'https://www.youtube.com/watch?v=LPPcNPdq_j4',
        'https://www.youtube.com/watch?v=_0yTwf3eJAA'
                                          ])
    end
    it 'It checks if the array is not equal to lunch array' do
      expect(select.lunch).to_not eq([
        'https://www.youtube.com/watch?v=MuajFTgkoHw', 
        'https://www.youtube.com/watch?v=28GCv_C-SVI',
        'https://www.youtube.com/watch?v=EtT6WhbiLJY',
        'https://www.youtube.com/watch?v=Iy3mUtlvw84',
        'https://www.youtube.com/watch?v=l7NUssiZTPk',
        'https://www.youtube.com/watch?v=V7vofXwkY0E',
        'https://www.youtube.com/watch?v=UIl_5rpi2lI'
                                    ])
    end
    it 'It checks if the array is equal to dinner array' do
      expect(select.dinner).to match_array([
              'https://www.youtube.com/watch?v=X_qo3lnRS1k',
              'https://www.youtube.com/watch?v=Cyskqnp1j64',
              'https://www.youtube.com/watch?v=X_qo3lnRS1k&t=9s',
              'https://www.youtube.com/watch?v=__cjKNzEr4U',
              'https://www.youtube.com/watch?v=mvSNjWDQCAE',
              'https://www.youtube.com/watch?v=4kLpo6TjTPU',
              'https://www.youtube.com/watch?v=_Bx9P32tdaM',
              'https://www.youtube.com/watch?v=hVseiV8rbUw'
                                          ])
    end
    it 'It checks if the array is not equal to dinner array' do
      expect(select.dinner).to_not eq([
        'https://www.youtube.com/watch?v=MuajFTgkoHw', 
        'https://www.youtube.com/watch?v=28GCv_C-SVI',
        'https://www.youtube.com/watch?v=EtT6WhbiLJY',
        'https://www.youtube.com/watch?v=Iy3mUtlvw84',
        'https://www.youtube.com/watch?v=l7NUssiZTPk',
        'https://www.youtube.com/watch?v=V7vofXwkY0E',
        'https://www.youtube.com/watch?v=UIl_5rpi2lI'
                                    ])
    end
    it 'It checks if the array is equal to elevenses array' do
      expect(select.elevenses).to match_array([
        'https://www.youtube.com/watch?v=Cqma4wBNG8s',
        'https://www.youtube.com/watch?v=HxPYYMsR0RE',
        'https://www.youtube.com/watch?v=DmLEMHaRPHQ',
        'https://www.youtube.com/watch?v=RRCtxTTUZD8',
        'https://www.youtube.com/watch?v=KmR3w42LQWM',
        'https://www.youtube.com/watch?v=mdOqstPfm1w',
        'https://www.youtube.com/watch?v=0TRokMB9AnI'
                                          ])
    end
    it 'It checks if the array is not equal to elevenses array' do
      expect(select.elevenses).to_not eq([
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
end #general
