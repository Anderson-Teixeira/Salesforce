@isTest
public class OppTeste {
    
    @testSetup static void setup() { 
        // Crie contas de teste comuns
        // Create common test accounts
        
        List<Opportunity> testOpport = new List<Opportunity>();
        for(Integer i=0;i<2;i++) {
            testOpport.add(new Opportunity(Name = 'TestOpp'+i, Stagename = 'Nova Oportunidade', CloseDate = date.valueOf('2022-05-07'), Amount = 2000));
        }
        insert testOpport;        
    }
    
    /* Após usar a anotação @testSetup e criar uma conta com os campos obrigatorios eu posso utiliza-lá para apenas atualizar os campos que ativam os gatilhos que desejo acionar
tornando o codigo mais dinamico e mais pratico para realizar manutenções*/
    
    /* After using the @testSetup annotation and creating an account with the mandatory fields I can use it to just update the fields that activate the triggers I want to trigger
making the code more dynamic and more practical to perform maintenance */
    
    @isTest public static void teste1(){
        
        Opportunity opp1 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp1.Amount = null;
        update opp1;
    }
    
    @isTest public static void teste2(){
        // O valor da oportunidade não pode ser Negativo
        // Opportunity value cannot be Negative
        Opportunity opp2 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp2.Amount = -30;
        update opp2;
    }
    
    // teste 3 e 4 no final do codigo, referente ao erro na criação de uma oportunidade como negocio perdido e negocio fechado
    // test 3 and 4 at the end of the code, referring to the error in creating an opportunity such as lost trade and closed trade
    
    @isTest public static void teste5(){
        // Selecione o motivo no campo: Motivo da perda
        // Select the reason in the field: Reason for loss
        Opportunity opp5 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp5.Stagename = 'Perdido';
        update opp5;
    }
    
    // Teste6 - Excluido - o teste estava redundante
    // Test6 - Deleted - test was redundant
    
      @isTest public static void teste7(){
        // Por favor, detalhe o motivo da perda no campo solicitado: [Detalhamento_Motivo_Outros__c]
        // Please detail the reason for the loss in the requested field: [Detalhamento_Motivo_Outros__c]
        Opportunity opp7 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp7.Stagename = 'Proposta de Valor';
        update opp7;
        opp7.Stagename = 'Perdido';
        opp7.Motivo__c = 'Outros';
        update opp7;      
    }
    
    @isTest public static void teste8(){
        // Por favor, preencha com pelo menos 10 caracteres: [Detalhamento_Motivo_Outros__c]
        // Please fill with at least 10 characters: [Detalhamento_Motivo_Outros__c]
        Opportunity opp8 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp8.Stagename = 'Proposta de Valor';
        update opp8;
        opp8.Stagename = 'Perdido';
        opp8.Motivo__c = 'Outros';
        opp8.Detalhamento_Motivo_Outros__c = 'teste';
        update opp8; 
    }
   
    @isTest public static void teste9(){
        Opportunity opp9 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp9.Stagename = 'Proposta de Valor';
        update opp9;
        opp9.Stagename = 'Perdido';
        opp9.Motivo__c = 'Outros';
        opp9.Detalhamento_Motivo_Outros__c = 'teste 12345678910';
        update opp9;      
    }
    
    @isTest public static void teste10(){
        // Não é possivel mudar de fase após selecionar Como Perdido
        // Unable to change levels after selecting As Lost
        Opportunity opp10 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp10.Stagename = 'Proposta de Valor';
        update opp10;
        opp10.Stagename = 'Perdido';
        opp10.Motivo__c = 'Outros';
        opp10.Detalhamento_Motivo_Outros__c = 'teste 12345678910';
        update opp10;
        opp10.Stagename = 'Nova Oportunidade';
        update opp10;     
    } 
    
    @isTest public static void teste11(){
        // Após uma oportunidade receber proposta de valor ela não poderá voltar a fase de nova oportunidade
        // After an opportunity receives a value proposition, it cannot return to the new opportunity phase.
        Opportunity opp11 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp11.Stagename = 'Proposta de Valor';
        update opp11;
        opp11.Stagename = 'Negócio Fechado';
        update opp11;
        opp11.Stagename = 'Nova Oportunidade';
        update opp11;
    }
    
     // Teste12 - Excluido - o teste estava redundante
     // Test12 - Deleted - test was redundant
     
    @isTest public static void teste13(){
        // Uma proposta de valor já foi feita, se necessario faça uma nova negociação
        // A value proposition has already been made, if necessary make a new negotiation
        Opportunity opp13 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp13.Stagename = 'Proposta de Valor';
        update opp13;
        opp13.Stagename = 'Negociação';
        update opp13;
        opp13.Stagename = 'Proposta de Valor';
        update opp13;      
    } 
    
    @isTest public static void teste14(){
        // Para Seguir em Negociação deve adicionar um produto a oportunidade
        // To Continue Trading you must add a product to the opportunity
        Opportunity opp14 = [SELECT Id FROM Opportunity WHERE Name='TestOpp0' LIMIT 1];
        opp14.Amount = 0;
        opp14.Stagename = 'Proposta de Valor';
        update opp14;
    }
    

    
    @isTest public static void teste3(){
        // Não é possivel Criar uma Oportunidade Como Negocio Fechado
        // Unable to Create Opportunity as 'Negócio Fechado'
        Opportunity opp = new opportunity();
        opp.Name = 'Teste3';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Negócio Fechado';
        insert opp;    
    }
    
    @isTest public static void teste4(){
        // Não é possivel Criar uma Oportunidade Como Perdido
        // Unable to Create Opportunity As 'Perdido'
        Opportunity opp = new opportunity();
        opp.Name = 'Teste4';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Perdido';
        insert opp;     
    }
    
}