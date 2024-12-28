trigger AccountTrigger on Account (after insert) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            AccountTriggerHandler.CreateContactwithNameOfAccount(trigger.new);
        }
    }

}