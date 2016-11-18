Meta:
@storyTitle OR-25202 API 'Add/Change In-store Timed Special' (EVU6PVR) pop-up
@runOrderGroup readOnly

Narrative:
As a dealer
I wan to be able to see all the relevant information displayed on the 'Add/Change In-store Timed Special' (EVU6PVR) pop-up in 3 different modes
So that I can either view, change or add info on in-store TS

Scenario: TC_OR_25202_1 API 'Add/Change In-store Timed Special' (EVU6PVR) pop-up
Meta:
@relatedStory OR-25202
@tag teams:Roma, sprints:Sprint 70
@issue OR-26060
@manual
Given Dealer sets In-Store deal equal to <dealNumber> using REST on 'CPfTS' screen
And Dealer opens 'Add/Change In-store Timed Special' page from Ordering Menu (04-22)
When Dealer enters <productNumber> to 'product' field on 'ACITS' screen
When Dealer presses ENTER key
Then Dealer sees 'Add/Change In-store Timed Special' popup displayed on 'ACITS' screen
And Dealer sees no value in 'startDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees no value in 'endDate' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct '0:00:00' value in 'startTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees correct '0:00:00' value in 'endTime' field on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endTime' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startDate' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'endDate' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'startTime' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoRetail' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen
And Dealer sees that 'promoCost' field is editable on the 'Add/Change In-store Timed Special' pop-up on 'Add/Change In-store Timed Special' screen

Examples:
examples/OR_24911_1.table