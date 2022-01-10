#!/usr/bin/env python3

from selenium import webdriver
from selenium.webdriver.firefox.options import Options
import os
import datetime

class Bot:
    url = ''
    email = ''
    def __init__(self, weburl, email):
        self.url = weburl
        self.email = email
        if self.isAvailable():
            self.sendNotification()
            
    
    # Return bool
    def isAvailable(self):
        firefoxOptions = Options()
        firefoxOptions.add_argument("--headless")
        driver = webdriver.Firefox(options=firefoxOptions)
        driver.get(self.url)
        #assert "Python" in driver.title
        elemName = "fulfillment-add-to-cart-button"
        elem= driver.find_element_by_class_name(elemName)
        print(datetime.datetime.now(), "Found button!")
        try:
            elem = driver.find_element("xpath", "//*[text()='Sold Out']")
            print(datetime.datetime.now(), "Sold out")
            driver.close()
            return False
        except:
            print(datetime.datetime.now(), "In stock!")
            driver.close()
            return True
        
    
    def sendNotification(self):
        filename = "message.sh"
        message = '''
{
  echo To: ''' + self.email + '''
  echo Subject: Item available!!
  echo
  echo "The item that you have been waiting for is now available!!"
  echo "Please go to the following URL:"
  echo ''' + self.url + '''
  echo Sincerely,
  echo The Kyle Best Buy Bot
} | mail ''' + self.email
        
        myfile = open(filename, "w")
        myfile.write(message)
        myfile.close()
        
        os.system("chmod +x " + filename)
        os.system("./" + filename)
        print(datetime.datetime.now(), "Email sent!")

if __name__ == "__main__":
    #
    #https://www.bestbuy.com/site/rocketfish-8-8k-ultra-high-speed-hdmi-certified-cable-black/6430950.p?skuId=6430950
    gpuUrl = "https://www.bestbuy.com/site/nvidia-geforce-rtx-3060-ti-8gb-gddr6-pci-express-4-0-graphics-card-steel-and-black/6439402.p?skuId=6439402"
    hdmiUrl = "https://www.bestbuy.com/site/rocketfish-8-8k-ultra-high-speed-hdmi-certified-cable-black/6430950.p?skuId=6430950"

    email1 = "6822565157@tmomail.net,"
    email2 = "spykercar009@gmail.com,"
    email3 = "kyle.nishimuta@ngc.com,"
    mailList = email1 + email2 + email3 
    obj = Bot(gpuUrl, mailList)
