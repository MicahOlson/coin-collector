#/usr/bin/env ruby

require_relative("coin_reducer")

class CoinCount
  @@coinage = Coin.new()
  def self.start_count
    puts <<-HERE
                        ~~
                          ~~
                          ~~
                          ``
        __________________| |________
        Welcome To The Coin Zone Baby
        
            _.oood"""""""booo._
         _.o""   |`.  |    |   ""o._
       oP"  |`.  |  `.|    |    |  "Yo
     o8 `.  |  `.|    |.   |    |    `8o
    d'    `.|    |.   | `. |    |      `b
   d"-------*====+====+====+====+-------"b
  8'  `.    INNNNINNNNINNNNINNNNI        `8
 8      `.  INNNNINNNNINNNNINNNNI          8
,8----------+====*====+====+====+----------8.
8'  `.     `|    |`.  |gnnnnnnnn|.         `8
8     `.    |`.  |  `.|8   |.   | `.        8
8-----------+----+----*8---+----+-----------8
8        `. |   `|    |8,gnnnn:.|    `.     8
8.         `|    |`.  |8P".| "Yb|..png.`.  ,8
`8----------+----+----+----+---8+-8--`"----8'
 8          | `. |   `|n.  |`.dP| 8`. n    8
  8.        |   `|    |"YbnnndP.| `bnnP  ,8
   Y.-------+----+----+----+----+-------.P
    Y.      |    | `. |   `|    |`.    ,P
     "8.    | cg |   `|    |`.  |  `. 8"
       "Y_  | mm |  19|89  |  `.|  _P"
         `'"oo_  |    |  `.|  _oo""'
              `"""boooooood"""'

    HERE
    puts "Get the minimum number of coins needed for a value."
    print "Enter a value: "
    puts @@coinage.cascade(gets.chomp)
  end
end
CoinCount.start_count
