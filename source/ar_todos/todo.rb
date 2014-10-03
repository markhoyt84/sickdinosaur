$score = 0
require_relative 'config/application'
# require_relative 'app/models/view/user'

module Login

def self.prompt
  print ">>  "
end

def self.waiting
  5.times do |x|
      sleep(0.5)
        x = (".")
        print x
      end
end

def self.login_welcome
  puts "Returning users Press 2?"
  puts "New users Press 1"
  answer = gets.chomp.to_i
    if answer == 2
      user = User.all
      user.each do |login|
        p login
        puts "What is your username?"
        user_name = gets.chomp
          if login.username == user_name
            $user = login.username
            puts "Welcome back #{$user.name}"
          else
            puts "Your high-score to beat is #{$user.score}"
          end
      end
    elsif answer == 1
      puts "What is your first name?"
      prompt
      first_name = gets.chomp
      puts "What would you like to be your username?"
      prompt
      user_name = gets.chomp
      new_person = User.new_user(first_name, user_name)
      $user = new_person
      waiting
      puts "New user creation successful!"
      puts "Welcome #{$user.name}"
    end
end

def self.clear_screen
  sleep 2
  print "\e[2J"
  print "\e[H"
end

end

require_relative 'config/application'
# Type this into the console to see what each part does.
# $LOAD_PATH.unshift(File.expand_path('.'))

# Dir["lib/*.rb"].each do |file_to_load|
#   require file_to_load
# end

# puts "Put your application code in #{File.expand_path(__FILE__)}"

class FullGame
  $user = nil
  def self.run
    Login.clear_screen
    puts "Welcome to our game"
    include Login
    Login::login_welcome
    Login.clear_screen
    puts "Welcome to our game"
    puts <<-eos

                                       _    _
              o                       / \\  / \\
               \\_/\\                   \\  \\/  /
              ( Oo)                    \\love/
              (_=-)  .===O-  ~~Z~A~P~~  \\  /
              /   \\_/U'                  \\/
              ||  |_/
              \\\\  |
              {K ||
               | PP
               | ||
               (__\\\\


    eos
    puts "Cute Aliens from planet Moron Mountain are invading Earth!"
    puts "And they are demanding the best of humanity to play humanity's own most idiotic games"
    puts "to save Earth from total annihilation!!!"
    gets.chomp
    Login.clear_screen
    puts <<-eos

            _.-^^---....,,--
        _--                  --_
       <                        >)
       |                         |
        \\._                   _./
           ```--. . , ; .--'''
                 | |   |
              .-=||  | |=-.
              `-=#$5&5$#=-'
                 | ;  :|
        _____.,-#5&$@5#&#~,._____


    eos
    puts "Humanity's greatest minds have come together to use"
    puts "Google's lucky Search to find the best human candidate to play these games of life and death."
    puts "And they have all agree unanimously that YOU are our best bet!"
    gets.chomp
    Login.clear_screen


    puts "The whole world is watching you as one of the cute alien hand you the new iPhone 6 and now LET'S THE GAME BEGIN!!!


    -------------------------------------------------------------------------------------------------
    "
    gets.chomp


    puts "Cute Aliens hand you game 1!"
    require_relative './lib/trivial_trivia'

    puts "Your current score is #{$score}"

    Login.clear_screen


    puts "Cute Aliens hand you game 2!"
    require_relative './lib/math_minigame'
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen


    puts "Cute Aliens hand you game 3!"
    puts "Welcome to Hangman!!!!!"
    puts "Here is your color. Guess away..."
    sleep 2
    require_relative './lib/hang_man'
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen

    puts "Cute Aliens hand you game 4!"
    require_relative './lib/high_low'
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen

    puts "Cute Aliens hand you game 5!"
    puts "Welcome to Flash Memory!"
    puts "A sequence of words will pop up, and its your job to remember them!"
    puts "Input each word as prompted, and good luck!"
    sleep 2
    require_relative './lib/flash_memory_medium'

    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen


    puts "Cute Aliens hand you game 6!"
    sleep 2
    require_relative "./lib/rock_paper_scissors"
    puts "Your current score is #{$score}"
    sleep 2
    Login.clear_screen
    puts "Great job for finishing the game!"
    puts "Your final score is #{$score}!"
    if $score > 300
    puts <<-eos
    o               .        ___---___                    .
           .              .--\\        --.     .     .         .
                        ./.;_.\\     __/~ \\.
                       /;  / `-'  __\\    . \\
     .        .       / ,--'     / .   .;   \\        |
                     | .|       /       __   |      -O-       .
                    |__/    __ |  . ;   \\ | . |      |
                    |      /  \\\\_    . ;| \\___|
       .    o       |      \\  .~\\\\___,--'     |           .
                     |     | . ; ~~~~\\_    __|
        |             \\    \\   .  .  ; \\  /_/   .
       -O-        .    \\   /         . |  ~/                  .
        |    .          ~\\ \\   .      /  /~          o
      .                   ~--___ ; ___--~
                     .          ---         .

    Woah!! Great Job. You saved Earth from Cute Aliens!!! Celebrate!!

    -------------------------------------------------------------------------------------------------

    eos
  else
    puts <<-eos
    b..  `q*$$$$$$#$$$$$$$$$$$$$$$$$$$P'""""`q$$$$$P'""`q$$$$$$$$$$$$$$$$#,$$$$$$$$$
    $c$cb' `$$$$$$$u*$$$$$$$$$$$$P'""'  ,'"   `"qP ^     `q$$$$$$$$$$$$Ei*)8$$$$$$$$
    $$C'`qe `$$$$*"4l'$*%RP'"'         db.  4              `q$$$$$$$$$$$$"@$$$$$$$$$
    $$L.,d3$k`$$F    *\   .,,.     '~# `qb.     .zNdouesx= .  "`q$$$$$$$$$$$$$$$$$$$
    $$$o.`"'""`qNb.      d$$$$$b..      ,qb. :d$""*$$6k%     `.     "$$$$$*`$$$$$$$$
    $$$$$.     ,dp'"'    q$$pq$$N$P'"`,d$$3b.`R"eu.`@$@ .      `*@c.  ^*F  .$$$$$$$$
    $$$$$$K' ,d$$",P' `. `6' `q@$P   d6$$$$$$bq$$$P f" r,db.    \@$*do    J$$$$*3$$$
    $$b$$$k  q4$u-%'     .     `'   d$$$$$$$$o@$$$'-":,d$$$$b    )@$$B\  ...'Ld$$$$$
    $$$$$d-  `$RE$6.     ,.   ,db. ,$$$$$$$$$$$$$P .,d$$$$$$$.    "#$$$ .$#d9$$$$$$$
    $$$$$$'   `qJ2B$$  ,$P   ,$$$$$o$$$$Pq$$$$$$$' 4`q$$$$$$$b       "$$$$$$$$$$Pq$$
    *$P**$o.  ,dCb. ,d6P'`q$P'        `q$$$$$%$$$$$$$$$$$$$$N     q$$$$$$b'    `3$b `$$$$$$
    $I$$$$*= `"'  ,   .,,d$$b..,d$$$P"d$$$$$$$$$$$*"#"      q$$$$$$b"Lu  $$$> $$$$$$
    ).>*$' .     d$  '"`q$$$$$x$$$$P,dNq$6$B$$$$$ d$ee  -    $$$$$P'$$$  q$$$,d$$$$$
    C$P'   $.    q$.     q*$$$ ^#*"u$$$bqN$B9$$$$+$$B$$/L  e  q$$$$ $$$  `R$$$$$$$$$
    $$'    `b.    q$.     qN$$r   3$$$$$`$$$$b)*RN$%d$$B6$*u  `$$$$,d$P"  q$$$$$$$$$
    $$l..   `=..   qbb    `33B$   $$$$$$b$$$$$*N$$$$$#P=BB$Bc  $$$$$$ $   `$$$$$$$$$
    $$$$*"'  `qNL   `$b.   qI@$F  $$$$$$$$$$$$$$$$$@P' `d$$$6 .L^=R$u$$    q$EKJ$$$$
    $$$$c.     qRr   `qb   `3I#J  t$$$$$$$$$$$$$$kP'  .d$$$$P dN(/b'`q$L   `*%m$CW2$
    $$$$$F     `$e:..,dP    ,$*%7uz$$$$$$$$$$$9R*L'  .d$$$$P' 8B$$$b  q$r   $$$$$$$$
    $$$$P`       *W3b"'   ,d$$ `2d$$$$$$$$$$$N)@B3b.d$$$$E%'  *$$$$N. `*\   q$$$$$$e
    $$$$'.,.      `"' ,'~' q$$ .@$$$$$$$$Pq$$$$$$$$$$$$$$$'  ,$$$t$$b  '     `"""`qe
    **$$ .?.q=r.            qb^'?3$$$$$$$bd$$$$$$$$$$$$$$$NbuB$$$$$$$   .,db..  .,d$
    $$b. ,$>`qP'<            '~?$ `q#$$$$$$$$$$$$$$$$$$$$$$$$$$$I$$$P  ,ued$$$$$$$$$
    $$$$,JP'  ` :      J*$$b    "   `9BE$$$$$$$$$$$$$$$$$$$$$$$$$$$P'  de(~$$$$$$$$$
    $$$$k3R     $    =$$$P\$$u \Wc   $7P%$$$$P$$$$$$$$$$$*$$$$$$$$$$b. q$$$$$$$$$$$$
    $$$$P'~     $     .$ o$$$$$d$$  ,d' ,d$$$bq$$$$$$$$$$$$$$$$$$$$$$$b.q'`q$$$$$c^*
    $$$$X..     B     C.$$$$$$$$$$$kucb,d$$$$$`$$$$$$$$$$$$$9$$$9$$$4$$$$. `$R$$$$$o
    $$$$NF-     Fb    :R$$$$Pq$$$$$$$@$e$$$$$$ $$$$$$$$$$B$P' ,d$$$N $#$$b  qu$$$$$$
    $$$$$l$:    `qb.   "$$$$bd$$$$$$$$$$$$$$$$,$$$$$$$$$B%' ,d$$$$$E:$ #$$  `$$$$$$$
    $$$*$$F       `'    4$$$$$$$$$$#$$$@$$$$$Pd$$$$$$#b.  .,d$$$$$$$$$$eu$   $$$$$$$
    $$*P'dL           $F R"*$$$$$d$o?$$$$$$#$'$$$$$$$$eu$$$$$$$$$$E'q$$*fP   4$$$e^*
    $$P' 9    =.      9$  $ "$$$$$$$$$$ `q$$# q$$$$$$$$$$$$$Pq6$$$F. q$CP'   d$$$$$.
    $P   $r  '4$r.     *$e$L  "$$$$$$$L.  q$? `q$P'hb$$$$$$$bd$$$$$b  `'     '"$$$$$
    P    *.   `q$o      X$$$    $$$$$$$c. `$N  #P'   `qRNQ$$$$$$$$$? ,'  ., ,   qR$$
         `$.   `qP       $x      ^$$$$$$b.d$P    ,d' ,d$$$$$$*$$$$"P b.,dP ,$b.,d$$$
    b..   `R.   $%f>$e.   *F~ f9$$$$$$$$$$bP   ,'  ,d$$$$$$$R` @$%'  2$$P  d$$$$$$$$
    eeeedr.`"  ,"   -$$b.   zozbM?`-\$$$$$$$b   ,d$$$$$$$$$$$`  `'   <*"  d$$J$$$$$$
    $$$$$Nk.   W.    :$$$b   $$$b#x$@$$$$$$$$b.d$$$$$$$$$$$$$$r       ' ,d$$$$$2$$$$
    $$)$$$$E/  qN.   "$$$$b $$Z'^"$$$$$$$$4$$$$$$$$$$$$$$$$$$$N        `!@$$$$$$$$$$
    E$$$R$$$b  `q$b@@$$$$$$ 9$Ndo.. `"*`q$$$$$$$$$$$$$$$$$$$F!      ,   2$$$"$$$$$$$
    $$Pq$$$$$N  `$$$$6$$*$P  "$$F$$Neeu.`q$$$$$$$$P'3$*#*$$$r      d'  ,$$$$$K$$$$$$
    $$bd$$$$$$    q$$ppP*P'          .,$ `q$$$$$$P'  -    "      ,d$. ,dP'"    "`q$$
    $$$$$$E$" ,$$. `"d$b' ,,..   ,ued$$b.  `"q*$P'""R#.  ..    .,d$N?WdP'        `$$
    $$$$$$P ,z$$$$$euz$$$$$N@$$$$$$$$NPM$b..      .,$$$b. qb*$$$$$$$b$$$          $$
    $$$$$$$d$$$$$$$$$$$$$$$$$$$$$$$$$$'4$$$$$b.,d$$$$$$$b.`qb#$$$$$"'q$$.        ,$$

    OOPS....I guess your score is too low.. (The Earth has been destroyed by the cute aliens!!!!)

    eos
    end
    $user.high_score($score)
  end
end

FullGame.run

