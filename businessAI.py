import csv



with open('dataset.csv','r') as csvfile:
    ideas = csv.reader(csvfile,delimiter=',')
    #############################
    idea= []
    AnnualRevenue = []
    AnnualExpenses = []
    Benefits = []
    ApplicationOrUtility = []
    Design = []
    ProofOfConcept = []
    Legal = []
    Demand = []
    Competition = []
    Scope = []
    ShockValue = []
    Solution = []
    TimeToProfit = []
    TimeToRevenue = []
    Opportunity = []
    DomainKnowledge = []
    Workforce = []
    PhysicalCapital = []
    ################################
    for row in ideas:
        #print(', '.join(row))
        idea.append(row[0])
        AnnualRevenue.append(row[1])
        AnnualExpenses.append(row[2])
        Benefits.append(row[3])
        ApplicationOrUtility.append(row[4])
        Design.append(row[5])
        ProofOfConcept.append(row[6])
        Legal.append(row[7])
        Demand.append(row[8])
        Competition.append(row[9])
        Scope.append(row[10])
        ShockValue.append(row[11])
        Solution.append(row[12])
        TimeToProfit.append(row[13])
        TimeToRevenue.append(row[14])
        Opportunity.append(row[15])
        DomainKnowledge.append(row[16])
        Workforce.append(row[17])
        PhysicalCapital.append(row[18])

print(PhysicalCapital)



def overallInstict():
    for item in idea:
        print(item)
    return 1;