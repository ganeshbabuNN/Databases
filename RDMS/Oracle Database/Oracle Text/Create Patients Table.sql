--creating the table
drop table PatientsA;
create table PatientsA (
PatientNo number(10) PRIMARY KEY,
PatientName varchar2(50),
Age Number(2),
sex char(1),
ContactNo Varchar2(25),
History Varchar2(4000)
);

--Add few records
insert into patientsa values (1,'Richard', 54,'M', '392-233-239',
'Richard had obesity, joint pain. s/p hyst one year ago, subsequent weight gain of 25 lbs. 
and worsening joint pain. Pain worse when standing. PMH: fibroids, arthritis. 
A senior doctor named Dr. Amol is treating him. He had high temperature');

insert into patientsa values (2,'Mathew', 32,'F', '323-855-2323',
'Mathew has a 4-week history of severe headache.  
Initially, Mathew reported a disturbance in her vision, 
saying that she saw purplish-black colour spots in her vision. 
This was followed by the onset of a severe headache located at the right frontal and temporal regions, 
radiating to the right occipital area.  
The headache commenced as mild and dull pain then became severe and throbbing in nature.  
It was worsened by straining and coughing. 
Mathew likened the pain to being stabbed and squeezed by someone continuously and described the headache as the most horrible she had ever had. 
Mathews GP prescribed her Panadol.  The medication did not help and Mathew started to experience nausea, vomiting, and mild photohobia.  
She also experienced pain at the nape of her neck.');

insert into patientsa values (3,'sara', 64,'F', '424-135-213',
'Sara was referred to an ophthalmologist.  
Sara was very depressed An angiogram showed signs of venous blockage in the retinal veins with vision issues.  
The headake persisted, and 3 weeks after it commenced, Sara was becoming more worried about it. 
She was experiencing sleep disturbance, poor appetite and weight loss (she reports losing 5kg over three weeks). 
At the time, Sara resigned from work, thinking that her symptoms were stress-related and she probably needed a break. 
Sara also sought a second opinion from another GP.A CT scan revealed a tumour in the right frontal lobe, which was causing oedema and a mid-line shift.');

insert into patientsa values (4,'John', 42,'M', '533-231-134',
'John was immediately admitted to MMC for biopsy of the tumour. 
The report moves closer to present time. 
The present perfect tense is used to refer to events in the patients history that occurred prior to the interview but still bear current relevance.
Since receiving the diagnosis of neural tumour, John has felt depress and anxious about his health. 
He  has lost enthusiasm for her usual activities, such as going shopping and taking care of his son. 
Dr. Amul is treating him.');

insert into patientsa values (5,'Horo', 34,'M', '332-154-678',
'	Horo has a set of medical conditions that are summarised as HERNS (Hereditary Endotheliopathy, 
Retinopathy, Neuropathy and Stroke). 10 years ago, she experienced symptoms of proptosis, tachycardia, thirst and vomiting and was diagnosed with Graves disease.  She was treated with Neomercazole.  
The coexisting medical condition may be exerting an impact on Horos current anxious state. 
In addition, her apparent poor coping mechanisms, which she has described as part of her personality trait, might also be facilitating her anxious state.In 1996, 
Horo experienced a minor stroke, which caused temporary paralysis in her left arm.  
She was monitored in hospital for three weeks and recovered. 3 years ago, 
Horo was diagnosed as lupus carrier.  Since the diagnosis, 
Horo has been taking Warfarin and she expects to maintain Warfarin therapy for life.  
Her condition has exacerbated a series of endotheliopathies, 
predisposing Horo to retinal microvascular occlusion. 2 weeks prior to her current hospital admission, 
Horo was also diagnosed with hypercholesterolemia, a suspected genetic disorder. 
She is currently taking Lipitol to manage this.');

insert into patientsa values (6,'Lynda', 76,'F', '653-876-245',
'On general inspection, Lynda appeared to be tired.She showed a prominent sign of proptosis.  
She also had a few bruises on her left arm, due to frequent cannulation and blood test, and a scar from her recent biopsy on the right side of her forehead. On cardiovascular, respiratory and abdominal examinations, no significant signs were detected.  
Blood pressure was normal, 130/82.  Pulse rate was 80 beats per minute and respiratory rate was 14 beats per minute. On neurological examination, there were no signs of muscle wasting, abnormal movements or tremor.  
The upper limbs showed full range of active and passive movements.  On flexion and extension of the right arm, however, pain was detected.  The patient had normal tone, power, coordination and sensation in both arms.  
Reflexes, however, were increased in both arms. Examination of the lower limb showed normal tone, power, coordination and sensations.  
Plantar reflexes in both legs, however, were decreased.  There were no signs of abnormal gaits.  Trendelenburg test, Pull test, and Rombergs test all showed negative results.');

insert into patientsa values (7,'Michael', 29,'M', '753-453-896',
'General appearance and behavior: Michael is a 34 year-old Indian-Portuguese woman of average weight and height.  At the time of examination, she was well groomed and dressed.  She was not confined to bed.  On appearance, were no signs of tremor or abnormal movements; 
however, Michael showed signs of proptosis, consistent with Graves disease. Michael was cooperative throughout the interview.  
She maintained eye contact, except during the times when recounting the history of her fathers death and her previous marriage. 
Then, she appeared in depression. Speech: Michael articulated herself clearly.  She answered questions spontaneously, although at slow rate and speed.  She spoke softly throughout the conversation, particularly when mentioning past unhappiness. Affect and mood: Michaels affect was her range of mood reduced. 
She also appeared anxious and irritable. Thought: a. Stream Michaels thought stream was decreased.  It was also disturbed and Michaels speech slowed down and content reduced significantly when mentioning past unhappiness. b. Form: Michael did not exhibit any formal thought disorders.  
She was able to answer questions spontaneously and directly.
She did not use any new or created words. Michael did experience thought block when exploring sensitivities in her past.  No negative thought disorder was detected. c. Content: Michael was anxious about her health.  
She was obsessed with knowing her biopsy result and was constantly asking the doctors and nurses for her result.  
Thoughts that the tumour could be cancer were causing Michael to lack motivation and feel restless.  
Michael was also feeling guilty for not being able to care for her son and fiance since having the headake. 
Other than feeling obsession and guilt, Michael has no other positive symptoms, such as delusions, phobias or compulsions.  
Suicidal ideation was not detected. Perception: Michael exhibits normal perception.  
Symptoms, such as illusions, misinterpretations, depersonalisation, passivity phenomena, were not elicited. Cognition: 
Michael was alert and orientated to time and place');

--check the data
select * from PatientsA;
create table patientsB as select * from patientsA;
select * from patientsB;