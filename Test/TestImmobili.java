package Test;

public class TestImmobili {
    
    private Cliente cliente;
    private Immobile immobile;

    public void ImmobileSetUp()
    {
        Date dataDiNascita = new Date(2000,1,1);
        cliente = new Cliente("Paperino","Paolino",dataDiNascita,"Viale Risorgimento 2, Bologna","123456789","PLNPRN00A01A944C","paperino@google.quack");
        immobile = new Immobile(cliente,"Viale Risorgimento 2, Bologna","F:3,P:76,S:0");
    }

    public void TestAggiuntaCliente()
    {
        assertEquals(immobile.getCliente,cliente);
        assertEquals(immobile.getIndirizzo,"Viale Risorgimento 2, Bologna");
        assertEquals(immobile.getDatiCatastali,"F:3,P:76,S:0");
    }


}
