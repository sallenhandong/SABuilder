require 'open-uri'  
  
url = "https://codeload.github.com/sallenhandong/SABuilder_BaseModule/zip/master"  
open(url) do |fin|  
  size = fin.size  
  download_size = 0  
  puts "size: #{size}"  
  filename = url[url.rindex('/')+1, url.length-1]  
  puts "name: #{"src.zip"}"  
  open(File.basename("./#{"src.zip"}"),"wb") do |fout|  
     while buf = fin.read(1024) do  
       fout.write buf  
       download_size += 1024  
       #sleep(0.5)  
       print "Downloaded #{download_size * 100 / size}%\r"  
       STDOUT.flush   
    end  
  end  
end  


