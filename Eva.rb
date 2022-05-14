while  true
    options = 
        { "1" => "RGB: Residential Purpose(Up to & including 15 W)",
        "2" => "GLP: Residential Purpose(Up to & including 15 W)",
        "3" => "non-rpg: Residential Purpose(Up to & including 15 W)",
        "4" => "LTP: Residential Purpose(Up to & including 15 W)",
        "5" => "LTMD: Residential Purpose(Up to & including 15 W)",
        "6" => "LTMD 2: Residential Purpose(Up to & including 15 W)",
        "7" => "SL: Residential Purpose(Up to & including 15 W)",
        "8" => "LEV: Residential Purpose(Up to & including 15 W)",
        "9" => "TMP: Residential Purpose(Up to & including 15 W)",
        "10" => "HTMD-1: Residential Purpose(Up to & including 15 W)",
        "11" => "HTMD-2: Residential Purpose(Up to & including 15 W)",
        "12" => "HTMD-3: Residential Purpose(Up to & including 15 W)",
        "13" => "EV: Residential Purpose(Up to & including 15 W)",
        "14" => "HTMD: Residential Purpose(Up to & including 15 W)"
        }
    
    puts "Enter the Category Number:
        1 : RGB
        2 : GLP
        3 : non-rpg
        4 : LTP
        5 : LTMD 1
        6 : LTMD 2
        7 : SL
        8 : LEV
        9 : TMP
        10 : HTMD-1
        11 : HTMD-2
        12 : HTMD-3
        13 : EV
        14 : HTMD"
    op = gets.chomp
    case op 
    when op = "1"
       
    if op =="1"
    puts "Enter Suboptions: 
        1 : RGP : Residential Plurpose(Up to & including 15 KW)
        2 : BPL : Below Poverty Line" 
        suboption = gets.chomp
        sub = {
            "1" => "RGP : Residential Plurpose(Up to & including 15 KW)",
            "2" => "BPL : Below Poverty Line"
        }
        
    end

    case suboption
    
    when suboption = "1"
    #PART 1
    puts "Enter no. of units "
    u = gets.chomp.to_i
    puts "Enter the phase single or three"
    phase=gets.chomp
    
    y = 0
    z= 0
    
    if u < 50 
       a = u
    
    elsif u > 50 
      a = 50
    end
    
    if  u > 50 && u < 200
       y  = u -50 
    
    elsif u > 200
       y  = 150
       z =  u - 200
    end
    
    if phase =="single"
       ph= 250
    elsif phase=="three"
       ph=650
    end
    h1 = a*320
    h2 = y*395
    h3 = z*500
    result =(h1 + h2 + h3 + ph)/100 
    puts "The charge of first 50 units is #{h1/100} "
    puts "The charge of next 150 units is #{h2/100}"
    puts "The charge of remaining unit is #{h3/100}"
    puts "The phase charge is #{ph}"
    puts "The Bill is Rs #{result}"
    
        #PART 2
        when suboption = "2"    
            puts "Enter no. of units"
            u = gets.chomp.to_i
            happy=0
            nexa = 0
            car= 0
            ph=500
            
            if u < 50 
               happy = u
            elsif u > 50
               happy = 50
            end
            
            if  u > 50 && u < 200
               nexa  = u -50 
            elsif u > 200
               nexa  = 150
            end
            
            if u > 200
               car =  u - 200
            end
            h1 = happy*150
            h2 = nexa*395
            h3 = car*500
            result =(h1 + h2 + h3 + ph)/100 
            puts "The charge of first 50 units is #{h1/100}"
            puts "The charge of next 150 units is #{h2/100}"
            puts "The charge of remaining unit is #{h3/100}"
            puts "The phase charge is #{ph}"
            puts "The Bill is Rs #{result}"    
    end
    when op = "2"
        puts "Enter the no. of Units"
        h = gets.chomp.to_i
        puts "Enter the phase Single or Three"
        i = gets.chomp.to_s
        hc = 0
    
        if h > 200
            hb = 200
        else 
            hb = h
        end
    
        if h > 200
            hc = h - 200
        end
    
        if i == "Single"
            hd = 30
        elsif i == "Three"
            hd = 70 
        end
        a = hb * 4.1
        b = hc * 4.8
        puts "The charge of first 200 units is #{a}"
        puts "The price of remaining units is #{b}"
        puts "The charge of phase is #{hd}"
        
        result = a + b + hd

        puts "bill is :#{result}"
    
    when op = "3"
    
        puts "Enter no. of units"
        ab = gets.chomp.to_i
    
        puts "Enter the watt value less than 15"
        ac = gets.chomp.to_i
    
        a = 0
        h = 0
    
        a = ab * 4.6
    
        if ac <= 5
            h = ac * 70
        elsif ac > 5 && ac <= 15
            h = ac * 90
        end
    
        result = a + h
        puts "Energy charges is : #{a}"
        puts "Fixed charge is : #{h}"
        puts "Bill is Rs: #{result}"
    
    when op = "4"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        mc = 1.02
        a = num * 3.40
        result = a + mc
        puts "The energy charge is : #{a}"
        puts = "The minimum charge is : #{mc}"
        puts "The bill is Rs: #{result}"
    
    when op = "5"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        puts "Enter the Contract demand  "
        contract = gets.chomp.to_f
        puts "Enter the power factor  "
        p = gets.chomp.to_f
        if num <= 50
            a = num * 4.65
        else
            a = num * 4.80
        end
        
        if num <= 50
            fixedcharge=150
        elsif  num>50 && num<=80
            fixedcharge=185
        elsif num >80 && num <contract
            fixedcharge=245
        elsif num >contract
            fixedcharge=350
        end
        
        if p == 1
            c = 0.0015*num
        elsif p > 1
            c = 0.0027*num
        elsif p < 1
            c = 0.03*num
        end
        result = a + fixedcharge + c 
        puts "The Energy charge is : #{a}"
        puts "The Fixed charge is : #{fixedcharge}"
        puts "The power factor charge is : #{c}"
        puts "The bill is Rs: #{result}"
    
    when op = "6"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        puts "Enter the Contract demand  "
        contract = gets.chomp.to_f
        puts "Enter the power factor  "
        p = gets.chomp.to_f
        if num <= 50
            a = num * 4.80
        else
            a = num * 5.00
        end
    
        if num <= 50
            fixedcharge=175
        elsif  num>50 && num<=80
            fixedcharge=230
        elsif num >80 && num <contract
            fixedcharge=300
        elsif num >contract
            fixedcharge=425
        end
    
        if p == 1
            c = 0.0015*num
        elsif p > 1
            c = 0.0027*num
        elsif p < 1
            c = 0.03*num
        end
        result = a + fixedcharge + c 
        puts "The Energy charge is : #{a}"
        puts "The Fixed charge is : #{fixedcharge}"
        puts "The power factor charge is : #{c}"
        puts "The bill is Rs: #{result}"
    
    when op = "7"
        puts "Enter no. of units"
        r = gets.chomp.to_i
        e = r * 4.3
        result = e
        puts "Energy charge is #{e}"

        puts "The bill is Rs: #{e}"
    
    when op = "8"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        fc = 25
        a = num * 4.20
        result = a + fc
        puts "Fixed charge is #{fc}"
        puts "Energy charge is #{a}"

        puts "The bill is Rs: #{result}"
    
    when op = "9"
        puts "Enter no. of units"
        p = gets.chomp.to_i
        q = 25 * 30 
        y = p * 5.1
        result = q + y
        puts "Fixed charge is #{q}"
        puts "Energy charge is #{y}"
        puts "The bill is Rs: #{result}"
    
    when op = "10"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        puts "Enter the Contract Demand"
        contract = gets.chomp.to_f
        puts "Enter the power"
        p = gets.chomp.to_f
        puts "Enter nigth hours yes or no"
        night = gets.chomp
        nightamount=0
        if night == "yes"
            puts "Enter hours"
            nighthours = gets.chomp.to_f
            nightamount = nighthours * 0.30
        end
        if num <= 400
            a = num * 4.55
        elsif num > 400
            a = (400 * 4.55)  + (num - 400)*4.45
        end
        if num <= 1000
            fixedcharge=260
        elsif  num > 1000
            fixedcharge=335
        elsif num > contract
            fixedcharge=385
        end
    
        if p == 1
            c = 0.0015*num
        elsif p > 1
            c = 0.0027*num
        elsif p < 1
            c = 0.03*num
        end
        if num <= 300
        t = 0.80 * num
        elsif num > 300
        t = 1 * num
        end
        result = a + fixedcharge + c + t + nightamount
        puts "The Energy charge is : #{a}"
        puts "The Fixed charge is : #{fixedcharge}"
        puts "The power factor charge is : #{c}"
        puts "The TOU charge is : #{t}"
        puts "The Night charge is : #{nightamount}"
        puts "The bill is Rs : #{result} " 
        
    
    when op = "11"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        puts "Enter the contract demand"
        contract = gets.chomp.to_f
        puts "Enter the power"
        p = gets.chomp.to_f
        puts "Enter nigth hours yes or no"
        night = gets.chomp
        nightamount = 0
        if night == "yes"
            puts "Enter hours"
            nighthours = gets.chomp.to_f
            nightamount = nighthours * 0.30
        end
        if num <= contract
           b = num * 225
        elsif num > contract
           b =  num * 285
        end
        if p == 1
            c = 0.0015*num
        elsif p > 1
            c = 0.0027*num
        elsif p < 1
            c = 0.03*num
        end
        t = num * 0.60
        a = num * 4.10
        result = a + b + c + t + nightamount
        puts "The Energy charge is : #{a}"
        puts "The Fixed charge is : #{b}"
        puts "The power factor charge is : #{c}"
        puts "The TOU charge is : #{t}"
        puts "The Night charge is : #{nightamount}"
        puts "The bill is Rs : #{result} " 
        
    when op = "12"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        puts "Enter the contract demand"
        contract = gets.chomp.to_f
        puts "Enter the power factor  "
        p = gets.chomp.to_f
        a = num * 7.05
        if num <= contract
            b = num * 25 * 30
        elsif num > contract
            b = num * 30 * 30
        end
    
        if p == 1
            c = 0.0015*num
        elsif p > 1
            c = 0.0027*num
        elsif p < 1
            c = 0.03*num
        end
        t = num * 0.60
        result = a + b + c + t
        puts "The Energy charge is : #{a}"
        puts "The Fixed charge is : #{b}"
        puts "The power factor charge is : #{c}"
        puts "The TOU charge is : #{t}"
        puts "The bill is Rs : #{result} " 
        
    when op = "13"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        puts "Enter the Contract demand"
        cd = gets.chomp.to_f
        b = num * 4.10
        if num <= cd
            a = num * 25
        elsif num > cd 
            a = num * 50
        end
        result = a + b
        puts "The Energy charge is : #{b}"
        puts "The Demand charge is : #{a}"
        puts "The bill is : #{result}"
    
    when op = "14"
        puts "Enter the no. of Units"
        num = gets.chomp.to_f
        puts "Enter the contract demand"
        contract = gets.chomp.to_f
        puts "Enter the power factor  "
        p = gets.chomp.to_f
        puts "Enter nigth hours yes or no"
        night = gets.chomp
        nightamount=0
    
        if night == "yes"
            puts "Enter hours"
            nighthours = gets.chomp.to_f
            nightamount = nighthours * 0.30
        end
        a = num * 3.55
        if num <= contract
            b = num * 335 
        elsif num > contract
            b = num * 385
        end
        if p == 1
            c = 0.0015*num
        elsif p > 1
            c = 0.0027*num
        elsif p < 1
            c = 0.03*num
        end
        t = num * 0.60
        result = a + b + c + t + nightamount
        puts "The Energy charge is : #{a}"
        puts "The Fixed charge is : #{b}"
        puts "The power factor charge is : #{c}"
        puts "The TOU charge is : #{t}"
        puts "The Night charge is : #{nightamount}"
        puts "The bill is Rs : #{result} " 
    end
        puts "DO you wish to Countinue then Yes or No"
        ans = gets.chomp    
        if ans == "No"
            break
        end
    end