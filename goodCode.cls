public class goodCase {

    public void processAllCases(List<Case> caseList) {
      
            processCase(c);                     // hop 1
      
    }

    void processCase(Case c) {
        fetchOwnerDetails(c.OwnerId);           // hop 2
    }

    List<User> fetchOwnerDetails(Id ownerId) {
        return [
            SELECT Id, Name FROM User
            WHERE Id = :ownerId                // SINK (SOQL)
        ];
    }
}
