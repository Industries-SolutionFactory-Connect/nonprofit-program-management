BEGIN TRANSACTION;
CREATE TABLE "ApexClass" (
	id INTEGER NOT NULL, 
	"ApiVersion" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"LengthWithoutComments" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"IsValid" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ApplicationSubtypeDefinition" (
	id INTEGER NOT NULL, 
	"ApplicationUsageType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ApplicationSubtypeDefinition" VALUES(1,'ExplainabilityService','ISE - Identity Verification','ISE_IDV','ISE_IDV','en_US');
CREATE TABLE "Benefit" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"BenefitFrequency" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"BenefitStatus" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EndDateTime" VARCHAR(255), 
	"EnrollmentCount" VARCHAR(255), 
	"MaxBenefitAmount" VARCHAR(255), 
	"MinBenefitAmount" VARCHAR(255), 
	"StartDateTime" VARCHAR(255), 
	"BenefitTypeId" VARCHAR(255), 
	"GoalDefinitionId" VARCHAR(255), 
	"UnitId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Benefit" VALUES(1,'True','','Sample Benefit','Active','','','','','','','1','','1');
CREATE TABLE "BenefitType" (
	id INTEGER NOT NULL, 
	"Category" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BenefitType" VALUES(1,'','','Assistance','ProgramManagement');
CREATE TABLE "BrandTemplate" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Value" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "BusinessHours" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsDefault" VARCHAR(255), 
	"FridayEndTime" VARCHAR(255), 
	"FridayStartTime" VARCHAR(255), 
	"MondayEndTime" VARCHAR(255), 
	"MondayStartTime" VARCHAR(255), 
	"SaturdayEndTime" VARCHAR(255), 
	"SaturdayStartTime" VARCHAR(255), 
	"SundayEndTime" VARCHAR(255), 
	"SundayStartTime" VARCHAR(255), 
	"ThursdayEndTime" VARCHAR(255), 
	"ThursdayStartTime" VARCHAR(255), 
	"TimeZoneSidKey" VARCHAR(255), 
	"TuesdayEndTime" VARCHAR(255), 
	"TuesdayStartTime" VARCHAR(255), 
	"WednesdayEndTime" VARCHAR(255), 
	"WednesdayStartTime" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "BusinessProcess" (
	id INTEGER NOT NULL, 
	"TableEnumOrId" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "BusinessProcessTypeDef" (
	id INTEGER NOT NULL, 
	"ApplicationUsageType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BusinessProcessTypeDef" VALUES(1,'ExplainabilityService','ISE - Identity Verification Audit Trail','IDV_Audit','IDV_Audit','en_US');
CREATE TABLE "ContentAsset" (
	id INTEGER NOT NULL, 
	"MasterLabel" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"IsVisibleByExternalUsers" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ContentWorkspace" (
	id INTEGER NOT NULL, 
	"ShouldAddCreatorMembership" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"WorkspaceImageId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "EmailTemplate" (
	id INTEGER NOT NULL, 
	"ApiVersion" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"RelatedEntityType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Body" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Encoding" VARCHAR(255), 
	"HtmlValue" VARCHAR(255), 
	"Markup" VARCHAR(255), 
	"TemplateStyle" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"TemplateType" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"UiType" VARCHAR(255), 
	"BrandTemplateId" VARCHAR(255), 
	"EnhancedLetterheadId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "EmailTemplate" VALUES(1,'','True','','Follow up on meeting','Dear {!Contact.FirstName},  

I really enjoyed speaking with you today.  I think that {!Organization.Name} has a lot to offer {!Account.Name} and I look forward to our next meeting.  

Regards,  {!User.FirstName}','Contact: Follow Up (SAMPLE)','ISO-8859-1','','','none','Following up on our discussion today','text','ContactFollowUpSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(2,'','True','','Internal notification to lead owner when new lead is assigned.','*** NEW LEAD ASSIGNMENT NOTIFICATION ***  

The following lead has been assigned to you.  
Company:  {!Lead.Company} 
Lead Name:  {!Lead.Name}  

Click on the link to access the lead directly:  {!Lead.Link}','Leads:  New assignment notification (SAMPLE)','ISO-8859-1','','','none','New lead assigned to you:  {!Lead.Name} from {!Lead.Company}','text','LeadsNewassignmentnotificationSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(3,'','True','','Auto-response when new lead is submitted online.','Dear {!Lead.Name},  

Thank you for your interest in {!Organization.Name}.  We will be contacting you shortly.    

Sincerely,  The Team at {!Organization.Name}','Leads:  Web-to-Lead email response (SAMPLE)','ISO-8859-1','','','none','{!Organization.Name}:  Thank you for your inquiry','text','LeadsWebtoLeademailresponseSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(4,'','True','','Internal notification when case is escalated.','*** CASE ESCALATION ALERT ***  

The following case has been escalated:  
Company:  {!Account.Name} 
Case:  {!Case.CaseNumber}:  {!Case.Subject} 
Owner:  {!Case.OwnerFullName}  

Click on the link to access the case:  {!Case.Link}','SUPPORT: Case escalation notification (SAMPLE)','ISO-8859-1','','','none','Case # {!Case.CaseNumber}: {!Case.Subject} has been escalated.','text','SUPPORTCaseescalationnotificationSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(5,'','True','','Standard template for responses to customer inquiries.','Dear {!Contact.FirstName},   

{!Case.Solution_Description}   

Thank you,   
{!User.Name} 
{!Organization.Name}   

Your comment:   
{!Case.Description} 

{!Case.Solution_Attachments}','SUPPORT: Case Response with Solution (SAMPLE)','ISO-8859-1','','','none','Case {!Case.CaseNumber}:  {!Case.Subject}','text','SUPPORTCaseResponsewithSolutionSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(6,'','True','','Internal notification to case owner when case is assigned.','*** NEW CASE ASSIGNMENT NOTIFICATION ***  

The following case has been assigned to you.  
Company:  {!Account.Name} 
Contact Name:  {!Contact.Name} 
Case #:  {!Case.CaseNumber} 
Subject:  {!Case.Subject} 
Description: {!Case.Description}  

Click on the link to access the case:  {!Case.Link}','SUPPORT:  New assignment notification (SAMPLE)','ISO-8859-1','','','none','Case # {!Case.CaseNumber}: {!Case.Subject} has been assigned to you.','text','SUPPORTNewassignmentnotificationSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(7,'','True','','Sample email template that can be sent to your Self-Service customers to notify them a public comment has been added to their case.','

Your case # {!Case.CaseNumber}: {!Case.Subject} has been updated.  Please click on the link below
to view this case on the Self-Service portal.
<insert the link to your Self-Service portal login page here>

{!Organization.Name} Customer Support
','SUPPORT:  Self-Service New Comment Notification (SAMPLE)','ISO-8859-1','','','none','Your case {!Case.CaseNumber} has been updated','text','SUPPORTSelfServiceNewCommentNotificationSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(8,'','True','','Notification of login and password to new Self-Service user','

Dear {!Contact.FirstName},

Your {!Organization.Name} Self-Service portal login and password information is below.

Thank you,

{!Organization.Name} Customer Support
','SUPPORT:  Self-Service New User Login Information (SAMPLE)','ISO-8859-1','','','none','Your {!Organization.Name} Self-Service username and password','text','SUPPORTSelfServiceNewUserLoginInformationSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(9,'','True','','Notification of new password when Self-Service password is reset','

Dear {!Contact.FirstName},

Thank you for contacting customer support.  Your new Self-Service portal password can be found below.

Thank you,

{!User_Name}
{!Organization.Name} Customer Support
','SUPPORT:  Self-Service Reset Password  (SAMPLE)','ISO-8859-1','','','none','Your new {!Organization.Name} Self-Service password','text','SUPPORTSelfServiceResetPasswordSAMPLE','Aloha','','');
INSERT INTO "EmailTemplate" VALUES(10,'','True','','Auto-response when new case is submitted online.','Dear {!Case.SuppliedName},   

Thank you for submitting your question to us online. Case #{!Case.CaseNumber}: "{!Case.Subject}" has been created and a {!Organization.Name} Customer Advocate will respond to you shortly.   

Thank you,   
Customer Advocate Team  {!Organization.Name}','SUPPORT:  Web-to-Case email response (SAMPLE)','ISO-8859-1','','','none','{!Organization.Name} Case # {!Case.CaseNumber}:  {!Case.Subject}','text','SUPPORTWebtoCaseemailresponseSAMPLE','Aloha','','');
CREATE TABLE "EnhancedLetterhead" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ExplainabilityActionDef" (
	id INTEGER NOT NULL, 
	"ActionLogSchemaType" VARCHAR(255), 
	"ApplicationType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"IsInternal" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"ApplicationSubtypeId" VARCHAR(255), 
	"ProcessTypeId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ExplainabilityActionDef" VALUES(1,'Other','IndustryServiceExcellence','ISE IDV Audit Trail Log Def','ISE_IDVAudit','False','ISE_IDVAudit','en_US','1','1');
CREATE TABLE "ExplainabilityActionVersion" (
	id INTEGER NOT NULL, 
	"ActionLogMessageTemplate" VARCHAR(255), 
	"ActionSpecification" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"DefinitionVersion" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"ExplainabilityActionDefId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ExplainabilityActionVersion" VALUES(1,'','{}','True','1','ISE IDV Audit Trail Log Def Initial Version','ISE_IDVAudit','ISE_IDVAudit','en_US','1');
CREATE TABLE "Folder" (
	id INTEGER NOT NULL, 
	"AccessType" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsReadonly" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Folder" VALUES(1,'Public','CompanyDashboards','Company Dashboards','False','Dashboard','');
INSERT INTO "Folder" VALUES(2,'Public','SharedDocuments','Shared Documents','False','Document','');
INSERT INTO "Folder" VALUES(3,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(4,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(5,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(6,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(7,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(8,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(9,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(10,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(11,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(12,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(13,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(14,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(15,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(16,'Public','','','True','Report','');
INSERT INTO "Folder" VALUES(17,'Public','','','True','Report','');
CREATE TABLE "GoalDefinition" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "IdentityVerificationProcDef" (
	id INTEGER NOT NULL, 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"SearchLayoutType" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "IdentityVerificationProcDef" VALUES(1,'Sample Verification Flow','en_US','SampleVerificationFlow','Tab');
CREATE TABLE "IdentityVerificationProcDtl" (
	id INTEGER NOT NULL, 
	"DataSourceType" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"ObjectName" VARCHAR(255), 
	"OptionalVerifiersMinVerfCount" VARCHAR(255), 
	"SearchFilter" VARCHAR(255), 
	"SearchRecordUniqueIdField" VARCHAR(255), 
	"SearchResultSortBy" VARCHAR(255), 
	"SearchSequenceNumber" VARCHAR(255), 
	"SearchType" VARCHAR(255), 
	"ApexClassId" VARCHAR(255), 
	"IdentityVerificationProcDefId" VARCHAR(255), 
	"LinkedIdVerfProcessDetId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "IdentityVerificationProcDtl" VALUES(1,'Salesforce','True','Sample Account Search','en_US','SampleAccountSearch','Account','1','','Id','Name','1','Text-Based','','1','');
INSERT INTO "IdentityVerificationProcDtl" VALUES(2,'Salesforce','True','Sample Person Account Search','en_US','SamplePersonAccountSearch','Account','1','isPersonAccount = true','Id','Name','1','Text-Based','','1','');
CREATE TABLE "IdentityVerificationProcFld" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"CustomFieldLabel" VARCHAR(255), 
	"DataSourceType" VARCHAR(255), 
	"FieldName" VARCHAR(255), 
	"FieldType" VARCHAR(255), 
	"FieldValueFormula" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"SequenceNumber" VARCHAR(255), 
	"IdentityVerificationProcDtlId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "IdentityVerificationProcFld" VALUES(1,'True','','Salesforce','Name','requiredVerifier','','Sample Account Name','en_US','SampleAccountName','1','1');
INSERT INTO "IdentityVerificationProcFld" VALUES(2,'True','','Salesforce','Phone','optionalVerifier','','Sample Phone','en_US','SamplePhone','3','1');
INSERT INTO "IdentityVerificationProcFld" VALUES(3,'True','','Salesforce','BillingPostalCode','optionalVerifier','','Sample Postal Code','en_US','SamplePostalCode','4','1');
INSERT INTO "IdentityVerificationProcFld" VALUES(4,'True','','Salesforce','Name','resultField','','Sample Account','en_US','SampleAccount','1','1');
INSERT INTO "IdentityVerificationProcFld" VALUES(5,'True','','Salesforce','Phone','resultField','','Sample Phone Number','en_US','SamplePhoneNumber','3','1');
INSERT INTO "IdentityVerificationProcFld" VALUES(6,'True','','Salesforce','AccountNumber','requiredVerifier','','Sample Account Number','en_US','SampleAccountNumber','2','1');
INSERT INTO "IdentityVerificationProcFld" VALUES(7,'True','','Salesforce','AccountNumber','resultField','','Account Number Sample','en_US','AccountNumberSample','2','1');
INSERT INTO "IdentityVerificationProcFld" VALUES(8,'True','','Salesforce','PersonBirthdate','requiredVerifier','','Sample Birthdate','en_US','SampleBirthdate','2','2');
INSERT INTO "IdentityVerificationProcFld" VALUES(9,'True','','Salesforce','PersonBirthdate','resultField','','Sample Date of Birth','en_US','SampleDOB','2','2');
CREATE TABLE "JournalType" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "JournalType" VALUES(1,'Allocation journal type','AccountingSubledger','Allocation');
INSERT INTO "JournalType" VALUES(2,'Payment journal type','AccountingSubledger','Payment');
INSERT INTO "JournalType" VALUES(3,'Transaction journal type','AccountingSubledger','Transaction');
CREATE TABLE "Pricebook2" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "RecordType" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"SobjectType" VARCHAR(255), 
	"BusinessProcessId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "RecordType" VALUES(1,'','Business Account','Business_Account','Account','');
INSERT INTO "RecordType" VALUES(2,'','Person Account','PersonAccount','Account','');
CREATE TABLE "UnitOfMeasure" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"UnitCode" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "UnitOfMeasure" VALUES(1,'','Hours','Period','Hours');
CREATE TABLE "WebLink" (
	id INTEGER NOT NULL, 
	"OpenType" VARCHAR(255), 
	"LinkType" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DisplayType" VARCHAR(255), 
	"Height" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"EncodingKey" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"PageOrSobjectType" VARCHAR(255), 
	"IsProtected" VARCHAR(255), 
	"RequireRowSelection" VARCHAR(255), 
	"IsResizable" VARCHAR(255), 
	"ShowsLocation" VARCHAR(255), 
	"HasMenubar" VARCHAR(255), 
	"HasScrollbars" VARCHAR(255), 
	"ShowsStatus" VARCHAR(255), 
	"HasToolbar" VARCHAR(255), 
	"Url" VARCHAR(255), 
	"Width" VARCHAR(255), 
	"Position" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "WebLink" VALUES(1,'newWindow','url','','L','600','Altavista News','UTF-8','AltavistaNews','Account','False','False','True','True','True','True','True','True','http://news.altavista.com/search?nc=0&q={!Account_Name}','','none');
INSERT INTO "WebLink" VALUES(2,'newWindow','url','','L','600','Google Maps','UTF-8','GoogleMaps','Account','False','False','True','False','False','True','False','False','http://maps.google.com/maps?f=q&hl=en&q={!Account_BillingStreet}+{!Account_BillingCity}+{!Account_BillingState}&om=1','','none');
INSERT INTO "WebLink" VALUES(3,'newWindow','url','','L','600','Google News','UTF-8','GoogleNews','Account','False','False','True','False','False','True','False','False','http://www.google.com/news?&q={!Account_Name}&btnG=Search+News','','none');
INSERT INTO "WebLink" VALUES(4,'newWindow','url','','L','600','Google Search','UTF-8','GoogleSearch','Account','False','False','True','False','False','True','False','False','http://www.google.com/search?q={!Account_Name}','','none');
INSERT INTO "WebLink" VALUES(5,'newWindow','url','','L','600','Hoovers Profile','UTF-8','HooversProfile','Account','False','False','True','False','False','True','False','False','http://search.hoovers.com/cgi-bin/hol_search?which=company&query_string={!Account_Name}','','none');
INSERT INTO "WebLink" VALUES(6,'newWindow','url','','L','600','Yahoo Maps','UTF-8','YahooMaps','Account','False','False','True','True','True','True','True','True','http://maps.yahoo.com/py/maps.py?cn={!Account_BillingCountry}&csz={!Account_BillingCity}+{!Account_BillingState}+{!Account_BillingPostalCode}+&addr={!Account_BillingAddress}','','none');
INSERT INTO "WebLink" VALUES(7,'newWindow','url','','L','500','View All Campaign Members','UTF-8','ViewAllCampaignMembers','Campaign','False','False','True','False','False','True','False','False','/camp/rptcmpgncalldown.jsp?scope=1&scopeid={!Campaign_Name}','500','none');
INSERT INTO "WebLink" VALUES(8,'newWindow','url','','L','600','Google Maps','UTF-8','GoogleMaps','Contact','False','False','True','False','False','True','False','False','http://maps.google.com/maps?f=q&hl=en&q={!Contact_MailingStreet}+{!Contact_MailingCity}+{!Contact_MailingState}&om=1','','none');
INSERT INTO "WebLink" VALUES(9,'newWindow','url','','L','600','Google Search','UTF-8','GoogleSearch','Contact','False','False','True','False','False','True','False','False','http://www.google.com/search?q={!Contact_FirstName} {!Contact_LastName}','','none');
INSERT INTO "WebLink" VALUES(10,'newWindow','url','','L','600','Send Gmail','UTF-8','SendGmail','Contact','False','False','True','False','False','True','False','False','https://mail.google.com/mail?view=cm&tf=0&to={!Contact_Email}<{!Contact_LastName}, {!Contact_FirstName}>&tf=1','','none');
INSERT INTO "WebLink" VALUES(11,'newWindow','url','','L','600','Yahoo! Maps','UTF-8','YahooMaps','Contact','False','False','True','True','True','True','True','True','http://maps.yahoo.com/py/maps.py?cn={!Contact_MailingCountry}&csz={!Contact_MailingCity}+{!Contact_MailingState}+{!Contact_MailingPostalCode}+&addr={!Contact_MailingAddress}','','none');
INSERT INTO "WebLink" VALUES(12,'newWindow','url','','L','600','Yahoo! Weather','UTF-8','YahooWeather','Contact','False','False','True','False','False','True','False','False','http://weather.yahoo.com/search/weather2?p={!Contact_MailingPostalCode}','','none');
INSERT INTO "WebLink" VALUES(13,'newWindow','url','','L','600','Altavista News','UTF-8','AltavistaNews','Lead','False','False','True','True','True','True','True','True','http://news.altavista.com/search?nc=0&q={!Lead_Company}','','none');
INSERT INTO "WebLink" VALUES(14,'newWindow','url','','L','600','Google Maps','UTF-8','GoogleMaps','Lead','False','False','True','False','False','True','False','False','http://maps.google.com/maps?f=q&hl=en&q={!Lead_Street}+{!Lead_City}+{!Lead_State}&om=1','','none');
INSERT INTO "WebLink" VALUES(15,'newWindow','url','','L','600','Google News','UTF-8','GoogleNews','Lead','False','False','True','False','False','True','False','False','http://www.google.com/news?&q={!Lead_Company}&btnG=Search+News','','none');
INSERT INTO "WebLink" VALUES(16,'newWindow','url','','L','600','Google Search','UTF-8','GoogleSearch','Lead','False','False','True','False','False','True','False','False','http://www.google.com/search?q={!Lead_Company}','','none');
INSERT INTO "WebLink" VALUES(17,'newWindow','url','','L','600','Hoovers Profile','UTF-8','HooversProfile','Lead','False','False','True','True','True','True','True','True','http://search.hoovers.com/cgi-bin/hol_search?which=company&query_string={!Lead_Company}','','none');
INSERT INTO "WebLink" VALUES(18,'newWindow','url','','L','600','Send Gmail','UTF-8','SendGmail','Lead','False','False','True','False','False','True','False','False','https://mail.google.com/mail?view=cm&tf=0&to={!Lead_Email}<{!Lead_LastName}, {!Lead_FirstName}>&tf=1','','none');
INSERT INTO "WebLink" VALUES(19,'newWindow','url','','L','600','Yahoo Maps','UTF-8','YahooMaps','Lead','False','False','True','True','True','True','True','True','http://maps.yahoo.com/py/maps.py?cn={!Lead_Country}&csz={!Lead_City}+{!Lead_State}+{!Lead_PostalCode}+&addr={!Lead_Address}','','none');
CREATE TABLE "WorkBadgeDefinition" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsCompanyWide" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ImageUrl" VARCHAR(255), 
	"LimitNumber" VARCHAR(255), 
	"IsLimitPerUser" VARCHAR(255), 
	"LimitStartDate" VARCHAR(255), 
	PRIMARY KEY (id)
);
COMMIT;
