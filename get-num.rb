def convertSharpToNum(asciiart,input_num)
  num = asciiart.scan('#').length
  num_string = ""
  loop{
   if num ==0 then
    break
   end
   num_string +="#{input_num}"
   num-=1
 }
 convertedAsciiart = asciiart.gsub("#"){num_string.slice!(0,1)}
 return convertedAsciiart
end

def getZero
  asciiart = <<END
    #######        
  ##       ##      
##           ##    
##           ##    
##           ##    
##           ##    
##           ##    
##           ##    
##           ##    
  ##       ##      
    #######        
END

  return convertSharpToNum(asciiart,0);
end

# 数：35
def getOne
  asciiart = <<END
     ####          
  ##   ##          
##     ##          
       ##          
       ##          
       ##          
       ##          
       ##          
       ##          
       ##          
  #############    
END
return convertSharpToNum(asciiart,1);
end

# 数：37
def getTwo
  asciiart = <<END
    #####           
  ##     ##         
##        ##        
        ##          
        ##          
      ##            
    ##              
    ##              
  ##                
##                  
###############     
END
    return convertSharpToNum(asciiart,2);
end

# 数：32
def getThree
  asciiart = <<END
  ####           
##    ##         
        ##       
        ###      
      #####      
   ########      
      #####      
        ###      
        ##       
##    ##         
  ####           
END
return convertSharpToNum(asciiart,3);
end

# 数：45
def getFour
  asciiart = <<END
     ##    ##     
    ##     ##      
   ##      ##      
  ##       ##      
 ##        ##      
##         ##      
#################  
           ##      
           ##      
           ##      
           ##      
END
return convertSharpToNum(asciiart,4);
end

def getFive
  asciiart = <<END
##############    
##                
##                
##                
###########       
            ##    
            ##    
            ##    
##         ##     
  ##      ##      
  #######         
END
return convertSharpToNum(asciiart,5);
end

def getSix
  asciiart = <<END
    #######       
  ##        ##    
##           ##   
##                
##                
#############     
##           ##   
##            ##  
##           ##   
  ##        ##    
  #########       
END
  return convertSharpToNum(asciiart,6);
end

def getSeven
  asciiart = <<END
##############     
##          ##     
##         ##      
          ##       
          ##       
        ##         
        ##         
      ##           
      ##           
    ##             
    ##             
END
  return convertSharpToNum(asciiart,7);
end

def getEight
  asciiart = <<END
    #######        
  ##       ##      
##           ##    
##           ##    
  ##       ##      
    #######        
  ##       ##      
##           ##    
##           ##    
  ##       ##      
    #######        
END
  return convertSharpToNum(asciiart,8);
end

def getNine
  asciiart = <<END
    #######        
  ##       ##      
##           ##    
##           ##    
  ##       ##      
    #######        
        ##         
        ##         
      ##           
      ##           
    ##             
END
  return convertSharpToNum(asciiart,9);
end

def getTen
  asciiart = <<END
  ####                  #######
  ##  ##              ##       ##
##    ##            ##          ##
      ##            ##          ##
      ##            ##          ##
      ##            ##          ##
      ##            ##          ##
      ##            ##          ## 
      ##            ##         ##
      ##             ##       ##
#############          #######
END
  return convertSharpToNum(asciiart,10);
end

def getNum(input_num)
  case input_num
  when 0 then 
    return getZero
  when 1 then 
    return getOne
  when 2 then
    return getTwo
  when 3  then
    return getThree
  when 4  then
    return getFour
  when 5  then
    return getFive
  when 6  then
    return getSix
  when 7  then
    return getSeven
  when 8  then
    return getEight
  when 9  then
    return getNine
  end
end
  