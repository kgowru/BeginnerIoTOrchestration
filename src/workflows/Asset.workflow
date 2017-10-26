<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Fridge_Temperature_Email_Alert</fullName>
        <description>Fridge Temperature Email Alert</description>
        <protected>false</protected>
        <recipients>
            <field>ContactId</field>
            <type>contactLookup</type>
        </recipients>
        <senderAddress>henry.liu@salesforce.com</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>Public_Folder/Fridge_Temperature_Warning</template>
    </alerts>
</Workflow>
