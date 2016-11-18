Meta:
@storyTitle OR-25203 API 'Add/Change In-store Timed Special' (EVU6PVR) pop-up
@runOrderGroup readOnly

Narrative:
As a dealer
I wan to be able to see all the relevant information displayed on the 'Add/Change In-store Timed Special' (EVU6PVR) pop-up in 3 different modes
So that I can either view, change or add info on in-store TS

Lifecycle:
Before:
Given Dealer sets In-Store deal equal to 950 using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)

Scenario: TC_OR_25203_1 API 'Add/Change In-store Timed Special' (EVU6PVR) pop-up ADD MODE
Meta:
@relatedStory OR-25203
@tag teams:Roma, sprints:Sprint 70
@issue OR-26060

When Dealer enters <productNumber> to 'product' field on 'ACITS' screen
And Dealer presses ENTER key
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'ACITS' screen
And Dealer sees no value in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees no value in 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct '0:00:00' value in 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct '0:00:00' value in 'endTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endTime' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startTime' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startDate' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endDate' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoRetail' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoCost' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen

Examples:
examples/OR_24911_1.table

Scenario: TC_OR_25203_2 API 'Add/Change In-store Timed Special' (EVU6PVR) pop-up CHG MODE
Meta:
@relatedStory OR-25203
@tag teams:Roma, sprints:Sprint 70
@issue OR-26291
When Dealer enters <productNumber> to 'product' field on 'ACITS' screen
And Dealer presses ENTER key
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'ACITS' screen
And Dealer sees correct '<startDate>' value in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct '<endDate>' value in 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in 'promoRetail' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endTime' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startTime' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startDate' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endDate' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoRetail' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoCost' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen

Examples:
examples/OR_25203_1.table

Scenario: TC_OR_25203_3 API 'Add/Change In-store Timed Special' (EVU6PVR) pop-up DISPLAY mode - activation status code
Meta:
@relatedStory OR-25203
@tag teams:Roma, sprints:Sprint 70
@issue OR-26292
When Dealer enters <productNumber> to 'product' field on 'ACITS' screen
And Dealer presses ENTER key
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'ACITS' screen
And Dealer sees correct '<startDate>' value in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct '<endDate>' value in 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in the top-left corner on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endTime' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startTime' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startDate' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endDate' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoRetail' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoCost' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct 'Action is not allowed for status = 'S' or ' '.' value in 'popupMessage' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees 'popupMessage' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25203_2.table

Scenario: TC_OR_25203_4 API 'Add/Change In-store Timed Special' (EVU6PVR) pop-up DISPLAY mode - DeActivation status code
Meta:
@relatedStory OR-25203
@tag teams:Roma, sprints:Sprint 70
@issue OR-26294
When Dealer enters <productNumber> to 'product' field on 'ACITS' screen
And Dealer presses ENTER key
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'ACITS' screen
And Dealer sees correct '<startDate>' value in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct '<endDate>' value in 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees cursor in the top-left corner on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endTime' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startTime' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startDate' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endDate' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoRetail' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoCost' field is not editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct 'Action is not allowed for status = 'S' or ' '.' value in 'popupMessage' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees 'popupMessage' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen highlighted in green color

Examples:
examples/OR_25203_3.table