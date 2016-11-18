Meta:
@storyTitle OR-25245 VAL_Add/Change In-store Timed Special pop-up
@runOrderGroup readWriteSequenceGeneral
@dependant changeTimeSpec

Narrative:
As a dealer
I want to have my input validated on the 'Add/Change In-store Timed Special' (EVU6PVR) pop-up when i press 'Enter' key
So that the system doesn't allow me to make an incorrect update

Scenario: TC_OR_25245_1 Dealer input ZERRO into 'Promo retail' field on  'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25977
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters 0 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen and confirms input
Then 'Value entered must be greater than zero.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25245_1.table

Scenario: TC_OR_25245_2 Dealer input ZERRO into 'Promo cost' field on  'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25978
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 0 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen and confirms input
Then 'Value entered must be greater than zero.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25245_1.table

Scenario: TC_OR_25245_3 Dealer input empty value in 'Start Date' on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25979
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer clears 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then 'Invalid Date' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen

Examples:
examples/OR_25245_1.table

Scenario: TC_OR_25245_4 Dealer input empty value in 'End Date' on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25980
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer clears 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key

Examples:
examples/OR_25245_1.table

Scenario: TC_OR_25245_5 Dealer input empty value in 'Start Time' on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25981
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters <startDate> to 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer clears 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then 'Value required.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color
And Dealer sees correct '0:00:00' value in 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen

Examples:
examples/OR_25245_1.table

Scenario: TC_OR_25245_6 Dealer input empty value in End Time on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25982
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer clears 'endTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then Dealer sees correct '23:59:59' value in 'endTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer is redirected to the 'Add/Change In-store Timed Special' screen

Examples:
examples/OR_25245_1.table

Scenario: TC_OR_25245_7 Dealer input 'Start date' is < current sys date on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25983
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters <currentDateMinus> to 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then 'Timed special start date cannot be before the current date.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25245_2.table

Scenario: TC_OR_25245_12 Dealer input 'Start date' > 'End date' on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25990
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters <startDate> to 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters <endDate> to 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then 'Corporate promo end date must not be prior to corporate promo start date.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25245_3.table

Scenario: TC_OR_25245_13 Dealer input 'Start date' = 'End date' and 'Start Time' >= 'End Time' on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25993
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters <startDate> to 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters <startDate> to 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 222222 to 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 222222 to 'endTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then 'Timed special end time must be later than the start time.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color
And Dealer sees 'endTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25245_3.table

Scenario: TC_OR_25245_18 Dealer input new Promo Cost value for offering with status D on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-25999
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer enters <offeringNumber> to 'product' field on 'Add/Change In-store Timed Special' screen and confirms input
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters 2 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 1 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then 'To set up a new timed special for this item, enter a new start date/time.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25245_4.table

Scenario: TC_OR_25245_21 Dealer input valid data in all fields, without product specification on 'Add/Change In-store Timed Special' screen
Meta:
@relatedStory OR-25245
@tag teams:Roma, sprints:Sprint 70
@issue OR-26005
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
And Dealer presses Enter key
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
When Dealer enters 20 to 'promoCost' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 30 to 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 170121 to 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 170122 to 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 120000 to 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer enters 160000 to 'endTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer presses Enter key
Then 'This product is not carried by your store.' CPF message is present on 'Add/Change In-store Timed Special' popup displayed on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen

Examples:
examples/OR_25245_1.table