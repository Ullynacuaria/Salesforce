trigger WarrantySummary on SOBJECT (before insert) {

    for (Case myCase : Trigger.new) {
        Date purchaseDate       = myCase.Product_Purchase_Date__c;
        Datetime createdDate    = myCase.CreatedDate;
        Integer warrantyDays    = myCase.Product_Total_Warranty_Days__c.intValue;
        Decimal warrantyPercent = (Date.Today - purchaseDate) / warrantyDays;
        Boolean hasExtendedWarranty = myCsae.Has_Extended_warranty__c;


    }

    /*Product purchased on <<Purchase Date>> and case created on <<Case Created Date>>.
    warranty is for <<Warranty Total Days>> days and is <<Warranty Percentage>> % Trough its warranty periodo.
    Extended warranty: <<Has Extended Warranty */

}