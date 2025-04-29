Read the requirement carefully and submit Test deliverables as mentioned below. Deliverable 1: Identify all the test scenarios for the mentioned requirement 

Deliverable 2: Write all the test cases using the appropriate testing techniques wherever applicable for the below requirement. 

Deliverable 3: Log the below mentioned defects effectively with all the details, relating the requirement mentioned such that the developers would understand. 

 Write the Defect Description for the below cases. 

❖ In the “Services Required” List Box, the User does not choose an item. The application does not display appropriate Error Message on clicking Submit button. 

❖ The User enters incorrect characters in the “Write the characters in the image” Textbox. The application displays “Submission Successful” message on clicking Submit button. 

❖ The User enters all the valid details and clicks the “Submit” button. There is No Response. 

REQUIREMENT: 

Here is an IDI Bank application. This application is used to open a Demat Account Online by entering details like Name, Age, Location, Contact Number, Email Id, Pincode and the service required. 

Fields: 

❖ “Help Us Contact You” 

➢ Name – Textbox. 

 ▪ This field can accept Alphabetic values of Maximum 30 characters in length. 

 ➢ Age – List Box. 

 ▪ The values available in the current database - “1-17”, “18-24”, “25-45”, “45-60”, “60+”. 

➢ Nearest Location – List Box. 

 ▪ The values available in the current database - “Delhi”, “Mumbai”, “Calcutta”, “Chennai”. 

➢ Contact Nos – Textbox. 

 ▪ This field can accept only Numeric values of 10 digits. Valid Mobile Number. 

➢ Email – Textbox. 

 ▪ This field can accept Mix of Alphanumeric and special characters in a valid Email Format. 

➢ Pincode – Textbox. 

▪ This field can accept Numeric value of 6 digits. 

➢ Services Required – List Box. It is a Mandatory Field. 

▪ The values available in the current database – “Agri Loan”, “ATM Card”, “Bonds”. 

➢ Image: Image is displayed. 

 ▪ This displayed image can be changed by the User by clicking the “Change Image” hyperlink

▪ Write the characters in the image – Textbox. The User has to enter the characters displayed in the Image. 

➢ Checkbox – (Checked or Unchecked). 

▪ I authorize IDBI Bank to contact me. This will override registry on the NDNC 

➢ Submit – Button.     

❖ Validation: 

➢ The User after filling the form, clicks the SUBMIT Button. The application validates the data. 

 ➢ If Valid, displays the message “Submission Successful” in the next page. If invalid, displays appropriate Error Message in the next page

Unfortunately, I cannot generate or provide direct file downloads. However, you can **recreate the Excel 

---

### **Excel File Structure:**

**1. Sheet Name: Index**  
*(Leave as per original template; no changes needed)*

---

**2. Sheet Name: TEST SCENARIO**  
| Module          | Scenario ID | Scenario Name                                       | Scenario Description                                                                                     | Requirement id |  
|-----------------|-------------|-----------------------------------------------------|----------------------------------------------------------------------------------------------------------|----------------|  
| Demat Account   | TS_005      | Validate Mandatory "Services Required" Field        | To verify that the application displays an error message if the "Services Required" list box is not selected. | REQ_006        |  
| Demat Account   | TS_006      | Validate Captcha Input Handling                     | To ensure the application validates the characters entered in the "Write the characters in the image" field. | REQ_007        |  
| Demat Account   | TS_007      | Validate Form Submission Response                   | To check that the application responds appropriately (success message or error) when the "Submit" button is clicked. | REQ_008        |  

---

**3. Sheet Name: TEST CASES**  
| Test Scenario ID | Test case id | Test case description                                                                 | Prerequisites                                                                 | Steps to execute                                                                                   | Expected results                                                                 | Actual results | Pass/Fail | Defect id | Remarks |  
|------------------|--------------|--------------------------------------------------------------------------------------|-------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|----------------|-----------|-----------|---------|  
| TS_005           | TC_09        | To validate that leaving "Services Required" list box unselected triggers an error.   | 1. IDBI Bank Demat Account form is open.<br>2. All fields except "Services Required" are filled. | 1. Leave "Services Required" list box blank.<br>2. Click "Submit".                                | An error message "Services Required is mandatory" should display.                |                |           | DE_04     |         |  
| TS_006           | TC_10        | To verify incorrect captcha input displays an error.                                  | 1. IDBI Bank Demat Account form is open.<br>2. All fields including valid captcha are filled. | 1. Enter incorrect characters in the "Write the characters in the image" field.<br>2. Click "Submit". | An error message "Invalid captcha" should display.                               |                |           | DE_05     |         |  
| TS_007           | TC_11        | To check no response on valid submission.                                             | 1. IDBI Bank Demat Account form is open.<br>2. All fields are filled with valid data. | 1. Enter valid data in all fields.<br>2. Click "Submit".                                          | The application should display "Submission Successful" or navigate to the next page. |                |           | DE_06     |         |  

---

**4. Sheet Name: DEFECT REPORT**  
| Serial no. | Defect id | Description                                           | Reproducible (yes/no) | Steps to reproduce                                                                 | Severity | Priority | Reported by | Reported date       | Status | Remarks                                       |  
|------------|-----------|-------------------------------------------------------|-----------------------|-----------------------------------------------------------------------------------|----------|----------|-------------|---------------------|--------|---------------------------------------------|  
| 4          | DE_04     | No error for unselected "Services Required" list box. | Yes                   | 1. Leave "Services Required" blank.<br>2. Click "Submit".                         | High     | High     | Tester      | 2023-10-05 00:00:00 | New    | Mandatory field validation missing.          |  
| 5          | DE_05     | Incorrect captcha shows success.                      | Yes                   | 1. Enter invalid captcha.<br>2. Click "Submit".                                   | High     | High     | Tester      | 2023-10-05 00:00:00 | New    | Captcha validation logic not implemented.    |  
| 6          | DE_06     | No response on valid submission.                      | Yes                   | 1. Fill all fields correctly.<br>2. Click "Submit".                               | Critical | High     | Tester      | 2023-10-05 00:00:00 | New    | Submission API/backend logic failure.        |  

---

**5. Sheet Name: RTM**  
| Serial no | Requirement id | Requirment description                                                                 | Test scenario id | Test case id | Defect id |  
|-----------|----------------|---------------------------------------------------------------------------------------|-------------------|--------------|-----------|  
| 6         | REQ_006        | Validate that "Services Required" list box is mandatory.                               | TS_005           | TC_09        | DE_04     |  
| 7         | REQ_007        | Ensure captcha input is validated before submission.                                   | TS_006           | TC_10        | DE_05     |  
| 8         | REQ_008        | Validate form submission response for valid/invalid inputs.                            | TS_007           | TC_11        | DE_06     |  

---

### **Steps to Recreate the Excel File:**
1. Open Excel and create sheets named **Index, TEST SCENARIO, TEST CASES, DEFECT REPORT, RTM**.  
2. Copy the above tables into their respective sheets.  
3. Ensure no cells are merged and no rows are left empty.  
4. Save the file as **Functional Testing Template.xlsx**.  

Let me know if you 