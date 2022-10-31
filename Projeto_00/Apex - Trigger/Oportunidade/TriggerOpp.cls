trigger TriggerOpp on Opportunity (Before insert, Before update) {
    
    if(trigger.isBefore && trigger.isInsert || trigger.isBefore && trigger.isUpdate){ 
        for(Opportunity opp: Trigger.new){
            if((opp.Motivo__c == null || opp.Motivo__c == '' ) && opp.stagename =='Perdido'){
                //(opção para adicionar a mensagem de erro no campo)
                //opp.Motivo__c.addError('Selecione o motivo da perda');
                opp.addError('Selecione o motivo no campo: Motivo da perda');
                
            }
        }
        
    }
    
    
    
    if(trigger.isBefore && trigger.isInsert || trigger.isBefore && trigger.isUpdate){ 
        for(Opportunity opp: Trigger.new){
            if((opp.Motivo__c == 'Outros' && (opp.Detalhamento_Motivo_Outros__c == null || opp.Detalhamento_Motivo_Outros__c == '') ) && opp.stagename =='Perdido'){
                
                opp.Detalhamento_Motivo_Outros__c.addError('Por favor, detalhe o motivo da perda no campo solicitado');
                
            }
        }
        
    }
    
    
    
    if(trigger.isBefore && trigger.isInsert){
        
        for( Opportunity opp1: trigger.new){
            if(opp1.Amount == null ){
                opp1.Amount = 0;
                
                
            }
        }
    }
    
   /* codigo que converte o nome da oportunidade para caracteres em maiusculo antes de salvar o registro 
       
       if(trigger.isBefore && trigger.isInsert){
        
        for( Opportunity opp2: trigger.new){
            if(opp2.Name != null  ){
                opp2.Name = opp2.name.toUpperCase();
                
                
            }
        }
    } 
    
    */   
    
    
    
    
    if(trigger.isBefore && trigger.isUpdate){  
        for(Opportunity Opp: trigger.new){
            
            if( trigger.oldMap.get(opp.id).Stagename =='Perdido' && opp.StageName != 'Perdido' )
            {
                opp.addError('Não é possivel mudar de fase após selecionar Como Perdido'); 
            } 
        }
    }
    
    
    
    if(trigger.isBefore && trigger.isUpdate){
        for(Opportunity Opp: trigger.new){
            
            if( trigger.oldMap.get(opp.id).Stagename =='Negócio Fechado' && opp.StageName != 'Negócio Fechado' && Opp.Amount <= 100000 )
            {
                opp.addError('Não é possivel mudar de fase após selecionar Como Negócio Fechado'); 
            } 
        } 
    }
    
 
    
    if(trigger.isBefore && trigger.isInsert){  
        for(Opportunity Opp: trigger.new){
            
            if( opp.StageName == 'Negócio Fechado' )
            {
                opp.addError('Não é possivel Criar uma Oportunidade Como Negocio Fechado'); 
            } 
        }
    }
    
        if(trigger.isBefore && trigger.isInsert){  
        for(Opportunity Opp: trigger.new){
            
            if( opp.StageName == 'Perdido' )
            {
                opp.addError('Não é possivel Criar uma Oportunidade Como Perdido'); 
            } 
        }
    }
    
    
    
    if(trigger.isBefore && trigger.isUpdate){ 
        
        
        for(Opportunity Opp: trigger.new){
            
            if( trigger.oldMap.get(opp.id).Stagename !='Nova Oportunidade' && opp.StageName == 'Nova Oportunidade' )
            {
                opp.addError('Após uma oportunidade receber proposta de valor ela não poderá voltar a fase de nova oportunidade' ); 
            } 
        }
    }
    
        if(trigger.isBefore && trigger.isUpdate){ 
        
        
        for(Opportunity Opp: trigger.new){
            
            if( trigger.oldMap.get(opp.id).Stagename =='Negociação' && opp.StageName == 'Proposta de Valor' )
            {
                opp.addError('Uma proposta de valor já foi feita, se necessario faça uma nova negociação');
            }  
        }
    }
    
    
    
    if(trigger.isBefore && trigger.isUpdate){ 
        
        
        for(Opportunity Opp: trigger.new){
            
            if( opp.StageName != 'Nova Oportunidade' && opp.Amount <= 0  )
            {
                opp.addError('Para Seguir em Negociação deve adicionar um produto a oportunidade ' ); 
            } 
        }
    }
    
    if(trigger.isBefore && trigger.isInsert || trigger.isBefore && trigger.isUpdate){
        for(Opportunity Opp: trigger.new){
            if(opp.Amount < 0  )
            {
                opp.addError('O valor da oportunidade não pode ser Negativo ' ); 
            } 
        }
    }
    
        if(trigger.isBefore && trigger.isUpdate){  
        for(Opportunity Opp: trigger.new){
            
            if( trigger.oldMap.get(opp.id).Stagename =='Perdido' && opp.StageName != 'Perdido' )
            {
                opp.addError('Não é possivel mudar de fase após selecionar Como Perdido'); 
            } 
        }
    }
    
}