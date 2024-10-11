
**Setup:**
For Mac, 

1. Install python3 v3.10+ and pip.

2. Install robotframework version 4+.

       pip install robotframework

   In case, Upgrade to the latest version.

       pip install --upgrade robotframework

   In case, Install a specific version.

       pip install robotframework==4.1.3


3.  Check that the path for python and pip is added to the .bash_profile, if not add it manually Run the command vi .bash_profile.
   (if you have installed python through the installer (in Step 1) you should see the path automatically added.)

      In ~/.bash_profiile,

           # Setting PATH for Python 3.10
           # The original version is saved in .bash_profile.pysave 
           PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}" 
           export PATH


4. Install SeleniumLibrary via pip.

       pip install robotframework-selenium2library

   In case, upgrade robotframework-selenium.

       pip install --upgrade robotframework-selenium2library


5. Install Chrome Driver upon to support your Chorme Browser version.

   5.1 via brew command.

       brew install chromedriver
   
   OR
   
   5.2 download from website here.

   https://chromedriver.chromium.org/downloads ,
   
   https://chromedriver.storage.googleapis.com/index.html?path=111.0.5563.64/

   5.2.1 copy chromedriver to /user/local/bin .
      
       mv chromedriver /usr/local/bin

   5.2.2 ensure has path in /usr/local/bin. See https://www.swtestacademy.com/install-chrome-driver-on-mac/ .

   5.2.3 try to open chromedriver, if found popup error about **‘app is unidentified developer’**.
      
   5.2.3.1 via cmd 
      
       xattr -d com.apple.quarantine /usr/local/bin/chromedriver

   OR
     

   5.2.3.2 Interface Mac -> System Preferences. See also https://timonweb.com/misc/fixing-error-chromedriver-cannot-be-opened-because-the-developer-cannot-be-verified-unable-to-launch-the-chrome-browser-on-mac-os/ .

**How to run test:**

1. Ensure can run this command.

       robot --version

2. Then it's ready to run the test cases:
   For, running all test cases.

       robot -d results tests/Owasp.robot

   For, running test only tag (2 test cases with ‘checkout’ tag, and 1 test case with ‘search’ tag).

       robot -d results -i checkout tests/Owasp.robot 

       robot -d results -i search tests/Owasp.robot

   After finished running test, the Test report will be generated under Results/report.html.

**Install PyCharm IDE:**
1. For IDE, install PyCharm (Community Edition) from https://www.jetbrains.com/pycharm/download/#section=mac .

   1.1 In PyCharm -> Preferences -> Plugin -> Install ‘intellibot’ -> restart.



   
