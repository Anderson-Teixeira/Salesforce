@isTest
public class OppTeste {
    @isTest public static void teste1(){
        Opportunity opp = new opportunity();
        opp.Name = 'Teste1';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = null;
        insert opp;
    }
    
    
    @isTest public static void teste2(){
        Opportunity opp = new opportunity();
        opp.Name = 'Teste2';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = -30;
        insert opp;
    }
    
    @isTest public static void teste3(){
        Opportunity opp = new opportunity();
        opp.Name = 'Teste3';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Negócio Fechado';
        insert opp;
        
    }
    
    @isTest public static void teste4(){
        Opportunity opp = new opportunity();
        opp.Name = 'Teste4';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Perdido';
        insert opp;
        
    }
    
    
    
    @isTest public static void teste5(){
        Opportunity opp = new opportunity();
        opp.Name = 'Teste5';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 200;
        insert opp;
        opp.Stagename = 'Perdido';
        update opp;
        
        
    }
    
    @isTest public static void teste6(){
        Opportunity opp = new opportunity();
        opp.Name = 'Teste6';
        opp.CloseDate = date.valueOf('2022-05-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 200;
        insert opp;
        opp.Stagename = 'Negócio Fechado';
        update opp;
        
        
    }
    
    
    
    @isTest public static void teste7(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste7';
        opp.CloseDate = date.valueOf('2022-11-04');
        opp.Stagename = 'Nova Oportunidade';
        opp.Detalhamento_Motivo_Outros__c = '';
        opp.Amount = 200000;
        insert opp;
        opp.Stagename = 'Proposta de Valor';
        update opp;
        opp.Stagename = 'Perdido';
        opp.Motivo__c = 'Outros';
        update opp;
        
        
        
        
    }
    
    @isTest public static void teste8(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste8';
        opp.CloseDate = date.valueOf('2022-04-04');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 200000;
        insert opp;
        opp.Stagename = 'Proposta de Valor';
        update opp;
        opp.Stagename = 'Perdido';
        opp.Motivo__c = 'Outros';
        opp.Detalhamento_Motivo_Outros__c = 'teste';
        update opp;
        
        
        
        
        
        
    }
    
    
    @isTest public static void teste9(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste9';
        opp.CloseDate = date.valueOf('2022-11-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 2000;
        
        insert opp;
        
        
        
        opp.Stagename = 'Proposta de valor';
        update opp;
        
        
        opp.Stagename = 'Perdido';
        opp.Motivo__c = 'Outros';
        opp.Detalhamento_Motivo_Outros__c = 'teste 12345678910';
        update opp;
        
        
        
        
    }
    
    @isTest public static void teste10(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste10';
        opp.CloseDate = date.valueOf('2022-11-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 2000;
        
        insert opp;
        
        
        
        opp.Stagename = 'Proposta de valor';
        update opp;
        
        
        opp.Stagename = 'Perdido';
        opp.Motivo__c = 'Outros';
        opp.Detalhamento_Motivo_Outros__c = 'teste 12345678910';
        update opp;
        
        opp.Stagename = 'Nova Oportunidade';
        update opp;
        
        
        
        
        
        
    } 
    
    @isTest public static void teste11(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste11';
        opp.CloseDate = date.valueOf('2022-11-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 2000;
        
        insert opp;
        
        
        
        opp.Stagename = 'Proposta de valor';
        update opp;
        
        
        opp.Stagename = 'Negócio Fechado';
        update opp;
        
        opp.Stagename = 'Nova Oportunidade';
        update opp;
        
        
        
        
        
        
    } 
    
    @isTest public static void teste12(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste12';
        opp.CloseDate = date.valueOf('2022-11-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 2000;
        
        insert opp;
        
        
        
        opp.Stagename = 'Proposta de valor';
        update opp;
        
        
        
        opp.Stagename = 'Nova Oportunidade';
        update opp;
        
        
        
        
        
        
    }
    
    @isTest public static void teste13(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste13';
        opp.CloseDate = date.valueOf('2022-11-07');
        opp.Stagename = 'Nova Oportunidade';
        opp.Amount = 2000;
        
        insert opp;
        
        
        
        opp.Stagename = 'Proposta de valor';
        update opp;
        
        
        opp.Stagename = 'Negociação';
        update opp;
        
        opp.Stagename = 'Proposta de Valor';
        update opp;
        
        
        
        
        
        
    } 
    
    @isTest public static void teste14(){
        
        Opportunity opp = new opportunity();
        opp.Name = 'Teste14';
        opp.CloseDate = date.valueOf('2022-11-07');
        opp.Stagename = 'Nova Oportunidade';
        
        
        insert opp;
        
        opp.Stagename = 'Proposta de valor';
        update opp;
        
        
        opp.Stagename = 'Negociação';
        update opp;
        
        opp.Stagename = 'Proposta de Valor';
        update opp;
        
        
        
        
        
        
    } 
    
    
    
}