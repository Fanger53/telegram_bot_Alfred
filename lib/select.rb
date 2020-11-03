require_relative '../lib/bot'

class Selector
  attr_reader :breakfast, :lunch, :dinner, :elevenses 
  def initialize
    @breakfast = ['https://www.youtube.com/watch?v=MuajFTgkoHw',
                  'https://www.youtube.com/watch?v=28GCv_C-SVI',
                  'https://www.youtube.com/watch?v=EtT6WhbiLJY',
                  'https://www.youtube.com/watch?v=Iy3mUtlvw84',
                  'https://www.youtube.com/watch?v=l7NUssiZTPk',
                  'https://www.youtube.com/watch?v=V7vofXwkY0E',
                  'https://www.youtube.com/watch?v=UIl_5rpi2lI'
                ]
    @lunch = ['https://www.youtube.com/watch?v=QZK0bqfITnI',
              'https://www.youtube.com/watch?v=mhDJNfV7hjk',
              'https://www.youtube.com/watch?v=MBkcmuTTrbU',
              'https://www.youtube.com/watch?v=Cm2XN5mbepg',
              'https://www.youtube.com/watch?v=J0LAvL4G_cA',
              'https://www.youtube.com/watch?v=LPPcNPdq_j4',
              'https://www.youtube.com/watch?v=_0yTwf3eJAA']

    @dinner = ['https://www.youtube.com/watch?v=X_qo3lnRS1k',
               'https://www.youtube.com/watch?v=Cyskqnp1j64',
               'https://www.youtube.com/watch?v=X_qo3lnRS1k&t=9s',
               'https://www.youtube.com/watch?v=__cjKNzEr4U',
               'https://www.youtube.com/watch?v=mvSNjWDQCAE',
               'https://www.youtube.com/watch?v=4kLpo6TjTPU',
               'https://www.youtube.com/watch?v=_Bx9P32tdaM',
               'https://www.youtube.com/watch?v=hVseiV8rbUw'
              ]

    @elevenses = ['https://www.youtube.com/watch?v=Cqma4wBNG8s',
                  'https://www.youtube.com/watch?v=HxPYYMsR0RE',
                  'https://www.youtube.com/watch?v=DmLEMHaRPHQ',
                  'https://www.youtube.com/watch?v=RRCtxTTUZD8',
                  'https://www.youtube.com/watch?v=KmR3w42LQWM',
                  'https://www.youtube.com/watch?v=mdOqstPfm1w',
                  'https://www.youtube.com/watch?v=0TRokMB9AnI'] 
  end

  def rand_select(meal)
    @meal_choise = meal.sample 
  end
end
